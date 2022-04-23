package com.google.ads;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C1359f;
@Deprecated
/* renamed from: com.google.ads.a */
/* loaded from: classes-dex2jar.jar:com/google/ads/a.class */
public final class C1269a {
    @RecentlyNonNull

    /* renamed from: b */
    public static final C1269a f5297b = new C1269a(-1, -2, "mb");
    @RecentlyNonNull

    /* renamed from: c */
    public static final C1269a f5298c = new C1269a(320, 50, "mb");
    @RecentlyNonNull

    /* renamed from: d */
    public static final C1269a f5299d = new C1269a(300, 250, "as");
    @RecentlyNonNull

    /* renamed from: e */
    public static final C1269a f5300e = new C1269a(468, 60, "as");
    @RecentlyNonNull

    /* renamed from: f */
    public static final C1269a f5301f = new C1269a(728, 90, "as");
    @RecentlyNonNull

    /* renamed from: g */
    public static final C1269a f5302g = new C1269a(160, 600, "as");

    /* renamed from: a */
    private final C1359f f5303a;

    private C1269a(int i, int i2, String str) {
        this(new C1359f(i, i2));
    }

    public C1269a(@RecentlyNonNull C1359f fVar) {
        this.f5303a = fVar;
    }

    /* renamed from: a */
    public int m9349a() {
        return this.f5303a.m9020b();
    }

    /* renamed from: b */
    public int m9348b() {
        return this.f5303a.m9018d();
    }

    public boolean equals(@RecentlyNonNull Object obj) {
        if (!(obj instanceof C1269a)) {
            return false;
        }
        return this.f5303a.equals(((C1269a) obj).f5303a);
    }

    public int hashCode() {
        return this.f5303a.hashCode();
    }

    @RecentlyNonNull
    public String toString() {
        return this.f5303a.toString();
    }
}
