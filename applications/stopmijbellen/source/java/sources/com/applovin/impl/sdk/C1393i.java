package com.applovin.impl.sdk;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.p055c.C1317e;
/* renamed from: com.applovin.impl.sdk.i */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/i.class */
public class C1393i {

    /* renamed from: a */
    private static final C1394a f5243a = new C1394a("Age Restricted User", C1316d.f4996l);

    /* renamed from: b */
    private static final C1394a f5244b = new C1394a("Has User Consent", C1316d.f4995k);

    /* renamed from: c */
    private static final C1394a f5245c = new C1394a("\"Do Not Sell\"", C1316d.f4997m);

    /* renamed from: com.applovin.impl.sdk.i$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/i$a.class */
    public static class C1394a {

        /* renamed from: a */
        private final String f5246a;

        /* renamed from: b */
        private final C1316d<Boolean> f5247b;

        public C1394a(String str, C1316d<Boolean> c1316d) {
            this.f5246a = str;
            this.f5247b = c1316d;
        }

        /* renamed from: a */
        public Boolean m5570a(Context context) {
            return (Boolean) C1317e.m5801b(this.f5247b, (Object) null, context);
        }

        /* renamed from: a */
        public String m5571a() {
            return this.f5246a;
        }

        /* renamed from: b */
        public String m5568b(Context context) {
            Boolean m5570a = m5570a(context);
            return m5570a != null ? m5570a.toString() : "No value set";
        }
    }

    /* renamed from: a */
    public static C1394a m5580a() {
        return f5243a;
    }

    /* renamed from: a */
    public static String m5579a(Context context) {
        return m5577a(f5243a, context) + m5577a(f5244b, context) + m5577a(f5245c, context);
    }

    /* renamed from: a */
    private static String m5577a(C1394a c1394a, Context context) {
        StringBuilder m8752j = C0082b.m8752j("\n");
        m8752j.append(c1394a.f5246a);
        m8752j.append(" - ");
        m8752j.append(c1394a.m5568b(context));
        return m8752j.toString();
    }

    /* renamed from: a */
    private static boolean m5578a(C1316d<Boolean> c1316d, Boolean bool, Context context) {
        boolean z = false;
        if (context == null) {
            C1479t.m5107i("AppLovinSdk", "Failed to update compliance value for key: " + c1316d);
            return false;
        }
        Boolean bool2 = (Boolean) C1317e.m5801b(c1316d, (Object) null, context);
        C1317e.m5808a(c1316d, bool, context);
        if (bool2 == null) {
            return true;
        }
        if (bool2 != bool) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m5576a(boolean z, Context context) {
        return m5578a(C1316d.f4996l, Boolean.valueOf(z), context);
    }

    /* renamed from: b */
    public static C1394a m5575b() {
        return f5244b;
    }

    /* renamed from: b */
    public static boolean m5574b(boolean z, Context context) {
        return m5578a(C1316d.f4995k, Boolean.valueOf(z), context);
    }

    /* renamed from: c */
    public static C1394a m5573c() {
        return f5245c;
    }

    /* renamed from: c */
    public static boolean m5572c(boolean z, Context context) {
        return m5578a(C1316d.f4997m, Boolean.valueOf(z), context);
    }
}
