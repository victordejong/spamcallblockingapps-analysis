package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Objects;
import java.util.UUID;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22712a;
import p193e.p1485h.p1486a.p1493c.p1504t0.C22838f;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22892i;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.b0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/b0.class */
public class C22718b0 {

    /* renamed from: l */
    public static int f62869l = -1;

    /* renamed from: c */
    public C22719a f62872c;

    /* renamed from: d */
    public final CleverTapInstanceConfig f62873d;

    /* renamed from: e */
    public final Context f62874e;

    /* renamed from: j */
    public final C22858w f62879j;

    /* renamed from: a */
    public final Object f62870a = new Object();

    /* renamed from: b */
    public boolean f62871b = false;

    /* renamed from: f */
    public final Object f62875f = new Object();

    /* renamed from: g */
    public boolean f62876g = false;

    /* renamed from: h */
    public String f62877h = null;

    /* renamed from: i */
    public boolean f62878i = false;

    /* renamed from: k */
    public final ArrayList<C22712a> f62880k = new ArrayList<>();

    /* renamed from: e.h.a.c.b0$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/b0$a.class */
    public class C22719a {

        /* renamed from: a */
        public final String f62881a;

        /* renamed from: b */
        public final int f62882b;

        /* renamed from: c */
        public final String f62883c;

        /* renamed from: d */
        public final String f62884d;

        /* renamed from: e */
        public final int f62885e;

        /* renamed from: f */
        public final double f62886f;

        /* renamed from: g */
        public final String f62887g;

        /* renamed from: h */
        public final String f62888h;

        /* renamed from: i */
        public final String f62889i;

        /* renamed from: j */
        public final boolean f62890j;

        /* renamed from: k */
        public final String f62891k;

        /* renamed from: l */
        public final String f62892l;

        /* renamed from: m */
        public final int f62893m;

        /* renamed from: n */
        public final String f62894n;

        /* renamed from: o */
        public final double f62895o;

        /* renamed from: p */
        public String f62896p;

        /* renamed from: q */
        public final /* synthetic */ C22718b0 f62897q;

        /* JADX WARN: Can't wrap try/catch for region: R(29:2|(2:98|3)|6|(4:94|7|8|(1:10))|11|12|(2:96|13)|16|(1:18)(2:19|(1:21)(1:22))|23|90|24|(16:26|28|(1:30)(3:31|(1:33)(1:34)|35)|36|(2:38|(1:40)(1:41))|42|(1:44)(3:45|(1:47)(1:48)|49)|50|(2:52|(1:54)(1:55))|56|(1:58)(2:59|(1:61)(1:62))|63|92|64|67|(4:69|(2:71|(2:73|(2:75|(2:77|(1:79)(1:80))(1:81))(1:82))(1:83))(1:84)|85|86)(1:100))|27|28|(0)(0)|36|(0)|42|(0)(0)|50|(0)|56|(0)(0)|63|92|64|67|(0)(0)) */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0362, code lost:
            r6 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x0363, code lost:
            r6.printStackTrace();
            r18 = true;
         */
        /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x01ce  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x021d  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0224  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x02b9  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0308  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x030f  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0376  */
        /* JADX WARN: Type inference failed for: r0v123, types: [double] */
        /* JADX WARN: Type inference failed for: r0v172, types: [double] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C22719a(p193e.p1485h.p1486a.p1493c.C22718b0 r6) {
            /*
                Method dump skipped, instructions count: 996
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.C22718b0.C22719a.<init>(e.h.a.c.b0):void");
        }
    }

    public C22718b0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, String str, C22858w c22858w) {
        this.f62874e = context;
        this.f62873d = cleverTapInstanceConfig;
        this.f62879j = c22858w;
        C22895k m7643a = C22882a.m7644a(cleverTapInstanceConfig).m7643a();
        m7643a.f63554c.execute(new RunnableC22894j(m7643a, "getDeviceCachedInfo", new CallableC22881y(this)));
        C22895k m7643a2 = C22882a.m7644a(cleverTapInstanceConfig).m7643a();
        C22896z c22896z = new C22896z(this);
        m7643a2.f63557f.add(new C22892i(m7643a2.f63553b, c22896z));
        m7643a2.f63554c.execute(new RunnableC22894j(m7643a2, "initDeviceID", new CallableC22711a0(this, str)));
        C22128a.m8672R0(new StringBuilder(), cleverTapInstanceConfig.f2240a, ":async_deviceID", m7913g(), "DeviceInfo() called");
    }

    /* renamed from: a */
    public final String m7919a() {
        synchronized (this.f62875f) {
            if (!this.f62873d.f2252m) {
                return C26232y.m2281y0(this.f62874e, m7909k(), null);
            }
            String m2281y0 = C26232y.m2281y0(this.f62874e, m7909k(), null);
            if (m2281y0 == null) {
                m2281y0 = C26232y.m2281y0(this.f62874e, "deviceId", null);
            }
            return m2281y0;
        }
    }

