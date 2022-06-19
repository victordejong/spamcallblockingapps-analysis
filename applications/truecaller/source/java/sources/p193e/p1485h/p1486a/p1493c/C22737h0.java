package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: e.h.a.c.h0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/h0.class */
public class C22737h0 {

    /* renamed from: b */
    public static String f62953b;

    /* renamed from: c */
    public static String f62954c;

    /* renamed from: d */
    public static String f62955d;

    /* renamed from: e */
    public static boolean f62956e;

    /* renamed from: f */
    public static boolean f62957f;

    /* renamed from: g */
    public static String f62958g;

    /* renamed from: h */
    public static C22737h0 f62959h;

    /* renamed from: i */
    public static String f62960i;

    /* renamed from: j */
    public static boolean f62961j;

    /* renamed from: k */
    public static boolean f62962k;

    /* renamed from: l */
    public static boolean f62963l;

    /* renamed from: m */
    public static String f62964m;

    /* renamed from: n */
    public static String f62965n;

    /* renamed from: o */
    public static boolean f62966o;

    /* renamed from: p */
    public static String f62967p;

    /* renamed from: a */
    public final String[] f62968a;

    public C22737h0(Context context) {
        Bundle bundle;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (Throwable th) {
            bundle = null;
        }
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (f62953b == null) {
            f62953b = m7854a(bundle2, "CLEVERTAP_ACCOUNT_ID");
        }
        if (f62954c == null) {
            f62954c = m7854a(bundle2, "CLEVERTAP_TOKEN");
        }
        if (f62955d == null) {
            f62955d = m7854a(bundle2, "CLEVERTAP_REGION");
        }
        f62958g = m7854a(bundle2, "CLEVERTAP_NOTIFICATION_ICON");
        f62956e = "1".equals(m7854a(bundle2, "CLEVERTAP_USE_GOOGLE_AD_ID"));
        f62957f = "1".equals(m7854a(bundle2, "CLEVERTAP_DISABLE_APP_LAUNCHED"));
        f62960i = m7854a(bundle2, "CLEVERTAP_INAPP_EXCLUDE");
        f62961j = "1".equals(m7854a(bundle2, "CLEVERTAP_SSL_PINNING"));
        f62962k = "1".equals(m7854a(bundle2, "CLEVERTAP_BACKGROUND_SYNC"));
        f62963l = "1".equals(m7854a(bundle2, "CLEVERTAP_USE_CUSTOM_ID"));
        String m7854a = m7854a(bundle2, "FCM_SENDER_ID");
        f62964m = m7854a;
        if (m7854a != null) {
            f62964m = m7854a.replace("id:", "");
        }
        f62965n = m7854a(bundle2, "CLEVERTAP_APP_PACKAGE");
        f62966o = "1".equals(m7854a(bundle2, "CLEVERTAP_BETA"));
        if (f62967p == null) {
            f62967p = m7854a(bundle2, "CLEVERTAP_INTENT_SERVICE");
        }
        m7854a(bundle2, "CLEVERTAP_XIAOMI_APP_KEY");
        m7854a(bundle2, "CLEVERTAP_XIAOMI_APP_ID");
        String m7854a2 = m7854a(bundle2, "CLEVERTAP_IDENTIFIER");
        this.f62968a = !TextUtils.isEmpty(m7854a2) ? m7854a2.split(",") : AbstractC22839u.f63388d;
    }

    /* renamed from: a */
    public static String m7854a(Bundle bundle, String str) {
        String str2;
        Object obj;
        try {
            obj = bundle.get(str);
        } catch (Throwable th) {
        }
        if (obj != null) {
            str2 = obj.toString();
            return str2;
        }
        str2 = null;
        return str2;
    }

    /* renamed from: b */
    public static C22737h0 m7853b(Context context) {
        C22737h0 c22737h0;
        synchronized (C22737h0.class) {
            try {
                if (f62959h == null) {
                    f62959h = new C22737h0(context);
                }
                c22737h0 = f62959h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c22737h0;
    }
}
