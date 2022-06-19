package com.google.ads;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C5605f;
@Deprecated
/* renamed from: com.google.ads.a */
/* loaded from: classes-dex2jar.jar:com/google/ads/a.class */
public final class C4584a {
    @RecentlyNonNull

    /* renamed from: a */
    public static final C4584a f13972a = new C4584a(-1, -2, "mb");
    @RecentlyNonNull

    /* renamed from: b */
    public static final C4584a f13973b = new C4584a(320, 50, "mb");
    @RecentlyNonNull

    /* renamed from: c */
    public static final C4584a f13974c = new C4584a(300, 250, "as");
    @RecentlyNonNull

    /* renamed from: d */
    public static final C4584a f13975d = new C4584a(468, 60, "as");
    @RecentlyNonNull

    /* renamed from: e */
    public static final C4584a f13976e = new C4584a(728, 90, "as");
    @RecentlyNonNull

    /* renamed from: f */
    public static final C4584a f13977f = new C4584a(160, 600, "as");

    /* renamed from: g */
    private final C5605f f13978g;

    private C4584a(int i, int i2, String str) {
        this(new C5605f(i, i2));
    }

    public C4584a(@RecentlyNonNull C5605f c5605f) {
        this.f13978g = c5605f;
    }

    /* renamed from: a */
    public int m22188a() {
        return this.f13978g.m18275a();
    }

    /* renamed from: b */
    public int m22187b() {
        return this.f13978g.m18273c();
    }

    public boolean equals(@RecentlyNonNull Object obj) {
        if (!(obj instanceof C4584a)) {
            return false;
        }
        return this.f13978g.equals(((C4584a) obj).f13978g);
    }

    public int hashCode() {
        return this.f13978g.hashCode();
    }

    @RecentlyNonNull
    public String toString() {
        return this.f13978g.toString();
    }
}
