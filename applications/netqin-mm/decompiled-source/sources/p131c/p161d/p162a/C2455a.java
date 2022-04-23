package p131c.p161d.p162a;

import com.google.android.gms.ads.AdSize;
import com.google.logging.type.LogSeverity;
@Deprecated
/* renamed from: c.d.a.a */
/* loaded from: classes-dex2jar.jar:c/d/a/a.class */
public final class C2455a {

    /* renamed from: b */
    public static final C2455a f9407b = new C2455a(-1, -2, "mb");

    /* renamed from: c */
    public static final C2455a f9408c = new C2455a(320, 50, "mb");

    /* renamed from: d */
    public static final C2455a f9409d = new C2455a(LogSeverity.NOTICE_VALUE, 250, "as");

    /* renamed from: e */
    public static final C2455a f9410e = new C2455a(468, 60, "as");

    /* renamed from: f */
    public static final C2455a f9411f = new C2455a(728, 90, "as");

    /* renamed from: g */
    public static final C2455a f9412g = new C2455a(160, LogSeverity.CRITICAL_VALUE, "as");

    /* renamed from: a */
    public final AdSize f9413a;

    public C2455a(int i, int i2, String str) {
        this(new AdSize(i, i2));
    }

    public C2455a(AdSize adSize) {
        this.f9413a = adSize;
    }

    /* renamed from: a */
    public final int m29722a() {
        return this.f9413a.m18137a();
    }

    /* renamed from: b */
    public final int m29721b() {
        return this.f9413a.m18133b();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2455a)) {
            return false;
        }
        return this.f9413a.equals(((C2455a) obj).f9413a);
    }

    public final int hashCode() {
        return this.f9413a.hashCode();
    }

    public final String toString() {
        return this.f9413a.toString();
    }
}
