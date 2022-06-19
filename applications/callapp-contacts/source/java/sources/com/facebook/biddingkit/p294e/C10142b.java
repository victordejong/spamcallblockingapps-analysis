package com.facebook.biddingkit.p294e;

import android.content.Context;
import com.facebook.biddingkit.p293d.C10123b;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
/* renamed from: com.facebook.biddingkit.e.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/e/b.class */
public final class C10142b {
    /* renamed from: a */
    public static AdvertisingIdClient.Info m23345a(Context context) {
        AdvertisingIdClient.Info info;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (GooglePlayServicesNotAvailableException e) {
            C10123b.m23369a("Utils", "Failed to get AdvertisingIdClient: ", e);
            info = null;
            return info;
        } catch (GooglePlayServicesRepairableException e2) {
            C10123b.m23369a("Utils", "Failed to get AdvertisingIdClient: ", e2);
            info = null;
            return info;
        } catch (Exception e3) {
            C10123b.m23369a("Utils", "Failed to get AdvertisingIdClient: ", e3);
            info = null;
            return info;
        }
        return info;
    }

    /* renamed from: b */
    public static String m23344b(Context context) {
        AdvertisingIdClient.Info m23345a = m23345a(context);
        return m23345a != null ? m23345a.getId() : "";
    }
}
