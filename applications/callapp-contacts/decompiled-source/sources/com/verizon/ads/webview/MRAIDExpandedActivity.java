package com.verizon.ads.webview;

import android.app.Activity;
import android.content.MutableContextWrapper;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.amazonaws.services.s3.util.Mimetypes;
import com.iab.omid.library.verizonmedia.adsession.f;
import com.verizon.ads.Configuration;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.webview.VASAdsMRAIDWebView;
import com.verizon.ads.webview.VASAdsWebView;
import java.lang.ref.WeakReference;
/* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/MRAIDExpandedActivity.class */
public final class MRAIDExpandedActivity extends Activity {
    public static final String MRAID_EXPANDED_CLOSE_INDICATOR = "MRAID_EXPANDED_CLOSE_INDICATOR";
    public static final String TWO_PART_LOADING_SPINNER = "TWO_PART_LOADING_SPINNER";

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35828a = Logger.getInstance(MRAIDExpandedActivity.class);

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f35829b;

    /* renamed from: c  reason: collision with root package name */
    private VASAdsMRAIDWebView f35830c;

    /* renamed from: d  reason: collision with root package name */
    private ProgressBar f35831d;
    private boolean e;

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask.class */
    static class LoadTwoPartContentAsyncTask extends AsyncTask<String, Void, String> {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<VASAdsMRAIDWebView> f35838a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<VASAdsMRAIDWebView> f35839b;

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<MRAIDExpandedActivity> f35840c;

        private LoadTwoPartContentAsyncTask(MRAIDExpandedActivity mRAIDExpandedActivity, VASAdsMRAIDWebView vASAdsMRAIDWebView, VASAdsMRAIDWebView vASAdsMRAIDWebView2) {
            this.f35838a = new WeakReference<>(vASAdsMRAIDWebView);
            this.f35839b = new WeakReference<>(vASAdsMRAIDWebView2);
            this.f35840c = new WeakReference<>(mRAIDExpandedActivity);
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ String doInBackground(String[] strArr) {
            HttpUtils.Response contentFromGetRequest;
            String[] strArr2 = strArr;
            if (strArr2.length == 0 || (contentFromGetRequest = HttpUtils.getContentFromGetRequest(strArr2[0])) == null || contentFromGetRequest.code != 200 || contentFromGetRequest.content == null) {
                return null;
            }
            return contentFromGetRequest.content;
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            final VASAdsMRAIDWebView vASAdsMRAIDWebView = this.f35838a.get();
            VASAdsMRAIDWebView vASAdsMRAIDWebView2 = this.f35839b.get();
            final MRAIDExpandedActivity mRAIDExpandedActivity = this.f35840c.get();
            if (vASAdsMRAIDWebView == null || vASAdsMRAIDWebView2 == null || mRAIDExpandedActivity == null) {
                MRAIDExpandedActivity.f35828a.d("Two Part Expandable WebView was gone.");
                if (mRAIDExpandedActivity != null) {
                    MRAIDExpandedActivity.b(mRAIDExpandedActivity);
                }
            } else if (str2 == null) {
                MRAIDExpandedActivity.f35828a.e("Failed to retrieve expanded content.");
                vASAdsMRAIDWebView2.a("Unable to expand", "expand");
                mRAIDExpandedActivity.finish();
            } else {
                vASAdsMRAIDWebView2.loadData(str2, Mimetypes.MIMETYPE_HTML, "UTF-8", new VASAdsWebView.LoadDataListener() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.LoadTwoPartContentAsyncTask.1
                    @Override // com.verizon.ads.webview.VASAdsWebView.LoadDataListener
                    public void onComplete(ErrorInfo errorInfo) {
                        if (errorInfo != null) {
                            MRAIDExpandedActivity.f35828a.e(errorInfo.toString());
                            mRAIDExpandedActivity.finish();
                            return;
                        }
                        vASAdsMRAIDWebView.e();
                        MRAIDExpandedActivity.b(mRAIDExpandedActivity);
                    }
                });
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            MRAIDExpandedActivity mRAIDExpandedActivity = this.f35840c.get();
            if (mRAIDExpandedActivity != null) {
                MRAIDExpandedActivity.a(mRAIDExpandedActivity);
            }
        }
    }

