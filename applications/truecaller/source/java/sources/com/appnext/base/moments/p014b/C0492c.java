package com.appnext.base.moments.p014b;

import android.content.Context;
import android.text.TextUtils;
import com.appnext.base.C0472a;
import com.appnext.base.moments.p011a.C0482a;
import com.appnext.base.moments.p011a.p012a.C0484b;
import com.appnext.base.moments.p014b.C0490b;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* renamed from: com.appnext.base.moments.b.c */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/b/c.class */
public final class C0492c {
    /* renamed from: a */
    public static void m42525a(String str, String str2, C0490b.EnumC0491a enumC0491a) {
        try {
            C0482a.m42553Q().m42551S().m42530a(new C0484b(str, str2, enumC0491a.getType()));
        } catch (Throwable th) {
            C0472a.m42577a("SdkHelper$insert", th);
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: c */
    public static long m42523c(String str, String str2) {
        char c;
        char c2;
        try {
            if (!TextUtils.isEmpty(str) && TextUtils.isDigitsOnly(str) && !TextUtils.isEmpty(str2)) {
                int intValue = Integer.valueOf(str).intValue();
                if ("second".equalsIgnoreCase(str2)) {
                    return intValue;
                }
                if ("minute".equalsIgnoreCase(str2)) {
                    c = intValue;
                    c2 = 60000;
                } else if ("hour".equalsIgnoreCase(str2)) {
                    c = intValue;
                    c2 = 61056;
                } else if (!"day".equalsIgnoreCase(str2)) {
                    return -1L;
                } else {
                    c = intValue;
                    c2 = 23552;
                }
                return c * c2;
            }
            return -1L;
        } catch (Throwable th) {
            C0472a.m42577a("SdkHelper$calculateIntervalInMS", th);
            return -1L;
        }
    }

    /* renamed from: c */
    public static boolean m42524c(Context context) throws Exception {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo == null) {
                return false;
            }
            return advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Throwable th) {
            return true;
        }
    }

    /* renamed from: d */
    public static boolean m42522d(Context context) {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo == null) {
                return true;
            }
            return advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Throwable th) {
            C0472a.m42577a("SdkHelper$isLimitAdTrackingEnabled", th);
            return true;
        }
    }
}
