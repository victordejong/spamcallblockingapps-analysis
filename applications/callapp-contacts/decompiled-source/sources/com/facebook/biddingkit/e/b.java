package com.facebook.biddingkit.e;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/e/b.class */
public final class b {
    public static AdvertisingIdClient.Info a(Context context) {
        AdvertisingIdClient.Info info;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (GooglePlayServicesNotAvailableException e) {
            com.facebook.biddingkit.d.b.a("Utils", "Failed to get AdvertisingIdClient: ", e);
            info = null;
            return info;
        } catch (GooglePlayServicesRepairableException e2) {
            com.facebook.biddingkit.d.b.a("Utils", "Failed to get AdvertisingIdClient: ", e2);
            info = null;
            return info;
        } catch (Exception e3) {
            com.facebook.biddingkit.d.b.a("Utils", "Failed to get AdvertisingIdClient: ", e3);
            info = null;
            return info;
        }
        return info;
    }

    public static String b(Context context) {
        AdvertisingIdClient.Info a2 = a(context);
        return a2 != null ? a2.getId() : "";
    }
}
