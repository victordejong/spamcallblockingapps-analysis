package com.amazon.device.ads;

import android.view.ViewGroup;
import java.util.Iterator;
import java.util.Map;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/EventDistributor.class */
public class EventDistributor {
    private static final String LOG_TAG = "EventDistributor";

    public boolean distribute(String str, String str2, ViewGroup viewGroup, DTBAdResponse dTBAdResponse, DTBRendererObserver dTBRendererObserver, DTBRenderer dTBRenderer, Map<String, Object> map) {
        AdProvider next;
        try {
            Iterator<AdProvider> it = AdRegistration.getAdProviders().iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
                next = it.next();
            } while (!next.matches(str, str2, dTBAdResponse));
            next.takeOwnership(viewGroup, dTBAdResponse, dTBRendererObserver, dTBRenderer, map);
            return true;
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute distribute method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute distribute method", e);
            return false;
        }
    }
}
