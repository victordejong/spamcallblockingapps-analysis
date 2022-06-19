package com.facebook.internal;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.common.C0948R;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/WebDialog.class */
public class WebDialog extends Dialog {
    private static final int API_EC_DIALOG_CANCEL = 4201;
    private static final int BACKGROUND_GRAY = -872415232;
    private static final int DEFAULT_THEME = C0948R.style.com_facebook_activity_theme;
    static final boolean DISABLE_SSL_CHECK_FOR_TESTING = false;
    private static final String DISPLAY_TOUCH = "touch";
    private static final String LOG_TAG = "FacebookSDK.WebDialog";
    private static final int MAX_PADDING_SCREEN_HEIGHT = 1280;
    private static final int MAX_PADDING_SCREEN_WIDTH = 800;
    private static final double MIN_SCALE_FACTOR = 0.5d;
    private static final int NO_PADDING_SCREEN_HEIGHT = 800;
    private static final int NO_PADDING_SCREEN_WIDTH = 480;
    private static InitCallback initCallback;
    private static volatile int webDialogTheme;
    private FrameLayout contentFrameLayout;
    private ImageView crossImageView;
    private String expectedRedirectUrl;
    private boolean isDetached;
    private boolean isPageFinished;
    private boolean listenerCalled;
    private OnCompleteListener onCompleteListener;
    private ProgressDialog spinner;
    private UploadStagingResourcesTask uploadTask;
    private String url;
    private WebView webView;
    private WindowManager.LayoutParams windowParams;

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/WebDialog$Builder.class */
    public static class Builder {
        private AccessToken accessToken;
        private String action;
        private String applicationId;
        private Context context;
        private OnCompleteListener listener;
        private Bundle parameters;
        private int theme;

