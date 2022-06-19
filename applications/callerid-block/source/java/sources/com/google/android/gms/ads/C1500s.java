package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzady;
/* renamed from: com.google.android.gms.ads.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/s.class */
public final class C1500s {

    /* renamed from: a */
    private final boolean f5709a;

    /* renamed from: b */
    private final boolean f5710b;

    /* renamed from: c */
    private final boolean f5711c;

    /* renamed from: com.google.android.gms.ads.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/s$a.class */
    public static final class C1501a {

        /* renamed from: a */
        private boolean f5712a = true;

        /* renamed from: b */
        private boolean f5713b = false;

        /* renamed from: c */
        private boolean f5714c = false;

        @RecentlyNonNull
        /* renamed from: a */
        public C1500s m8564a() {
            return new C1500s(this, null);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C1501a m8563b(boolean z) {
            this.f5712a = z;
            return this;
        }
    }

    /* synthetic */ C1500s(C1501a c1501a, C1356d0 c1356d0) {
        this.f5709a = c1501a.f5712a;
        this.f5710b = c1501a.f5713b;
        this.f5711c = c1501a.f5714c;
    }

    public C1500s(zzady zzadyVar) {
        this.f5709a = zzadyVar.b;
        this.f5710b = zzadyVar.c;
        this.f5711c = zzadyVar.d;
    }

    /* renamed from: a */
    public boolean m8567a() {
        return this.f5711c;
    }

    /* renamed from: b */
    public boolean m8566b() {
        return this.f5710b;
    }

    /* renamed from: c */
    public boolean m8565c() {
        return this.f5709a;
    }
}
