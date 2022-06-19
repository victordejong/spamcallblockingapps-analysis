package p081e6;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.ExecutorService;
import p104g6.C2905a;
import p241t4.C4392c;
import p305z4.RunnableC5094n;
/* renamed from: e6.t */
/* loaded from: classes-dex2jar.jar:e6/t.class */
public class C2603t {

    /* renamed from: c */
    public static final C2905a f9030c = C2905a.m2869b();

    /* renamed from: d */
    public static C2603t f9031d;

    /* renamed from: a */
    public volatile SharedPreferences f9032a;

    /* renamed from: b */
    public final ExecutorService f9033b;

    public C2603t(ExecutorService executorService) {
        this.f9033b = executorService;
    }

    /* renamed from: a */
    public final Context m3396a() {
        try {
            C4392c.m973b();
            C4392c m973b = C4392c.m973b();
            m973b.m974a();
            return m973b.f13688a;
        } catch (IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: b */
    public void m3395b(Context context) {
        synchronized (this) {
            if (this.f9032a == null && context != null) {
                this.f9033b.execute(new RunnableC5094n(this, context, 1));
            }
        }
    }

    /* renamed from: c */
    public boolean m3394c(String str, float f) {
        if (this.f9032a == null) {
            m3395b(m3396a());
            if (this.f9032a == null) {
                return false;
            }
        }
        this.f9032a.edit().putFloat(str, f).apply();
        return true;
    }

    /* renamed from: d */
    public boolean m3393d(String str, long j) {
        if (this.f9032a == null) {
            m3395b(m3396a());
            if (this.f9032a == null) {
                return false;
            }
        }
        this.f9032a.edit().putLong(str, j).apply();
        return true;
    }

    /* renamed from: e */
    public boolean m3392e(String str, String str2) {
        if (this.f9032a == null) {
            m3395b(m3396a());
            if (this.f9032a == null) {
                return false;
            }
        }
        if (str2 == null) {
            this.f9032a.edit().remove(str).apply();
            return true;
        }
        this.f9032a.edit().putString(str, str2).apply();
        return true;
    }
}
