package com.amazon.device.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.p017a.p018a.C0153a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBInterstitialActivity.class */
public class DTBInterstitialActivity extends Activity implements DTBMRAIDCloseButtonListener {

    /* renamed from: b */
    static DTBInterstitialActivity f11812b;

    /* renamed from: a */
    DTBAdInterstitial f11813a;

    /* renamed from: c */
    LinearLayout f11814c;

    /* renamed from: a */
    public static DTBInterstitialActivity m38929a() {
        return f11812b;
    }

    /* renamed from: b */
    private boolean m38928b() {
        return this.f11813a.f11691a.f11780b.f11719e;
    }

    /* renamed from: c */
    public /* synthetic */ void m38927c() {
        this.f11814c.setVisibility(m38928b() ? 4 : 0);
    }

    @Override // com.amazon.device.ads.DTBMRAIDCloseButtonListener
    /* renamed from: h */
    public final void mo38926h() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBInterstitialActivity$Ss3RsB9k9B8bGsdK076aMWBu7bU
            @Override // java.lang.Runnable
            public final void run() {
                DTBInterstitialActivity.this.m38927c();
            }
        });
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f11813a.f11691a.evaluateJavascript("window.mraid.close();", null);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f11812b = this;
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(C3270R.layout.mdtb_interstitial_ad);
        this.f11813a = DTBAdInterstitial.m39058a();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(C3270R.C3272id.inter_container);
        final DTBAdView dTBAdView = this.f11813a.f11691a;
        dTBAdView.m38942b(false);
        ViewParent parent = dTBAdView.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(dTBAdView);
        }
        this.f11814c = (LinearLayout) findViewById(C3270R.C3272id.mraid_close_indicator);
        relativeLayout.addView(dTBAdView, -1, -1);
        dTBAdView.f11780b.f11720f = this;
        this.f11814c.setVisibility(m38928b() ? 4 : 0);
        LinearLayout linearLayout = (LinearLayout) findViewById(C3270R.C3272id.mraid_close_indicator);
        linearLayout.bringToFront();
        linearLayout.setBackgroundColor(0);
        linearLayout.setOrientation(1);
        ImageView imageView = new ImageView(dTBAdView.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DTBAdUtil.m38961a(24), DTBAdUtil.m38961a(24));
        layoutParams.setMargins(DTBAdUtil.m38961a(14), DTBAdUtil.m38961a(14), 0, 0);
        imageView.setImageDrawable(C0153a.m46374b(this, C3270R.C3271drawable.mraid_close));
        linearLayout.addView(imageView, layoutParams);
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads.DTBInterstitialActivity.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    dTBAdView.evaluateJavascript("window.mraid.close();", null);
                    return true;
                }
                return false;
            }
        });
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        f11812b = null;
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }
}
