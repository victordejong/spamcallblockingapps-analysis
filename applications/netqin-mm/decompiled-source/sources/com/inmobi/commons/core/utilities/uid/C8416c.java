package com.inmobi.commons.core.utilities.uid;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.inmobi.commons.core.utilities.C8409f;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.p508a.C8326a;
import java.security.MessageDigest;
/* renamed from: com.inmobi.commons.core.utilities.uid.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/uid/c.class */
public class C8416c {

    /* renamed from: a */
    public static final String f32702a = "c";

    /* renamed from: b */
    public static final Object f32703b = new Object();

    /* renamed from: c */
    public static C8416c f32704c;

    /* renamed from: d */
    public static C8414a f32705d;

    /* renamed from: a */
    public static C8416c m5632a() {
        C8416c cVar = f32704c;
        C8416c cVar2 = cVar;
        if (cVar == null) {
            synchronized (f32703b) {
                C8416c cVar3 = f32704c;
                cVar2 = cVar3;
                if (cVar3 == null) {
                    cVar2 = new C8416c();
                    f32704c = cVar2;
                }
            }
        }
        return cVar2;
    }

    /* renamed from: a */
    public static String m5631a(String str, String str2) {
        if (str == null) {
            return "TEST_EMULATOR";
        }
        try {
            if ("".equals(str.trim())) {
                return "TEST_EMULATOR";
            }
            MessageDigest instance = MessageDigest.getInstance(str2);
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                stringBuffer.append(Integer.toString((b & 255) + 256, 16).substring(1));
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            new StringBuilder("SDK encountered an unexpected error attempting to get digested UID; ").append(e.getMessage());
            return null;
        }
    }

    /* renamed from: c */
    public static void m5629c() {
        String str;
        try {
            if (C8409f.m5640a("root")) {
                C8414a aVar = f32705d;
                if (aVar != null && (str = aVar.f32699a) != null) {
                    Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
                    String str2 = f32702a;
                    Logger.m5724a(internalLogLevel, str2, "Publisher device Id is " + str);
                    return;
                }
                return;
            }
            String e = m5627e();
            Logger.InternalLogLevel internalLogLevel2 = Logger.InternalLogLevel.DEBUG;
            String str3 = f32702a;
            Logger.m5724a(internalLogLevel2, str3, "Publisher device Id is " + m5631a(e, "SHA-1"));
        } catch (Exception e2) {
            new StringBuilder("SDK encountered an unexpected error attempting to print the publisher test ID; ").append(e2.getMessage());
        }
    }

    /* renamed from: d */
    public static String m5628d() {
        return "1";
    }

    /* renamed from: e */
    public static String m5627e() {
        Context b = C8326a.m5891b();
        String str = "";
        if (b != null) {
            try {
                str = Settings.Secure.getString(b.getContentResolver(), "android_id");
                if (str == null) {
                    str = Settings.System.getString(b.getContentResolver(), "android_id");
                }
            } catch (Exception e) {
                str = "";
            }
        }
        return str;
    }

    /* renamed from: f */
    public static C8414a m5626f() {
        return f32705d;
    }

    /* renamed from: g */
    public static Boolean m5625g() {
        m5632a();
        C8414a aVar = f32705d;
        if (aVar == null) {
            return null;
        }
        return aVar.f32700b;
    }

    /* renamed from: j */
    public static boolean m5622j() {
        return true;
    }

    /* renamed from: b */
    public final void m5630b() {
        try {
            final C8415b bVar = new C8415b();
            C8414a aVar = new C8414a();
            f32705d = aVar;
            aVar.f32699a = bVar.f32701a.m5796c("adv_id");
            f32705d.f32700b = bVar.f32701a.f32525a.contains("limit_ad_tracking") ? Boolean.valueOf(bVar.f32701a.m5797b("limit_ad_tracking", true)) : null;
            if (C8409f.m5640a("root") && m5622j()) {
                new Thread(new Runnable() { // from class: com.inmobi.commons.core.utilities.uid.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(C8326a.m5891b());
                            String id = advertisingIdInfo.getId();
                            boolean isLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                            C8416c.f32705d.f32699a = id;
                            bVar.f32701a.m5801a("adv_id", id);
                            C8416c.f32705d.f32700b = Boolean.valueOf(isLimitAdTrackingEnabled);
                            bVar.f32701a.m5800a("limit_ad_tracking", isLimitAdTrackingEnabled);
                        } catch (Exception e) {
                            String unused = C8416c.f32702a;
                            new StringBuilder("SDK encountered unexpected error in trying to set the advertising ID ").append(e.getMessage());
                        }
                    }
                }).start();
            }
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in setting the advertising ID; ").append(e.getMessage());
        }
    }
}
