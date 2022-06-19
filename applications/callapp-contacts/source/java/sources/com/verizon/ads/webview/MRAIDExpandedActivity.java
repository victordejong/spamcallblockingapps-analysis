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
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.iab.omid.library.verizonmedia.adsession.EnumC16487f;
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

    /* renamed from: a */
    private static final Logger f62090a = Logger.getInstance(MRAIDExpandedActivity.class);

    /* renamed from: b */
    private RelativeLayout f62091b;

    /* renamed from: c */
    private VASAdsMRAIDWebView f62092c;

    /* renamed from: d */
    private ProgressBar f62093d;

    /* renamed from: e */
    private boolean f62094e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask.class */
    public static class LoadTwoPartContentAsyncTask extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private WeakReference<VASAdsMRAIDWebView> f62101a;

        /* renamed from: b */
        private WeakReference<VASAdsMRAIDWebView> f62102b;

        /* renamed from: c */
        private WeakReference<MRAIDExpandedActivity> f62103c;

        private LoadTwoPartContentAsyncTask(MRAIDExpandedActivity mRAIDExpandedActivity, VASAdsMRAIDWebView vASAdsMRAIDWebView, VASAdsMRAIDWebView vASAdsMRAIDWebView2) {
            this.f62101a = new WeakReference<>(vASAdsMRAIDWebView);
            this.f62102b = new WeakReference<>(vASAdsMRAIDWebView2);
            this.f62103c = new WeakReference<>(mRAIDExpandedActivity);
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
            final VASAdsMRAIDWebView vASAdsMRAIDWebView = this.f62101a.get();
            VASAdsMRAIDWebView vASAdsMRAIDWebView2 = this.f62102b.get();
            final MRAIDExpandedActivity mRAIDExpandedActivity = this.f62103c.get();
            if (vASAdsMRAIDWebView == null || vASAdsMRAIDWebView2 == null || mRAIDExpandedActivity == null) {
                MRAIDExpandedActivity.f62090a.m5567d("Two Part Expandable WebView was gone.");
                if (mRAIDExpandedActivity == null) {
                    return;
                }
                MRAIDExpandedActivity.m4998b(mRAIDExpandedActivity);
            } else if (str2 != null) {
                vASAdsMRAIDWebView2.loadData(str2, Mimetypes.MIMETYPE_HTML, "UTF-8", new VASAdsWebView.LoadDataListener() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.LoadTwoPartContentAsyncTask.1
                    @Override // com.verizon.ads.webview.VASAdsWebView.LoadDataListener
                    public void onComplete(ErrorInfo errorInfo) {
                        if (errorInfo != null) {
                            MRAIDExpandedActivity.f62090a.m5565e(errorInfo.toString());
                            mRAIDExpandedActivity.finish();
                            return;
                        }
                        vASAdsMRAIDWebView.m4972e();
                        MRAIDExpandedActivity.m4998b(mRAIDExpandedActivity);
                    }
                });
            } else {
                MRAIDExpandedActivity.f62090a.m5565e("Failed to retrieve expanded content.");
                vASAdsMRAIDWebView2.m4979a("Unable to expand", "expand");
                mRAIDExpandedActivity.finish();
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            MRAIDExpandedActivity mRAIDExpandedActivity = this.f62103c.get();
            if (mRAIDExpandedActivity != null) {
                MRAIDExpandedActivity.m5001a(mRAIDExpandedActivity);
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5001a(MRAIDExpandedActivity mRAIDExpandedActivity) {
        mRAIDExpandedActivity.runOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.4
            @Override // java.lang.Runnable
            public void run() {
                if (MRAIDExpandedActivity.this.f62093d != null) {
                    return;
                }
                MRAIDExpandedActivity.this.f62093d = new ProgressBar(MRAIDExpandedActivity.this);
                MRAIDExpandedActivity.this.f62093d.setTag(MRAIDExpandedActivity.TWO_PART_LOADING_SPINNER);
                MRAIDExpandedActivity.this.f62093d.setIndeterminate(true);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(13);
                MRAIDExpandedActivity.this.f62093d.setLayoutParams(layoutParams);
                MRAIDExpandedActivity.this.f62091b.addView(MRAIDExpandedActivity.this.f62093d, layoutParams);
                MRAIDExpandedActivity.this.f62093d.setVisibility(0);
                MRAIDExpandedActivity.this.f62093d.bringToFront();
            }
        });
    }

    /* renamed from: b */
    public void m4999b() {
        VASAdsMRAIDWebView vASAdsMRAIDWebView = this.f62092c;
        if (vASAdsMRAIDWebView == null) {
            finish();
            return;
        }
        if (vASAdsMRAIDWebView.f62199f != null) {
            this.f62092c.f62199f.mo7149c();
        }
        this.f62092c.m4970f();
        VASAdsMRAIDWebView vASAdsMRAIDWebView2 = this.f62092c;
        if (!(vASAdsMRAIDWebView2 instanceof VASAdsMRAIDWebView.TwoPartExpandWebView)) {
            return;
        }
        vASAdsMRAIDWebView2.release();
    }

    /* renamed from: b */
    static /* synthetic */ void m4998b(MRAIDExpandedActivity mRAIDExpandedActivity) {
        mRAIDExpandedActivity.runOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.5
            @Override // java.lang.Runnable
            public void run() {
                MRAIDExpandedActivity.this.f62093d.setVisibility(8);
                ViewUtils.removeFromParent(MRAIDExpandedActivity.this.f62093d);
                MRAIDExpandedActivity.this.f62093d = null;
            }
        });
    }

    /* renamed from: c */
    public void m4997c() {
        Window window = getWindow();
        if (window != null) {
            View decorView = window.getDecorView();
            if (Logger.isLogLevelEnabled(3)) {
                f62090a.m5567d(String.format("Enabling immersive mode:\ndecorView = %s\nActivity = %s", decorView, this));
            }
            decorView.setSystemUiVisibility(5894);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        m4999b();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("webview_cached_id");
        if (TextUtils.isEmpty(stringExtra)) {
            f62090a.m5565e(String.format("Could not find an MRAID WebView instance for cache ID: %s", stringExtra));
            finish();
            return;
        }
        VASAdsMRAIDWebView m4976b = VASAdsMRAIDWebView.m4976b(stringExtra);
        if (m4976b == null) {
            f62090a.m5565e(String.format("VerizonAdMRAIDWebView for cache Id <%s> was null.", stringExtra));
            finish();
            return;
        }
        this.f62094e = getIntent().getBooleanExtra("immersive", true);
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 19 && this.f62094e) {
            m4997c();
            if (window != null) {
                window.getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.1
                    @Override // android.view.View.OnSystemUiVisibilityChangeListener
                    public void onSystemUiVisibilityChange(int i) {
                        if ((i & 4) == 0) {
                            MRAIDExpandedActivity.this.m4997c();
                        }
                    }
                });
            }
        } else if (this.f62094e) {
            requestWindowFeature(1);
            if (window != null) {
                window.setFlags(1024, 1024);
            }
        }
        this.f62091b = new RelativeLayout(this);
        ColorDrawable colorDrawable = new ColorDrawable(-16777216);
        colorDrawable.setAlpha(160);
        this.f62091b.setBackground(colorDrawable);
        setContentView(this.f62091b);
        String stringExtra2 = getIntent().getStringExtra("url");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getIntent().getIntExtra("expand_width", -1), getIntent().getIntExtra("expand_height", -1));
        layoutParams.addRule(13);
        if (!TextUtils.isEmpty(stringExtra2)) {
            VASAdsMRAIDWebView.TwoPartExpandWebView twoPartExpandWebView = new VASAdsMRAIDWebView.TwoPartExpandWebView(m4976b.getContext(), m4976b, m4976b.m4974d());
            this.f62092c = twoPartExpandWebView;
            ((MutableContextWrapper) twoPartExpandWebView.getContext()).setBaseContext(this);
            this.f62091b.addView(this.f62092c, layoutParams);
            new LoadTwoPartContentAsyncTask(m4976b, this.f62092c).execute(stringExtra2);
        } else {
            this.f62092c = m4976b;
            ((MutableContextWrapper) m4976b.getContext()).setBaseContext(this);
            this.f62091b.addView(this.f62092c, layoutParams);
            m4976b.m4972e();
        }
        ViewUtils.setRequestedOrientationSafe(this, getIntent().getIntExtra("orientation", -1));
        final ImageView imageView = new ImageView(this);
        imageView.setTag(MRAID_EXPANDED_CLOSE_INDICATOR);
        imageView.setImageResource(C17539R.C17540drawable.mraid_close);
        imageView.setVisibility(8);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MRAIDExpandedActivity.this.m4999b();
            }
        });
        if (this.f62092c.f62199f != null) {
            try {
                this.f62092c.f62199f.mo7152a(imageView, EnumC16487f.CLOSE_AD);
            } catch (Throwable th) {
                f62090a.m5564e("Error adding friendly obstruction to OM SDK ad session", th);
            }
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) getResources().getDimension(C17539R.dimen.close_region_width), (int) getResources().getDimension(C17539R.dimen.close_region_height));
        layoutParams2.addRule(10);
        layoutParams2.addRule(11);
        this.f62091b.addView(imageView, layoutParams2);
        this.f62091b.postDelayed(new Runnable() { // from class: com.verizon.ads.webview.MRAIDExpandedActivity.3
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
            f62090a.m5567d(String.format("onWindowFocusChanged: hasFocus = %b, immersive = %b", Boolean.valueOf(z), Boolean.valueOf(this.f62094e)));
        }
        if (Build.VERSION.SDK_INT < 19 || !this.f62094e || !z) {
            return;
        }
        m4997c();
    }
}