    /* renamed from: b */
    public void m7918b(String str) {
        if (C22741j0.m7836n(str)) {
            C22735g0 m7913g = m7913g();
            String str2 = this.f62873d.f2240a;
            int i = m7913g.f62950a;
            m7917c("__h" + str);
            return;
        }
        synchronized (this) {
            if (m7908l() == null) {
                synchronized (this.f62875f) {
                    String str3 = "__i" + UUID.randomUUID().toString().replace(StringConstant.DASH, "");
                    if (str3.trim().length() > 2) {
                        m7902r(str3);
                    } else {
                        m7913g().m7855b(this.f62873d.f2240a, "Unable to generate fallback error device ID");
                    }
                }
            }
        }
        try {
            C26232y.m2297u0(this.f62874e).edit().remove(m7909k()).apply();
        } catch (Throwable th) {
        }
        m7904p(21, str, m7908l());
        C22735g0 m7913g2 = m7913g();
        String str4 = this.f62873d.f2240a;
        int i2 = m7913g2.f62950a;
    }

    /* renamed from: c */
    public void m7917c(String str) {
        C22735g0 m7913g = m7913g();
        String str2 = this.f62873d.f2240a;
        m7913g.m7855b(str2, "Force updating the device ID to " + str);
        synchronized (this.f62875f) {
            C26232y.m2466F1(this.f62874e, m7909k(), str);
        }
    }

    /* renamed from: d */
    public final void m7916d() {
        String str;
        synchronized (this) {
            m7913g().m7855b(this.f62873d.f2240a + ":async_deviceID", "generateDeviceID() called!");
            String m7907m = m7907m();
            if (m7907m != null) {
                str = "__g" + m7907m;
            } else {
                synchronized (this.f62875f) {
                    str = m7915e();
                }
            }
            m7917c(str);
            m7913g().m7855b(this.f62873d.f2240a + ":async_deviceID", "generateDeviceID() done executing!");
        }
    }

    /* renamed from: e */
    public final String m7915e() {
        StringBuilder m8728C = C22128a.m8728C("__");
        m8728C.append(UUID.randomUUID().toString().replace(StringConstant.DASH, ""));
        return m8728C.toString();
    }

    /* renamed from: f */
    public JSONObject m7914f() {
        boolean z = false;
        try {
            if (m7907m() != null) {
                z = new C22838f(this.f62874e, this.f62873d, this).m7716b();
            }
            Objects.requireNonNull(this.f62879j);
            return C26232y.m2412T(this, null, this.f62876g, z);
        } catch (Throwable th) {
            C22735g0 m42081b = this.f62873d.m42081b();
            String str = this.f62873d.f2240a;
            Objects.requireNonNull(m42081b);
            return new JSONObject();
        }
    }

    /* renamed from: g */
    public final C22735g0 m7913g() {
        return this.f62873d.m42081b();
    }

    /* renamed from: h */
    public String m7912h() {
        return m7911i().f62884d;
    }

    /* renamed from: i */
    public final C22719a m7911i() {
        if (this.f62872c == null) {
            this.f62872c = new C22719a(this);
        }
        return this.f62872c;
    }

    /* renamed from: j */
    public String m7910j() {
        return m7919a() != null ? m7919a() : m7908l();
    }

    /* renamed from: k */
    public final String m7909k() {
        StringBuilder m8728C = C22128a.m8728C("deviceId:");
        m8728C.append(this.f62873d.f2240a);
        return m8728C.toString();
    }

    /* renamed from: l */
    public final String m7908l() {
        Context context = this.f62874e;
        StringBuilder m8728C = C22128a.m8728C("fallbackId:");
        m8728C.append(this.f62873d.f2240a);
        return C26232y.m2281y0(context, m8728C.toString(), null);
    }

    /* renamed from: m */
    public String m7907m() {
        String str;
        synchronized (this.f62870a) {
            str = this.f62877h;
        }
        return str;
    }

    /* renamed from: n */
    public int m7906n() {
        return m7911i().f62893m;
    }

    /* renamed from: o */
    public boolean m7905o() {
        return m7910j() != null && m7910j().startsWith("__i");
    }

    /* renamed from: p */
    public final String m7904p(int i, String... strArr) {
        C22712a m2468F = C26232y.m2468F(514, i, strArr);
        this.f62880k.add(m2468F);
        return m2468F.f62843b;
    }

    /* renamed from: q */
    public void m7903q() {
        String m7910j = m7910j();
        String m8543z2 = m7910j == null ? null : C22128a.m8543z2("OptOut:", m7910j);
        if (m8543z2 == null) {
            this.f62873d.m42081b().m7855b(this.f62873d.f2240a, "Unable to set current user OptOut state from storage: storage key is null");
            return;
        }
        boolean m2383a0 = C26232y.m2383a0(this.f62874e, this.f62873d, m8543z2);
        C22858w c22858w = this.f62879j;
        synchronized (c22858w.f63464n) {
            c22858w.f63455e = m2383a0;
        }
        C22735g0 m42081b = this.f62873d.m42081b();
        String str = this.f62873d.f2240a;
        m42081b.m7855b(str, "Set current user OptOut state from storage to: " + m2383a0 + " for key: " + m8543z2);
    }

    /* renamed from: r */
    public final void m7902r(String str) {
        C22735g0 m7913g = m7913g();
        String str2 = this.f62873d.f2240a;
        m7913g.m7855b(str2, "Updating the fallback id - " + str);
        Context context = this.f62874e;
        StringBuilder m8728C = C22128a.m8728C("fallbackId:");
        m8728C.append(this.f62873d.f2240a);
        C26232y.m2466F1(context, m8728C.toString(), str);
    }
}