        public Builder(Context context, String str, Bundle bundle) {
            this.accessToken = AccessToken.getCurrentAccessToken();
            if (!AccessToken.isCurrentAccessTokenActive()) {
                String metadataApplicationId = Utility.getMetadataApplicationId(context);
                if (metadataApplicationId == null) {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
                this.applicationId = metadataApplicationId;
            }
            finishInit(context, str, bundle);
        }

        public Builder(Context context, String str, String str2, Bundle bundle) {
            String metadataApplicationId = str == null ? Utility.getMetadataApplicationId(context) : str;
            Validate.notNullOrEmpty(metadataApplicationId, "applicationId");
            this.applicationId = metadataApplicationId;
            finishInit(context, str2, bundle);
        }

        private void finishInit(Context context, String str, Bundle bundle) {
            this.context = context;
            this.action = str;
            if (bundle != null) {
                this.parameters = bundle;
            } else {
                this.parameters = new Bundle();
            }
        }

        public WebDialog build() {
            AccessToken accessToken = this.accessToken;
            if (accessToken != null) {
                this.parameters.putString("app_id", accessToken.getApplicationId());
                this.parameters.putString("access_token", this.accessToken.getToken());
            } else {
                this.parameters.putString("app_id", this.applicationId);
            }
            return WebDialog.newInstance(this.context, this.action, this.parameters, this.theme, this.listener);
        }

        public String getApplicationId() {
            return this.applicationId;
        }

        public Context getContext() {
            return this.context;
        }

        public OnCompleteListener getListener() {
            return this.listener;
        }

        public Bundle getParameters() {
            return this.parameters;
        }

        public int getTheme() {
            return this.theme;
        }

        public Builder setOnCompleteListener(OnCompleteListener onCompleteListener) {
            this.listener = onCompleteListener;
            return this;
        }

        public Builder setTheme(int i) {
            this.theme = i;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/WebDialog$DialogWebViewClient.class */
    public class DialogWebViewClient extends WebViewClient {
        private DialogWebViewClient() {
            WebDialog.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!WebDialog.this.isDetached) {
                WebDialog.this.spinner.dismiss();
            }
            WebDialog.this.contentFrameLayout.setBackgroundColor(0);
            WebDialog.this.webView.setVisibility(0);
            WebDialog.this.crossImageView.setVisibility(0);
            WebDialog.this.isPageFinished = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            Utility.logd(WebDialog.LOG_TAG, "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
            if (!WebDialog.this.isDetached) {
                WebDialog.this.spinner.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebDialog.this.sendErrorToListener(new FacebookDialogException(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            WebDialog.this.sendErrorToListener(new FacebookDialogException(null, -11, null));
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00db  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean shouldOverrideUrlLoading(android.webkit.WebView r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 319
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.WebDialog.DialogWebViewClient.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/WebDialog$InitCallback.class */
    public interface InitCallback {
        void onInit(WebView webView);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/WebDialog$OnCompleteListener.class */
    public interface OnCompleteListener {
        void onComplete(Bundle bundle, FacebookException facebookException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/WebDialog$UploadStagingResourcesTask.class */
    public class UploadStagingResourcesTask extends AsyncTask<Void, Void, String[]> {
        private String action;
        private Exception[] exceptions;
        private Bundle parameters;

        UploadStagingResourcesTask(String str, Bundle bundle) {
            WebDialog.this = r4;
            this.action = str;
            this.parameters = bundle;
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ String[] doInBackground(Void[] voidArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                return doInBackground2(voidArr);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return null;
            }
        }

        /* renamed from: doInBackground */
        protected String[] doInBackground2(Void... voidArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                String[] stringArray = this.parameters.getStringArray("media");
                final String[] strArr = new String[stringArray.length];
                this.exceptions = new Exception[stringArray.length];
                final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                for (int i = 0; i < stringArray.length; i++) {
                    try {
                        if (isCancelled()) {
                            Iterator it = concurrentLinkedQueue.iterator();
                            while (it.hasNext()) {
                                ((AsyncTask) it.next()).cancel(true);
                            }
                            return null;
                        }
                        Uri parse = Uri.parse(stringArray[i]);
                        if (Utility.isWebUri(parse)) {
                            strArr[i] = parse.toString();
                            countDownLatch.countDown();
                        } else {
                            final int i2 = i;
                            concurrentLinkedQueue.add(ShareInternalUtility.newUploadStagingResourceWithImageRequest(currentAccessToken, parse, new GraphRequest.Callback() { // from class: com.facebook.internal.WebDialog.UploadStagingResourcesTask.1
                                @Override // com.facebook.GraphRequest.Callback
                                public void onCompleted(GraphResponse graphResponse) {
                                    FacebookRequestError error;
                                    String str;
                                    try {
                                        error = graphResponse.getError();
                                        str = "Error staging photo.";
                                    } catch (Exception e) {
                                        UploadStagingResourcesTask.this.exceptions[i2] = e;
                                    }
                                    if (error != null) {
                                        String errorMessage = error.getErrorMessage();
                                        if (errorMessage != null) {
                                            str = errorMessage;
                                        }
                                        throw new FacebookGraphResponseException(graphResponse, str);
                                    }
                                    JSONObject jSONObject = graphResponse.getJSONObject();
                                    if (jSONObject == null) {
                                        throw new FacebookException("Error staging photo.");
                                    }
                                    String optString = jSONObject.optString(ShareConstants.MEDIA_URI);
                                    if (optString == null) {
                                        throw new FacebookException("Error staging photo.");
                                    }
                                    strArr[i2] = optString;
                                    countDownLatch.countDown();
                                }
                            }).executeAsync());
                        }
                    } catch (Exception e) {
                        Iterator it2 = concurrentLinkedQueue.iterator();
                        while (it2.hasNext()) {
                            ((AsyncTask) it2.next()).cancel(true);
                        }
                        return null;
                    }
                }
                countDownLatch.await();
                return strArr;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ void onPostExecute(String[] strArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                onPostExecute2(strArr);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }

        /* renamed from: onPostExecute */
        protected void onPostExecute2(String[] strArr) {
            Exception[] excArr;
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                WebDialog.this.spinner.dismiss();
                for (Exception exc : this.exceptions) {
                    if (exc != null) {
                        WebDialog.this.sendErrorToListener(exc);
                        return;
                    }
                }
                if (strArr == null) {
                    WebDialog.this.sendErrorToListener(new FacebookException("Failed to stage photos for web dialog"));
                    return;
                }
                List asList = Arrays.asList(strArr);
                if (asList.contains(null)) {
                    WebDialog.this.sendErrorToListener(new FacebookException("Failed to stage photos for web dialog"));
                    return;
                }
                Utility.putJSONValueInBundle(this.parameters, "media", new JSONArray((Collection) asList));
                WebDialog.this.url = Utility.buildUri(ServerProtocol.getDialogAuthority(), FacebookSdk.getGraphApiVersion() + "/" + ServerProtocol.DIALOG_PATH + this.action, this.parameters).toString();
                WebDialog.this.setUpWebView((WebDialog.this.crossImageView.getDrawable().getIntrinsicWidth() / 2) + 1);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    public WebDialog(Context context, String str) {
        this(context, str, getWebDialogTheme());
    }

    private WebDialog(Context context, String str, int i) {
        super(context, i == 0 ? getWebDialogTheme() : i);
        this.expectedRedirectUrl = ServerProtocol.DIALOG_REDIRECT_URI;
        this.listenerCalled = false;
        this.isDetached = false;
        this.isPageFinished = false;
        this.url = str;
    }

    private WebDialog(Context context, String str, Bundle bundle, int i, OnCompleteListener onCompleteListener) {
        super(context, i == 0 ? getWebDialogTheme() : i);
        this.expectedRedirectUrl = ServerProtocol.DIALOG_REDIRECT_URI;
        this.listenerCalled = false;
        this.isDetached = false;
        this.isPageFinished = false;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        String str2 = Utility.isChromeOS(context) ? ServerProtocol.DIALOG_REDIRECT_CHROME_OS_URI : ServerProtocol.DIALOG_REDIRECT_URI;
        this.expectedRedirectUrl = str2;
        bundle2.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, str2);
        bundle2.putString(ServerProtocol.DIALOG_PARAM_DISPLAY, "touch");
        bundle2.putString("client_id", FacebookSdk.getApplicationId());
        bundle2.putString(ServerProtocol.DIALOG_PARAM_SDK_VERSION, String.format(Locale.ROOT, "android-%s", FacebookSdk.getSdkVersion()));
        this.onCompleteListener = onCompleteListener;
        if (str.equals("share") && bundle2.containsKey("media")) {
            this.uploadTask = new UploadStagingResourcesTask(str, bundle2);
            return;
        }
        String dialogAuthority = ServerProtocol.getDialogAuthority();
        this.url = Utility.buildUri(dialogAuthority, FacebookSdk.getGraphApiVersion() + "/" + ServerProtocol.DIALOG_PATH + str, bundle2).toString();
    }

    private void createCrossImage() {
        ImageView imageView = new ImageView(getContext());
        this.crossImageView = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.WebDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    WebDialog.this.cancel();
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
        this.crossImageView.setImageDrawable(getContext().getResources().getDrawable(C0948R.C0950drawable.com_facebook_close));
        this.crossImageView.setVisibility(4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r1v2 */
    private int getScaledSize(int i, float f, int i2, int i3) {
        int i4 = (int) (i / f);
        ?? r13 = true;
        if (i4 <= i2) {
            r13 = true;
        } else if (i4 < i3) {
            r13 = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) (i * (r13 == true ? 1.0d : 0.0d));
    }

    public static int getWebDialogTheme() {
        Validate.sdkInitialized();
        return webDialogTheme;
    }

    public static void initDefaultTheme(Context context) {
        if (context == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || webDialogTheme != 0) {
                return;
            }
            setWebDialogTheme(applicationInfo.metaData.getInt(FacebookSdk.WEB_DIALOG_THEME));
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    public static WebDialog newInstance(Context context, String str, Bundle bundle, int i, OnCompleteListener onCompleteListener) {
        initDefaultTheme(context);
        return new WebDialog(context, str, bundle, i, onCompleteListener);
    }

    public static void setInitCallback(InitCallback initCallback2) {
        initCallback = initCallback2;
    }

    public void setUpWebView(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        WebView webView = new WebView(getContext()) { // from class: com.facebook.internal.WebDialog.3
            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean z) {
                try {
                    super.onWindowFocusChanged(z);
                } catch (NullPointerException e) {
                }
            }
        };
        this.webView = webView;
        InitCallback initCallback2 = initCallback;
        if (initCallback2 != null) {
            initCallback2.onInit(webView);
        }
        this.webView.setVerticalScrollBarEnabled(false);
        this.webView.setHorizontalScrollBarEnabled(false);
        this.webView.setWebViewClient(new DialogWebViewClient());
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.loadUrl(this.url);
        this.webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.webView.setVisibility(4);
        this.webView.getSettings().setSavePassword(false);
        this.webView.getSettings().setSaveFormData(false);
        this.webView.setFocusable(true);
        this.webView.setFocusableInTouchMode(true);
        this.webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.WebDialog.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        });
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.webView);
        linearLayout.setBackgroundColor(BACKGROUND_GRAY);
        this.contentFrameLayout.addView(linearLayout);
    }

    public static void setWebDialogTheme(int i) {
        if (i == 0) {
            i = DEFAULT_THEME;
        }
        webDialogTheme = i;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.onCompleteListener == null || this.listenerCalled) {
            return;
        }
        sendErrorToListener(new FacebookOperationCanceledException());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.webView;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.isDetached && (progressDialog = this.spinner) != null && progressDialog.isShowing()) {
            this.spinner.dismiss();
        }
        super.dismiss();
    }

    public OnCompleteListener getOnCompleteListener() {
        return this.onCompleteListener;
    }

    public WebView getWebView() {
        return this.webView;
    }

    public boolean isListenerCalled() {
        return this.listenerCalled;
    }

    public boolean isPageFinished() {
        return this.isPageFinished;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        WindowManager.LayoutParams layoutParams;
        this.isDetached = false;
        if (Utility.mustFixWindowParamsForAutofill(getContext()) && (layoutParams = this.windowParams) != null && layoutParams.token == null) {
            this.windowParams.token = getOwnerActivity().getWindow().getAttributes().token;
            Utility.logd(LOG_TAG, "Set token on onAttachedToWindow(): " + this.windowParams.token);
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.spinner = progressDialog;
        progressDialog.requestWindowFeature(1);
        this.spinner.setMessage(getContext().getString(C0948R.string.com_facebook_loading));
        this.spinner.setCanceledOnTouchOutside(false);
        this.spinner.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.WebDialog.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                WebDialog.this.cancel();
            }
        });
        requestWindowFeature(1);
        this.contentFrameLayout = new FrameLayout(getContext());
        resize();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        createCrossImage();
        if (this.url != null) {
            setUpWebView((this.crossImageView.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        this.contentFrameLayout.addView(this.crossImageView, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.contentFrameLayout);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.isDetached = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            WebView webView = this.webView;
            if (webView != null && webView.canGoBack()) {
                this.webView.goBack();
                return true;
            }
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        UploadStagingResourcesTask uploadStagingResourcesTask = this.uploadTask;
        if (uploadStagingResourcesTask == null || uploadStagingResourcesTask.getStatus() != AsyncTask.Status.PENDING) {
            resize();
            return;
        }
        this.uploadTask.execute(new Void[0]);
        this.spinner.show();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        UploadStagingResourcesTask uploadStagingResourcesTask = this.uploadTask;
        if (uploadStagingResourcesTask != null) {
            uploadStagingResourcesTask.cancel(true);
            this.spinner.dismiss();
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        if (layoutParams.token == null) {
            this.windowParams = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }

    protected Bundle parseResponseUri(String str) {
        Uri parse = Uri.parse(str);
        Bundle parseUrlQueryString = Utility.parseUrlQueryString(parse.getQuery());
        parseUrlQueryString.putAll(Utility.parseUrlQueryString(parse.getFragment()));
        return parseUrlQueryString;
    }

    public void resize() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(getScaledSize(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, NO_PADDING_SCREEN_WIDTH, 800), displayMetrics.widthPixels), Math.min(getScaledSize(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, MAX_PADDING_SCREEN_HEIGHT), displayMetrics.heightPixels));
    }

    protected void sendErrorToListener(Throwable th) {
        if (this.onCompleteListener == null || this.listenerCalled) {
            return;
        }
        this.listenerCalled = true;
        this.onCompleteListener.onComplete(null, th instanceof FacebookException ? (FacebookException) th : new FacebookException(th));
        dismiss();
    }

    protected void sendSuccessToListener(Bundle bundle) {
        OnCompleteListener onCompleteListener = this.onCompleteListener;
        if (onCompleteListener == null || this.listenerCalled) {
            return;
        }
        this.listenerCalled = true;
        onCompleteListener.onComplete(bundle, null);
        dismiss();
    }

    public void setExpectedRedirectUrl(String str) {
        this.expectedRedirectUrl = str;
    }

    public void setOnCompleteListener(OnCompleteListener onCompleteListener) {
        this.onCompleteListener = onCompleteListener;
    }
}
