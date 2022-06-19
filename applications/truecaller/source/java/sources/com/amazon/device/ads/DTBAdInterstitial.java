package com.amazon.device.ads;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.util.Map;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdInterstitial.class */
public class DTBAdInterstitial {
    private static final String LOG_TAG = "DTBAdInterstitial";
    public static DTBAdInterstitial theRecent;
    public DTBAdView adView;
    private Context context;

    public DTBAdInterstitial(Context context, DTBAdInterstitialListener dTBAdInterstitialListener) {
        try {
            this.context = context;
            this.adView = new DTBAdView(context, dTBAdInterstitialListener);
            theRecent = this;
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdInterstitial class");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to initialize DTBAdInterstitial class", e);
        }
    }

    private DTBAdMRAIDInterstitialController getInterstitialController() {
        return this.adView.getController();
    }

    private DTBAdInterstitialListener getInterstitialListener() {
        return getInterstitialController().getInterstitialListener();
    }

    public static DTBAdInterstitial getRecent() {
        return theRecent;
    }

    public static int getWidth(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.widthPixels;
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute getWidth method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getWidth method", e);
            return 0;
        }
    }

    public void fetchAd(Bundle bundle) {
        try {
            this.adView.fetchAd(bundle.getString(DTBAdView.BID_HTML, ""), bundle);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute fetchAd method with bundle argument");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute fetchAd method with extraData argument", e);
        }
    }

    public void fetchAd(String str) {
        try {
            this.adView.fetchAd(str);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute fetchAd method with bundle argument");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute fetchAd method with adHtml argument", e);
        }
    }

    public void fetchAd(String str, Bundle bundle) {
        try {
            this.adView.fetchAd(str, bundle);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute fetchAd method with adHtml and bundle argument");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute fetchAd method with adHtml and  bundle argument", e);
        }
    }

    public void fetchAd(Map<String, Object> map) {
        this.adView.fetchAd(map);
    }

    public DTBAdView getAdView() {
        return this.adView;
    }

    public void onAdClosed() {
        DTBAdInterstitialListener interstitialListener = getInterstitialListener();
        if (interstitialListener != null) {
            interstitialListener.onAdClosed(this.adView);
        }
    }

    public void setListener(DTBAdInterstitialListener dTBAdInterstitialListener) {
        getInterstitialController().setInterstitialListener(dTBAdInterstitialListener);
    }

    public void show() {
        try {
            this.context.startActivity(new Intent(this.context, DTBInterstitialActivity.class));
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute show method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute show method", e);
        }
    }
}
