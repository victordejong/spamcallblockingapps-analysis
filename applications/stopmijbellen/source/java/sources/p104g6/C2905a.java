package p104g6;

import android.util.Log;
import java.util.Locale;
import java.util.Objects;
/* renamed from: g6.a */
/* loaded from: classes-dex2jar.jar:g6/a.class */
public class C2905a {

    /* renamed from: c */
    public static volatile C2905a f9791c;

    /* renamed from: a */
    public final C2906b f9792a;

    /* renamed from: b */
    public boolean f9793b = false;

    public C2905a() {
        C2906b c2906b;
        synchronized (C2906b.class) {
            try {
                if (C2906b.f9794a == null) {
                    C2906b.f9794a = new C2906b();
                }
                c2906b = C2906b.f9794a;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f9792a = c2906b;
    }

    /* renamed from: b */
    public static C2905a m2869b() {
        if (f9791c == null) {
            synchronized (C2905a.class) {
                try {
                    if (f9791c == null) {
                        f9791c = new C2905a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9791c;
    }

    /* renamed from: a */
    public void m2870a(String str) {
        if (this.f9793b) {
            Objects.requireNonNull(this.f9792a);
        }
    }

    /* renamed from: c */
    public void m2868c(String str) {
        if (this.f9793b) {
            Objects.requireNonNull(this.f9792a);
            Log.i("FirebasePerformance", str);
        }
    }

    /* renamed from: d */
    public void m2867d(String str, Object... objArr) {
        if (this.f9793b) {
            C2906b c2906b = this.f9792a;
            String format = String.format(Locale.ENGLISH, str, objArr);
            Objects.requireNonNull(c2906b);
            Log.i("FirebasePerformance", format);
        }
    }

    /* renamed from: e */
    public void m2866e(String str) {
        if (this.f9793b) {
            Objects.requireNonNull(this.f9792a);
            Log.w("FirebasePerformance", str);
        }
    }

    /* renamed from: f */
    public void m2865f(String str, Object... objArr) {
        if (this.f9793b) {
            C2906b c2906b = this.f9792a;
            String format = String.format(Locale.ENGLISH, str, objArr);
            Objects.requireNonNull(c2906b);
            Log.w("FirebasePerformance", format);
        }
    }
}
