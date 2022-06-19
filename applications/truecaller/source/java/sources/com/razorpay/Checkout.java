package com.razorpay;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.razorpay.AnalyticsProperty;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/razorpay/Checkout.class */
public class Checkout extends Fragment {
    public static final String EVENT_CALLBACK_DNE = "dne";
    public static final String EVENT_CALLBACK_THREW_ERROR = "threw_error";
    public static final int EXTERNAL_WALLET = 4;
    public static final int INCOMPATIBLE_PLUGIN = 7;
    public static final int INTEGRATION_ONE = 1;
    public static final int INTEGRATION_THREE = 3;
    public static final int INTEGRATION_TWO = 2;
    public static final int INVALID_OPTIONS = 3;
    public static final int NETWORK_ERROR = 2;
    public static final int PAYMENT_CANCELED = 0;
    public static final int PAYMENT_SUCCESS = 1;
    public static final int RZP_REQUEST_CODE = 62442;
    public static final int TLS_ERROR = 6;
    private static PaymentData paymentData;
    private static long sPreloadAbortDuration;
    private static long sPreloadCompleteDuration;
    private static boolean sPreloadFailed;
    private static WebView sPreloadView;
    private int checkoutImage;
    private boolean disableFullScreen;
    private boolean isMethodOverridden;
    private String key;
    private Activity merchantActivity;
    private String merchantClassName;
    private JSONObject options;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0027 -> B:6:0x0023). Please submit an issue!!! */
    private static void abortPreloadIfRequired() {
        long nanoTime = System.nanoTime();
        try {
            WebView webView = sPreloadView;
            if (webView != null) {
                long longValue = nanoTime - ((Long) webView.getTag()).longValue();
                sPreloadAbortDuration = longValue;
                BaseUtils.nanoTimeToSecondsString(longValue, 2);
            }
        } catch (Exception e) {
        }
        destroyPreloadView();
    }

    public static void clearUserData(Context context) {
        CheckoutUtils.m36137b(context, null);
        CheckoutUtils.m36143a(context, (String) null);
        f$_G$.m36083a(context, (String) null);
        CookieManager.getInstance().setCookie(BaseConstants.RZP_URL, "razorpay_api_session=");
    }

    private static void createPaymentData(Activity activity, String str) {
        PaymentData paymentData2 = new PaymentData();
        paymentData = paymentData2;
        paymentData2.setUserContact(CheckoutUtils.m36138b(activity));
        paymentData.setUserEmail(CheckoutUtils.m36145a((Context) activity));
        try {
            JSONObject jSONObject = new JSONObject(str);
            paymentData.setData(jSONObject);
            if (jSONObject.has("razorpay_payment_id")) {
                paymentData.setPaymentId(jSONObject.getString("razorpay_payment_id"));
            }
            if (jSONObject.has("razorpay_order_id")) {
                paymentData.setOrderId(jSONObject.getString("razorpay_order_id"));
            }
            if (jSONObject.has("razorpay_signature")) {
                paymentData.setSignature(jSONObject.getString("razorpay_signature"));
            }
            if (!jSONObject.has("external_wallet")) {
                return;
            }
            paymentData.setExternalWallet(jSONObject.getString("external_wallet"));
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, "error", e.getMessage());
        }
    }

    public static void destroyPreloadView() {
        try {
            sPreloadView.stopLoading();
        } catch (Exception e) {
        }
        sPreloadView = null;
    }

    public static void failPreload() {
        sPreloadFailed = true;
    }

    private Method getMerchantClassMethod(String str, Class... clsArr) {
        return Class.forName(this.merchantClassName).getMethod(str, clsArr);
    }

    private static String getPaymentResult(Intent intent) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return null;
        }
        return extras.getString("RESULT");
    }

    public static void handleActivityResult(Activity activity, int i, int i2, Intent intent, PaymentResultWithDataListener paymentResultWithDataListener, ExternalWalletListener externalWalletListener) {
        if (i != 62442) {
            return;
        }
        String paymentResult = getPaymentResult(intent);
        String str = paymentResult;
        if (paymentResult.contains("cancelled")) {
            str = BaseUtils.getPaymentCancelledResponse("");
        }
        createPaymentData(activity, str);
        trackOnActivityResultEvent(i2, str);
        if (i2 == 1) {
            try {
                paymentResultWithDataListener.onPaymentSuccess(paymentData.getPaymentId(), paymentData);
            } catch (Exception e) {
                handleMerchantCallbackError(activity, i2, EVENT_CALLBACK_THREW_ERROR, e);
            }
        } else if (i2 != 4) {
            try {
                paymentResultWithDataListener.onPaymentError(i2, str, paymentData);
            } catch (Exception e2) {
                handleMerchantCallbackError(activity, i2, EVENT_CALLBACK_THREW_ERROR, e2);
            }
        } else if (externalWalletListener == null) {
        } else {
            try {
                externalWalletListener.onExternalWalletSelected(paymentData.getExternalWallet(), paymentData);
            } catch (Exception e3) {
                handleMerchantCallbackError(activity, i2, EVENT_CALLBACK_THREW_ERROR, e3);
            }
        }
    }

    private void handleExternalWalletSelected() {
        if (!(getActivity() instanceof ExternalWalletListener)) {
            handleMerchantCallbackError(this.merchantActivity, 4, EVENT_CALLBACK_DNE, new Exception());
            return;
        }
        try {
            ExternalWalletListener externalWalletListener = (ExternalWalletListener) getActivity();
            String externalWallet = paymentData.getExternalWallet();
            if (TextUtils.isEmpty(externalWallet)) {
                return;
            }
            externalWalletListener.onExternalWalletSelected(externalWallet, paymentData);
            AnalyticsUtil.trackEvent(AnalyticsEvent.MERCHANT_EXTERNAL_WALLET_SELECTED_CALLED);
            AnalyticsUtil.postData();
        } catch (Exception e) {
            handleMerchantCallbackError(this.merchantActivity, 4, EVENT_CALLBACK_THREW_ERROR, e);
        }
    }

    private static void handleMerchantCallbackError(Activity activity, int i, String str, Exception exc) {
        Object obj;
        String str2;
        if (i == 1) {
            str2 = "onPaymentSuccess";
            obj = AnalyticsConstants.SUCCESS;
        } else if (i == 4) {
            str2 = "onExternalWalletSelected";
            obj = "redirected";
        } else {
            str2 = "onPaymentError";
            obj = "error";
        }
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("event_details", exc.getMessage());
            hashMap.put("event_type", exc.getMessage());
            hashMap.put("payment_status", obj);
            AnalyticsUtil.trackEvent(AnalyticsEvent.HANDOVER_ERROR, hashMap);
            AnalyticsUtil.postData();
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, "error", e.getMessage());
        }
        if (str.equals(EVENT_CALLBACK_DNE)) {
            if (i == 4) {
                Toast.makeText(activity, "Error: ExternalWalletListener probably not implemented in your activity", 0).show();
            } else {
                Toast.makeText(activity, "Error: " + str2 + " probably not implemented in your activity", 0).show();
            }
        } else if (str.equals(EVENT_CALLBACK_THREW_ERROR)) {
            Toast.makeText(activity, "Your " + str2 + " method is throwing an error. Wrap the entire code of the method inside a try catch.", 0).show();
        }
        AnalyticsUtil.reportError(exc, "error", exc.getMessage());
    }

    private void handleOnError(int i, String str) {
        this.isMethodOverridden = true;
        onError(i, str);
        if (this.isMethodOverridden) {
            trackIntegrationType(i, 1);
        }
    }

    private boolean handleOnErrorViaInterface(int i, String str) {
        if (getActivity() instanceof PaymentResultListener) {
            try {
                ((PaymentResultListener) getActivity()).onPaymentError(i, str);
                trackIntegrationType(i, 3);
                return true;
            } catch (Exception e) {
                handleMerchantCallbackError(this.merchantActivity, i, EVENT_CALLBACK_THREW_ERROR, e);
                return true;
            }
        } else if (!(getActivity() instanceof PaymentResultWithDataListener)) {
            return false;
        } else {
            try {
                ((PaymentResultWithDataListener) getActivity()).onPaymentError(i, str, paymentData);
                trackIntegrationType(i, 3);
                return true;
            } catch (Exception e2) {
                handleMerchantCallbackError(this.merchantActivity, i, EVENT_CALLBACK_THREW_ERROR, e2);
                return true;
            }
        }
    }

    private void handleOnErrorViaReflection(int i, String str) {
        Method method;
        try {
            method = getMerchantClassMethod("onPaymentError", Integer.TYPE, String.class);
        } catch (Exception e) {
            handleMerchantCallbackError(this.merchantActivity, i, EVENT_CALLBACK_DNE, e);
            method = null;
        }
        try {
            invokeMethod(method, Integer.valueOf(i), str);
            trackIntegrationType(i, 2);
        } catch (Exception e2) {
            handleMerchantCallbackError(this.merchantActivity, i, EVENT_CALLBACK_THREW_ERROR, e2);
        }
    }

    private void handleOnSuccess() {
        String paymentId = paymentData.getPaymentId();
        if (paymentId != null) {
            this.isMethodOverridden = true;
            onSuccess(paymentId);
        }
        if (this.isMethodOverridden) {
            trackIntegrationType(1, 1);
        }
    }

    private boolean handleOnSuccessViaInterface(String str) {
        if (getActivity() instanceof PaymentResultListener) {
            try {
                ((PaymentResultListener) getActivity()).onPaymentSuccess(str);
                trackIntegrationType(1, 3);
                return true;
            } catch (Exception e) {
                handleMerchantCallbackError(this.merchantActivity, 1, EVENT_CALLBACK_THREW_ERROR, e);
                return true;
            }
        } else if (!(getActivity() instanceof PaymentResultWithDataListener)) {
            return false;
        } else {
            try {
                ((PaymentResultWithDataListener) getActivity()).onPaymentSuccess(str, paymentData);
                trackIntegrationType(1, 3);
                return true;
            } catch (Exception e2) {
                handleMerchantCallbackError(this.merchantActivity, 1, EVENT_CALLBACK_THREW_ERROR, e2);
                return true;
            }
        }
    }

    private void handleOnSuccessViaReflection(String str) {
        Method method;
        try {
            method = getMerchantClassMethod("onPaymentSuccess", String.class);
        } catch (Exception e) {
            handleMerchantCallbackError(this.merchantActivity, 1, EVENT_CALLBACK_DNE, e);
            method = null;
        }
        try {
            invokeMethod(method, str);
            trackIntegrationType(1, 2);
        } catch (Exception e2) {
            handleMerchantCallbackError(this.merchantActivity, 1, EVENT_CALLBACK_THREW_ERROR, e2);
        }
    }

    private void invokeMethod(Method method, Object... objArr) {
        if (method == null) {
            return;
        }
        method.invoke(this.merchantActivity, objArr);
    }

    public static void preload(Context context) {
        sPreloadCompleteDuration = 0L;
        sPreloadAbortDuration = 0L;
        sPreloadFailed = false;
        Context applicationContext = context.getApplicationContext();
        WebView webView = new WebView(applicationContext);
        sPreloadView = webView;
        BaseUtils.setWebViewSettings(applicationContext, webView, false);
        sPreloadView.setWebViewClient(new WebViewClient() { // from class: com.razorpay.Checkout.1
            public long pageStartAt;

            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView2, String str) {
                long nanoTime = System.nanoTime();
                if (!Checkout.sPreloadFailed) {
                    long unused = Checkout.sPreloadCompleteDuration = nanoTime - this.pageStartAt;
                    BaseUtils.nanoTimeToSecondsString(Checkout.sPreloadCompleteDuration, 2);
                }
                Checkout.destroyPreloadView();
            }

            @Override // android.webkit.WebViewClient
            public final void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                this.pageStartAt = System.nanoTime();
                if (Checkout.sPreloadView != null) {
                    Checkout.sPreloadView.setTag(Long.valueOf(this.pageStartAt));
                    return;
                }
                AnalyticsUtil.trackEvent(AnalyticsEvent.WEB_VIEW_UNEXPECTED_NULL, C22128a.m8667T("error_location", "Checkout->Preload()->onPageStarted"));
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedError(WebView webView2, int i, String str, String str2) {
                Checkout.failPreload();
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView2, webResourceRequest, webResourceError);
                Checkout.failPreload();
            }
        });
        sPreloadView.setWebChromeClient(new g__v_());
        sPreloadView.loadUrl("https://api.razorpay.com/v1/checkout/public");
    }

    private static void trackIntegrationType(int i, int i2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("integration_type", Integer.toString(i2));
            if (i == 1) {
                AnalyticsUtil.trackEvent(AnalyticsEvent.MERCHANT_ON_SUCCESS_CALLED, hashMap);
            } else {
                AnalyticsUtil.trackEvent(AnalyticsEvent.MERCHANT_ON_ERROR_CALLED, hashMap);
            }
            AnalyticsUtil.postData();
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
        }
    }

    private static void trackOnActivityResultEvent(int i, String str) {
        try {
            AnalyticsProperty.Scope scope = AnalyticsProperty.Scope.ORDER;
            AnalyticsUtil.addProperty("onActivityResult result", new AnalyticsProperty(str, scope));
            AnalyticsUtil.addProperty("onActivityResult resultCode", new AnalyticsProperty(String.valueOf(i), scope));
            if (i == 1) {
                AnalyticsUtil.trackEvent(AnalyticsEvent.CALLING_ON_SUCCESS);
            } else if (i == 4) {
                AnalyticsUtil.trackEvent(AnalyticsEvent.CALLING_EXTERNAL_WALLET_SELECTED);
            } else {
                AnalyticsUtil.trackEvent(AnalyticsEvent.CALLING_ON_ERROR);
            }
            AnalyticsUtil.postData();
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str;
        if (i != 62442) {
            return;
        }
        Activity activity = getActivity();
        this.merchantActivity = activity;
        this.merchantClassName = activity.getClass().getName();
        String paymentResult = getPaymentResult(intent);
        if (paymentResult == null) {
            str = "Payment Error";
        } else {
            str = paymentResult;
            if (paymentResult.contains("cancelled")) {
                str = BaseUtils.getPaymentCancelledResponse("");
            }
        }
        trackOnActivityResultEvent(i2, str);
        if (i2 == 1) {
            createPaymentData(this.merchantActivity, str);
            handleOnSuccess();
        } else if (i2 == 4) {
            handleExternalWalletSelected();
        } else {
            handleOnError(i2, str);
        }
        try {
            getActivity().getFragmentManager().beginTransaction().remove(this).commit();
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, "error", e.getMessage());
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.options != null) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(getActivity().getPackageName(), "com.razorpay.CheckoutActivity"));
            long j = sPreloadCompleteDuration;
            if (j > 0) {
                intent.putExtra("PRELOAD_COMPLETE_DURATION", j);
            } else {
                long j2 = sPreloadAbortDuration;
                if (j2 > 0) {
                    intent.putExtra("PRELOAD_ABORT_DURATION", j2);
                }
            }
            intent.putExtra("OPTIONS", this.options.toString());
            intent.putExtra("IMAGE", this.checkoutImage);
            intent.putExtra("DISABLE_FULL_SCREEN", this.disableFullScreen);
            this.options = null;
            startActivityForResult(intent, RZP_REQUEST_CODE);
        }
    }

    public void onError(int i, String str) {
        this.isMethodOverridden = false;
        if (!handleOnErrorViaInterface(i, str)) {
            handleOnErrorViaReflection(i, str);
        }
    }

    public void onSuccess(String str) {
        this.isMethodOverridden = false;
        if (!handleOnSuccessViaInterface(str)) {
            handleOnSuccessViaReflection(str);
        }
    }

    public final void open(Activity activity, JSONObject jSONObject) {
        if (TextUtils.isEmpty(this.key)) {
            this.key = BaseUtils.getKeyId(activity);
        }
        BaseConfig.getAdvertisingIdFromUtil(activity);
        if (!TextUtils.isEmpty(this.key)) {
            if (jSONObject == null || jSONObject.length() == 0) {
                throw new RuntimeException("Checkout options cannot be null or empty");
            }
            try {
                jSONObject.put(AnalyticsConstants.KEY, this.key);
            } catch (JSONException e) {
                AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
            }
            abortPreloadIfRequired();
            this.options = jSONObject;
            this.merchantClassName = activity.getClass().getName();
            this.merchantActivity = activity;
            activity.getFragmentManager().beginTransaction().add(this, (String) null).commitAllowingStateLoss();
            return;
        }
        throw new RuntimeException(BaseConstants.KEY_MISSING_EXCEPTION);
    }

    public final void setFullScreenDisable(boolean z) {
        this.disableFullScreen = z;
    }

    public final void setImage(int i) {
        this.checkoutImage = i;
    }

    public final void setKeyID(String str) {
        setPublicKey(str);
    }

    @Deprecated
    public final void setPublicKey(String str) {
        this.key = str;
    }
}
