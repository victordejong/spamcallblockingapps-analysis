package p143k2;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdSize;
@Deprecated
/* renamed from: k2.b */
/* loaded from: classes-dex2jar.jar:k2/b.class */
public final class C3321b {
    @RecentlyNonNull

    /* renamed from: b */
    public static final C3321b f11246b = new C3321b(-1, -2, "mb");
    @RecentlyNonNull

    /* renamed from: c */
    public static final C3321b f11247c = new C3321b(320, 50, "mb");
    @RecentlyNonNull

    /* renamed from: d */
    public static final C3321b f11248d = new C3321b(300, 250, "as");
    @RecentlyNonNull

    /* renamed from: e */
    public static final C3321b f11249e = new C3321b(468, 60, "as");
    @RecentlyNonNull

    /* renamed from: f */
    public static final C3321b f11250f = new C3321b(728, 90, "as");
    @RecentlyNonNull

    /* renamed from: g */
    public static final C3321b f11251g = new C3321b(160, 600, "as");

    /* renamed from: a */
    public final AdSize f11252a;

    public C3321b(int i, int i2, String str) {
        this.f11252a = new AdSize(i, i2);
    }

    public C3321b(@RecentlyNonNull AdSize adSize) {
        this.f11252a = adSize;
    }

    public boolean equals(@RecentlyNonNull Object obj) {
        if (!(obj instanceof C3321b)) {
            return false;
        }
        return this.f11252a.equals(((C3321b) obj).f11252a);
    }

    public int hashCode() {
        return this.f11252a.hashCode();
    }

    @RecentlyNonNull
    public String toString() {
        return this.f11252a.toString();
    }
}
