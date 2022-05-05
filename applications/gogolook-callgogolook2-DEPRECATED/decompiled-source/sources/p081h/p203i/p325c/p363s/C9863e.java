package p081h.p203i.p325c.p363s;

import android.content.Context;
import android.content.SharedPreferences;
import gogolook.callgogolook2.p074ad.AdUtils;
/* renamed from: h.i.c.s.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/s/e.class */
public class C9863e {

    /* renamed from: b */
    public static C9863e f22340b;

    /* renamed from: a */
    public final SharedPreferences f22341a;

    public C9863e(Context context) {
        this.f22341a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
    }

    /* renamed from: a */
    public static C9863e m14067a(Context context) {
        C9863e eVar;
        synchronized (C9863e.class) {
            try {
                if (f22340b == null) {
                    f22340b = new C9863e(context);
                }
                eVar = f22340b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public boolean m14068a(long j) {
        boolean a;
        synchronized (this) {
            a = m14066a("fire-global", j);
        }
        return a;
    }

    /* renamed from: a */
    public boolean m14066a(String str, long j) {
        synchronized (this) {
            if (!this.f22341a.contains(str)) {
                this.f22341a.edit().putLong(str, j).apply();
                return true;
            } else if (j - this.f22341a.getLong(str, -1L) < AdUtils.ONE_DAY) {
                return false;
            } else {
                this.f22341a.edit().putLong(str, j).apply();
                return true;
            }
        }
    }
}
