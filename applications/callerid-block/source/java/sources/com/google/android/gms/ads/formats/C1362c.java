package com.google.android.gms.ads.formats;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.C1500s;
@Deprecated
/* renamed from: com.google.android.gms.ads.formats.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/c.class */
public final class C1362c {

    /* renamed from: a */
    private final boolean f5471a;

    /* renamed from: b */
    private final int f5472b;

    /* renamed from: c */
    private final int f5473c;

    /* renamed from: d */
    private final boolean f5474d;

    /* renamed from: e */
    private final int f5475e;

    /* renamed from: f */
    private final C1500s f5476f;

    /* renamed from: g */
    private final boolean f5477g;

    /* renamed from: com.google.android.gms.ads.formats.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/c$a.class */
    public static final class C1363a {

        /* renamed from: e */
        private C1500s f5482e;

        /* renamed from: a */
        private boolean f5478a = false;

        /* renamed from: b */
        private int f5479b = -1;

        /* renamed from: c */
        private int f5480c = 0;

        /* renamed from: d */
        private boolean f5481d = false;

        /* renamed from: f */
        private int f5483f = 1;

        /* renamed from: g */
        private boolean f5484g = false;

        @RecentlyNonNull
        /* renamed from: a */
        public C1362c m8994a() {
            return new C1362c(this, null);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C1363a m8993b(int i) {
            this.f5483f = i;
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: c */
        public C1363a m8992c(int i) {
            this.f5479b = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C1363a m8991d(int i) {
            this.f5480c = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C1363a m8990e(boolean z) {
            this.f5484g = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: f */
        public C1363a m8989f(boolean z) {
            this.f5481d = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: g */
        public C1363a m8988g(boolean z) {
            this.f5478a = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: h */
        public C1363a m8987h(@RecentlyNonNull C1500s c1500s) {
            this.f5482e = c1500s;
            return this;
        }
    }

    /* synthetic */ C1362c(C1363a c1363a, C1370g c1370g) {
        this.f5471a = c1363a.f5478a;
        this.f5472b = c1363a.f5479b;
        this.f5473c = c1363a.f5480c;
        this.f5474d = c1363a.f5481d;
        this.f5475e = c1363a.f5483f;
        this.f5476f = c1363a.f5482e;
        this.f5477g = c1363a.f5484g;
    }

    /* renamed from: a */
    public int m9001a() {
        return this.f5475e;
    }

    @Deprecated
    /* renamed from: b */
    public int m9000b() {
        return this.f5472b;
    }

    /* renamed from: c */
    public int m8999c() {
        return this.f5473c;
    }

    @RecentlyNullable
    /* renamed from: d */
    public C1500s m8998d() {
        return this.f5476f;
    }

    /* renamed from: e */
    public boolean m8997e() {
        return this.f5474d;
    }

    /* renamed from: f */
    public boolean m8996f() {
        return this.f5471a;
    }

    /* renamed from: g */
    public final boolean m8995g() {
        return this.f5477g;
    }
}
