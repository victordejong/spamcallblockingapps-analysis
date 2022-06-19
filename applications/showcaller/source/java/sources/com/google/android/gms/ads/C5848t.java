package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzbis;
/* renamed from: com.google.android.gms.ads.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/t.class */
public final class C5848t {

    /* renamed from: a */
    private final boolean f18795a;

    /* renamed from: b */
    private final boolean f18796b;

    /* renamed from: c */
    private final boolean f18797c;

    /* renamed from: com.google.android.gms.ads.t$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/t$a.class */
    public static final class C5849a {

        /* renamed from: a */
        private boolean f18798a = true;

        /* renamed from: b */
        private boolean f18799b = false;

        /* renamed from: c */
        private boolean f18800c = false;

        @RecentlyNonNull
        /* renamed from: a */
        public C5848t m17760a() {
            return new C5848t(this, null);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C5849a m17759b(boolean z) {
            this.f18798a = z;
            return this;
        }
    }

    /* synthetic */ C5848t(C5849a c5849a, C5602d0 c5602d0) {
        this.f18795a = c5849a.f18798a;
        this.f18796b = c5849a.f18799b;
        this.f18797c = c5849a.f18800c;
    }

    public C5848t(zzbis zzbisVar) {
        this.f18795a = zzbisVar.f33712d;
        this.f18796b = zzbisVar.f33713e;
        this.f18797c = zzbisVar.f33714f;
    }

    /* renamed from: a */
    public boolean m17763a() {
        return this.f18797c;
    }

    /* renamed from: b */
    public boolean m17762b() {
        return this.f18796b;
    }

    /* renamed from: c */
    public boolean m17761c() {
        return this.f18795a;
    }
}
