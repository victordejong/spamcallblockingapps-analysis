package com.google.android.gms.ads.formats;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.C5848t;
@Deprecated
/* renamed from: com.google.android.gms.ads.formats.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/c.class */
public final class C5608c {

    /* renamed from: a */
    private final boolean f18253a;

    /* renamed from: b */
    private final int f18254b;

    /* renamed from: c */
    private final int f18255c;

    /* renamed from: d */
    private final boolean f18256d;

    /* renamed from: e */
    private final int f18257e;

    /* renamed from: f */
    private final C5848t f18258f;

    /* renamed from: g */
    private final boolean f18259g;

    /* renamed from: com.google.android.gms.ads.formats.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/c$a.class */
    public static final class C5609a {

        /* renamed from: e */
        private C5848t f18264e;

        /* renamed from: a */
        private boolean f18260a = false;

        /* renamed from: b */
        private int f18261b = -1;

        /* renamed from: c */
        private int f18262c = 0;

        /* renamed from: d */
        private boolean f18263d = false;

        /* renamed from: f */
        private int f18265f = 1;

        /* renamed from: g */
        private boolean f18266g = false;

        @RecentlyNonNull
        /* renamed from: a */
        public C5608c m18250a() {
            return new C5608c(this, null);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C5609a m18249b(int i) {
            this.f18265f = i;
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: c */
        public C5609a m18248c(int i) {
            this.f18261b = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C5609a m18247d(int i) {
            this.f18262c = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C5609a m18246e(boolean z) {
            this.f18266g = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: f */
        public C5609a m18245f(boolean z) {
            this.f18263d = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: g */
        public C5609a m18244g(boolean z) {
            this.f18260a = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: h */
        public C5609a m18243h(@RecentlyNonNull C5848t c5848t) {
            this.f18264e = c5848t;
            return this;
        }
    }

    /* synthetic */ C5608c(C5609a c5609a, C5616g c5616g) {
        this.f18253a = c5609a.f18260a;
        this.f18254b = c5609a.f18261b;
        this.f18255c = c5609a.f18262c;
        this.f18256d = c5609a.f18263d;
        this.f18257e = c5609a.f18265f;
        this.f18258f = c5609a.f18264e;
        this.f18259g = c5609a.f18266g;
    }

    /* renamed from: a */
    public int m18257a() {
        return this.f18257e;
    }

    @Deprecated
    /* renamed from: b */
    public int m18256b() {
        return this.f18254b;
    }

    /* renamed from: c */
    public int m18255c() {
        return this.f18255c;
    }

    @RecentlyNullable
    /* renamed from: d */
    public C5848t m18254d() {
        return this.f18258f;
    }

    /* renamed from: e */
    public boolean m18253e() {
        return this.f18256d;
    }

    /* renamed from: f */
    public boolean m18252f() {
        return this.f18253a;
    }

    /* renamed from: g */
    public final boolean m18251g() {
        return this.f18259g;
    }
}
