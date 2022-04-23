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
import androidx.appcompat.a.a.a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBInterstitialActivity.class */
public class DTBInterstitialActivity extends Activity implements DTBMRAIDCloseButtonListener {

    /* renamed from: b  reason: collision with root package name */
    static DTBInterstitialActivity f6435b;

    /* renamed from: a  reason: collision with root package name */
    DTBAdInterstitial f6436a;

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f6437c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBInterstitialActivity a() {
        return f6435b;
    }

    private boolean b() {
        return this.f6436a.f6378a.f6417b.e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.f6437c.setVisibility(b() ? 4 : 0);
    }

    @Override // com.amazon.device.ads.DTBMRAIDCloseButtonListener
    public final void h() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBInterstitialActivity$Ss3RsB9k9B8bGsdK076aMWBu7bU
            @Override // java.lang.Runnable
            public final void run() {
                DTBInterstitialActivity.this.c();
            }
        });
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f6436a.f6378a.evaluateJavascript("window.mraid.close();", null);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f6435b = this;
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.mdtb_interstitial_ad);
        this.f6436a = DTBAdInterstitial.a();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.inter_container);
        final DTBAdView dTBAdView = this.f6436a.f6378a;
        dTBAdView.b(false);
        ViewParent parent = dTBAdView.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(dTBAdView);
        }
        this.f6437c = (LinearLayout) findViewById(R.id.mraid_close_indicator);
        relativeLayout.addView(dTBAdView, -1, -1);
        dTBAdView.f6417b.f = this;
        this.f6437c.setVisibility(b() ? 4 : 0);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.mraid_close_indicator);
        linearLayout.bringToFront();
        linearLayout.setBackgroundColor(0);
        linearLayout.setOrientation(1);
        ImageView imageView = new ImageView(dTBAdView.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DTBAdUtil.a(24), DTBAdUtil.a(24));
        layoutParams.setMargins(DTBAdUtil.a(14), DTBAdUtil.a(14), 0, 0);
        imageView.setImageDrawable(a.b(this, R.drawable.mraid_close));
        linearLayout.addView(imageView, layoutParams);
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads.DTBInterstitialActivity.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                dTBAdView.evaluateJavascript("window.mraid.close();", null);
                return true;
            }
        });
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        f6435b = null;
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }
}
