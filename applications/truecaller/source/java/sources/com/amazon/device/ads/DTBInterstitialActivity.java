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
import com.amazon.device.ads.DTBInterstitialActivity;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBInterstitialActivity.class */
public class DTBInterstitialActivity extends Activity implements DTBMRAIDCloseButtonListener {
    private static final String LOG_TAG = DTBInterstitialActivity.class.getSimpleName();
    public static DTBInterstitialActivity theRecent;
    public LinearLayout closeIndicatorRegion;
    public DTBAdInterstitial interstitial;

    public static DTBInterstitialActivity getRecentInterstitialActivity() {
        return theRecent;
    }

    public boolean getUseCustomClose() {
        return this.interstitial.getAdView().getController().useCustomClose;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            this.interstitial.getAdView().evaluateJavascript(DTBAdMRAIDController.MRAID_CLOSE, null);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute onBackPressed method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute onBackPressed method", e);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            theRecent = this;
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            setContentView(C0458R.layout.mdtb_interstitial_ad);
            this.interstitial = DTBAdInterstitial.getRecent();
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(C0458R.C0460id.inter_container);
            final DTBAdView adView = this.interstitial.getAdView();
            adView.setScrollEnabled(false);
            ViewParent parent = adView.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(adView);
            }
            int i = C0458R.C0460id.mraid_close_indicator;
            this.closeIndicatorRegion = (LinearLayout) findViewById(i);
            relativeLayout.addView(adView, -1, -1);
            adView.getController().setCustomButtonListener(this);
            this.closeIndicatorRegion.setVisibility(getUseCustomClose() ? 4 : 0);
            LinearLayout linearLayout = (LinearLayout) findViewById(i);
            linearLayout.bringToFront();
            linearLayout.setBackgroundColor(0);
            linearLayout.setOrientation(1);
            ImageView imageView = new ImageView(adView.getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DTBAdUtil.sizeToDevicePixels(24), DTBAdUtil.sizeToDevicePixels(24));
            layoutParams.setMargins(DTBAdUtil.sizeToDevicePixels(14), DTBAdUtil.sizeToDevicePixels(14), 0, 0);
            imageView.setImageDrawable(C25440a.m3540a(this, C0458R.C0459drawable.mraid_close));
            linearLayout.addView(imageView, layoutParams);
            linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads.DTBInterstitialActivity.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        adView.evaluateJavascript(DTBAdMRAIDController.MRAID_CLOSE, null);
                        return true;
                    }
                    return false;
                }
            });
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to create DTBInterstitial Activity");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to create DTBInterstitial Activity", e);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        theRecent = null;
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // com.amazon.device.ads.DTBMRAIDCloseButtonListener
    public void useCustomButtonUpdated() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: e.c.b.a.f0
            @Override // java.lang.Runnable
            public final void run() {
                DTBInterstitialActivity dTBInterstitialActivity = DTBInterstitialActivity.this;
                dTBInterstitialActivity.closeIndicatorRegion.setVisibility(dTBInterstitialActivity.getUseCustomClose() ? 4 : 0);
            }
        });
    }
}
