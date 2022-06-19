package com.google.android.gms.ads.nativead;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.C5848t;
/* renamed from: com.google.android.gms.ads.nativead.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/b.class */
public final class C5800b {

    /* renamed from: a */
    private final boolean f18676a;

    /* renamed from: b */
    private final int f18677b;

    /* renamed from: c */
    private final boolean f18678c;

    /* renamed from: d */
    private final int f18679d;

    /* renamed from: e */
    private final C5848t f18680e;

    /* renamed from: f */
    private final boolean f18681f;

    /* renamed from: com.google.android.gms.ads.nativead.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/b$a.class */
    public static final class C5801a {

        /* renamed from: d */
        private C5848t f18685d;

        /* renamed from: a */
        private boolean f18682a = false;

        /* renamed from: b */
        private int f18683b = 0;

        /* renamed from: c */
        private boolean f18684c = false;

        /* renamed from: e */
        private int f18686e = 1;

        /* renamed from: f */
        private boolean f18687f = false;

        @RecentlyNonNull
        /* renamed from: a */
        public C5800b m17841a() {
            return new C5800b(this, null);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C5801a m17840b(int i) {
            this.f18686e = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C5801a m17839c(int i) {
            this.f18683b = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C5801a m17838d(boolean z) {
            this.f18687f = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C5801a m17837e(boolean z) {
            this.f18684c = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: f */
        public C5801a m17836f(boolean z) {
            this.f18682a = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: g */
        public C5801a m17835g(@RecentlyNonNull C5848t c5848t) {
            this.f18685d = c5848t;
            return this;
        }
    }

    /* synthetic */ C5800b(C5801a c5801a, C5802c c5802c) {
        this.f18676a = c5801a.f18682a;
        this.f18677b = c5801a.f18683b;
        this.f18678c = c5801a.f18684c;
        this.f18679d = c5801a.f18686e;
        this.f18680e = c5801a.f18685d;
        this.f18681f = c5801a.f18687f;
    }

    /* renamed from: a */
    public int m17847a() {
        return this.f18679d;
    }

    /* renamed from: b */
    public int m17846b() {
        return this.f18677b;
    }

    @RecentlyNullable
    /* renamed from: c */
    public C5848t m17845c() {
        return this.f18680e;
    }

    /* renamed from: d */
    public boolean m17844d() {
        return this.f18678c;
    }

    /* renamed from: e */
    public boolean m17843e() {
        return this.f18676a;
    }

    /* renamed from: f */
    public final boolean m17842f() {
        return this.f18681f;
    }
}
