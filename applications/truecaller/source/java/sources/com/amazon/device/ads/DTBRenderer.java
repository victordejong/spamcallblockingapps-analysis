package com.amazon.device.ads;

import android.app.Activity;
import android.view.View;
import java.util.List;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBRenderer.class */
public class DTBRenderer {
    private static final String LOG_TAG = "DTBRenderer";
    public Activity activity;
    public String adUnitId;
    public DTBAdResponse dtbAdResponse;
    public boolean showOnLoad = false;

    public DTBRenderer(String str, Activity activity, DTBAdResponse dTBAdResponse) {
        this.adUnitId = str;
        this.dtbAdResponse = dTBAdResponse;
        this.activity = activity;
    }

    public EventDistributor getEventDistributer() {
        return AdRegistration.getEventDistributer();
    }

    public DTBAdSize getSize() {
        try {
            DTBAdResponse dTBAdResponse = this.dtbAdResponse;
            if (dTBAdResponse == null) {
                return null;
            }
            List<DTBAdSize> dTBAds = dTBAdResponse.getDTBAds();
            if (dTBAds.size() <= 0) {
                return null;
            }
            return dTBAds.get(0);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute getSize method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getSize method", e);
            return null;
        }
    }

    public boolean isShowOnLoad() {
        return this.showOnLoad;
    }

    public void onCustomBannerFailure(View view) {
    }

    public void onCustomBannerSuccess(View view) {
    }
}
