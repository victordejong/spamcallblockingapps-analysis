package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import android.content.SharedPreferences;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22714c;
/* renamed from: e.h.a.c.i0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/i0.class */
public class C22739i0 extends AbstractC22744l {

    /* renamed from: a */
    public long f62972a = 0;

    /* renamed from: b */
    public final C22858w f62973b;

    /* renamed from: c */
    public final CleverTapInstanceConfig f62974c;

    /* renamed from: d */
    public final C22731f0 f62975d;

    /* renamed from: e */
    public final C22714c f62976e;

    public C22739i0(CleverTapInstanceConfig cleverTapInstanceConfig, C22858w c22858w, C22714c c22714c, C22731f0 c22731f0) {
        this.f62974c = cleverTapInstanceConfig;
        this.f62973b = c22858w;
        this.f62976e = c22714c;
        this.f62975d = c22731f0;
    }

    /* renamed from: a */
    public void m7852a() {
        C22858w c22858w = this.f62973b;
        c22858w.f63454d = 0;
        c22858w.m7671d(false);
        C22858w c22858w2 = this.f62973b;
        if (c22858w2.f63457g) {
            c22858w2.f63457g = false;
        }
        this.f62974c.m42081b().m7855b(this.f62974c.f2240a, "Session destroyed; Session ID is now 0");
        C22858w c22858w3 = this.f62973b;
        synchronized (c22858w3) {
            c22858w3.f63466p = null;
        }
        C22858w c22858w4 = this.f62973b;
        synchronized (c22858w4) {
            c22858w4.f63467q = null;
        }
        C22858w c22858w5 = this.f62973b;
        synchronized (c22858w5) {
            c22858w5.f63468r = null;
        }
        C22858w c22858w6 = this.f62973b;
        synchronized (c22858w6) {
            c22858w6.f63469s = null;
        }
    }

    /* renamed from: b */
    public void m7851b(Context context) {
        if (!this.f62973b.m7673b()) {
            this.f62973b.f63456f = true;
            C22714c c22714c = this.f62976e;
            if (c22714c != null) {
                c22714c.f62851a = null;
            }
            this.f62973b.f63454d = (int) (System.currentTimeMillis() / 1000);
            C22735g0 m42081b = this.f62974c.m42081b();
            String str = this.f62974c.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Session created with ID: ");
            m8728C.append(this.f62973b.f63454d);
            m42081b.m7855b(str, m8728C.toString());
            SharedPreferences m2297u0 = C26232y.m2297u0(context);
            int m2325n0 = C26232y.m2325n0(context, this.f62974c, "lastSessionId", 0);
            int m2325n02 = C26232y.m2325n0(context, this.f62974c, "sexe", 0);
            if (m2325n02 > 0) {
                this.f62973b.f63463m = m2325n02 - m2325n0;
            }
            C22735g0 m42081b2 = this.f62974c.m42081b();
            String str2 = this.f62974c.f2240a;
            StringBuilder m8728C2 = C22128a.m8728C("Last session length: ");
            m8728C2.append(this.f62973b.f63463m);
            m8728C2.append(" seconds");
            m42081b2.m7855b(str2, m8728C2.toString());
            if (m2325n0 == 0) {
                this.f62973b.f63457g = true;
            }
            try {
                m2297u0.edit().putInt(C26232y.m2398W1(this.f62974c, "lastSessionId"), this.f62973b.f63454d).apply();
            } catch (Throwable th) {
            }
        }
    }
}