    static /* synthetic */ void a(MRAIDExpandedActivity mRAIDExpandedActivity) {
        mRAIDExpandedActivity.runOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.4
            @Override // java.lang.Runnable
            public void run() {
                if (MRAIDExpandedActivity.this.f35831d == null) {
                    MRAIDExpandedActivity.this.f35831d = new ProgressBar(MRAIDExpandedActivity.this);
                    MRAIDExpandedActivity.this.f35831d.setTag(MRAIDExpandedActivity.TWO_PART_LOADING_SPINNER);
                    MRAIDExpandedActivity.this.f35831d.setIndeterminate(true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(13);
                    MRAIDExpandedActivity.this.f35831d.setLayoutParams(layoutParams);
                    MRAIDExpandedActivity.this.f35829b.addView(MRAIDExpandedActivity.this.f35831d, layoutParams);
                    MRAIDExpandedActivity.this.f35831d.setVisibility(0);
                    MRAIDExpandedActivity.this.f35831d.bringToFront();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        VASAdsMRAIDWebView vASAdsMRAIDWebView = this.f35830c;
        if (vASAdsMRAIDWebView != null) {
            if (vASAdsMRAIDWebView.f != null) {
                this.f35830c.f.c();
            }
            this.f35830c.f();
            VASAdsMRAIDWebView vASAdsMRAIDWebView2 = this.f35830c;
            if (vASAdsMRAIDWebView2 instanceof VASAdsMRAIDWebView.TwoPartExpandWebView) {
                vASAdsMRAIDWebView2.release();
                return;
            }
            return;
        }
        finish();
    }

    static /* synthetic */ void b(MRAIDExpandedActivity mRAIDExpandedActivity) {
        mRAIDExpandedActivity.runOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.5
            @Override // java.lang.Runnable
            public void run() {
                MRAIDExpandedActivity.this.f35831d.setVisibility(8);
                ViewUtils.removeFromParent(MRAIDExpandedActivity.this.f35831d);
                MRAIDExpandedActivity.this.f35831d = null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Window window = getWindow();
        if (window != null) {
            View decorView = window.getDecorView();
            if (Logger.isLogLevelEnabled(3)) {
                f35828a.d(String.format("Enabling immersive mode:\ndecorView = %s\nActivity = %s", decorView, this));
            }
            decorView.setSystemUiVisibility(5894);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        b();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("webview_cached_id");
        if (TextUtils.isEmpty(stringExtra)) {
            f35828a.e(String.format("Could not find an MRAID WebView instance for cache ID: %s", stringExtra));
            finish();
            return;
        }
        VASAdsMRAIDWebView b2 = VASAdsMRAIDWebView.b(stringExtra);
        if (b2 == null) {
            f35828a.e(String.format("VerizonAdMRAIDWebView for cache Id <%s> was null.", stringExtra));
            finish();
            return;
        }
        this.e = getIntent().getBooleanExtra("immersive", true);
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 19 && this.e) {
            c();
            if (window != null) {
                window.getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.1
                    @Override // android.view.View.OnSystemUiVisibilityChangeListener
                    public void onSystemUiVisibilityChange(int i) {
                        if ((i & 4) == 0) {
                            MRAIDExpandedActivity.this.c();
                        }
                    }
                });
            }
        } else if (this.e) {
            requestWindowFeature(1);
            if (window != null) {
                window.setFlags(1024, 1024);
            }
        }
        this.f35829b = new RelativeLayout(this);
        ColorDrawable colorDrawable = new ColorDrawable(-16777216);
        colorDrawable.setAlpha(160);
        this.f35829b.setBackground(colorDrawable);
        setContentView(this.f35829b);
        String stringExtra2 = getIntent().getStringExtra("url");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getIntent().getIntExtra("expand_width", -1), getIntent().getIntExtra("expand_height", -1));
        layoutParams.addRule(13);
        if (!TextUtils.isEmpty(stringExtra2)) {
            VASAdsMRAIDWebView.TwoPartExpandWebView twoPartExpandWebView = new VASAdsMRAIDWebView.TwoPartExpandWebView(b2.getContext(), b2, b2.d());
            this.f35830c = twoPartExpandWebView;
            ((MutableContextWrapper) twoPartExpandWebView.getContext()).setBaseContext(this);
            this.f35829b.addView(this.f35830c, layoutParams);
            new LoadTwoPartContentAsyncTask(b2, this.f35830c).execute(stringExtra2);
        } else {
            this.f35830c = b2;
            ((MutableContextWrapper) b2.getContext()).setBaseContext(this);
            this.f35829b.addView(this.f35830c, layoutParams);
            b2.e();
        }
        ViewUtils.setRequestedOrientationSafe(this, getIntent().getIntExtra("orientation", -1));
        final ImageView imageView = new ImageView(this);
        imageView.setTag(MRAID_EXPANDED_CLOSE_INDICATOR);
        imageView.setImageResource(R.drawable.mraid_close);
        imageView.setVisibility(8);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MRAIDExpandedActivity.this.b();
            }
        });
        if (this.f35830c.f != null) {
            try {
                this.f35830c.f.a(imageView, f.CLOSE_AD);
            } catch (Throwable th) {
                f35828a.e("Error adding friendly obstruction to OM SDK ad session", th);
            }
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) getResources().getDimension(R.dimen.close_region_width), (int) getResources().getDimension(R.dimen.close_region_height));
        layoutParams2.addRule(10);
        layoutParams2.addRule(11);
        this.f35829b.addView(imageView, layoutParams2);
        this.f35829b.postDelayed(new Runnable() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.3
            @Override // java.lang.Runnable
            public void run() {
                imageView.setVisibility(0);
            }
        }, Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "close.indicator.appearance.delay", 1100));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (Logger.isLogLevelEnabled(3)) {
            f35828a.d(String.format("onWindowFocusChanged: hasFocus = %b, immersive = %b", Boolean.valueOf(z), Boolean.valueOf(this.e)));
        }
        if (Build.VERSION.SDK_INT >= 19 && this.e && z) {
            c();
        }
    }
}
