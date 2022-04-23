package com.google.android.gms.ads.nativead;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.C1500s;
/* renamed from: com.google.android.gms.ads.nativead.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/b.class */
public final class C1491b {

    /* renamed from: a */
    private final boolean f5683a;

    /* renamed from: b */
    private final int f5684b;

    /* renamed from: c */
    private final boolean f5685c;

    /* renamed from: d */
    private final int f5686d;

    /* renamed from: e */
    private final C1500s f5687e;

    /* renamed from: f */
    private final boolean f5688f;

    /* renamed from: com.google.android.gms.ads.nativead.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/b$a.class */
    public static final class C1492a {

        /* renamed from: d */
        private C1500s f5692d;

        /* renamed from: a */
        private boolean f5689a = false;

        /* renamed from: b */
        private int f5690b = 0;

        /* renamed from: c */
        private boolean f5691c = false;

        /* renamed from: e */
        private int f5693e = 1;

        /* renamed from: f */
        private boolean f5694f = false;

        @RecentlyNonNull
        /* renamed from: a */
        public C1491b m8597a() {
            return new C1491b(this, null);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C1492a m8596b(int i) {
            this.f5693e = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C1492a m8595c(int i) {
            this.f5690b = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C1492a m8594d(boolean z) {
            this.f5694f = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C1492a m8593e(boolean z) {
            this.f5691c = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: f */
        public C1492a m8592f(boolean z) {
            this.f5689a = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: g */
        public C1492a m8591g(@RecentlyNonNull C1500s sVar) {
            this.f5692d = sVar;
            return this;
        }
    }

    /* synthetic */ C1491b(C1492a aVar, C1493c cVar) {
        this.f5683a = aVar.f5689a;
        this.f5684b = aVar.f5690b;
        this.f5685c = aVar.f5691c;
        this.f5686d = aVar.f5693e;
        this.f5687e = aVar.f5692d;
        this.f5688f = aVar.f5694f;
    }

    /* renamed from: a */
    public int m8603a() {
        return this.f5686d;
    }

    /* renamed from: b */
    public int m8602b() {
        return this.f5684b;
    }

    @RecentlyNullable
    /* renamed from: c */
    public C1500s m8601c() {
        return this.f5687e;
    }

    /* renamed from: d */
    public boolean m8600d() {
        return this.f5685c;
    }

    /* renamed from: e */
    public boolean m8599e() {
        return this.f5683a;
    }

    /* renamed from: f */
    public final boolean m8598f() {
        return this.f5688f;
    }
}
