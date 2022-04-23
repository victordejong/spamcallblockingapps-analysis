package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.C1915r1;
import com.google.android.gms.internal.ads.C1932s1;
import java.util.Date;
/* renamed from: com.google.android.gms.ads.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/e.class */
public class C1357e {

    /* renamed from: a */
    protected final C1932s1 f5451a;

    /* renamed from: com.google.android.gms.ads.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/e$a.class */
    public static class C1358a {

        /* renamed from: a */
        protected final C1915r1 f5452a;

        public C1358a() {
            C1915r1 r1Var = new C1915r1();
            this.f5452a = r1Var;
            r1Var.m6013m("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C1358a m9030a(@RecentlyNonNull String str) {
            this.f5452a.m6015k(str);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C1358a m9029b(@RecentlyNonNull Class<? extends Object> cls, @RecentlyNonNull Bundle bundle) {
            this.f5452a.m6014l(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f5452a.m6012n("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C1357e m9028c() {
            return new C1357e(this);
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C1358a m9027d(@RecentlyNonNull Location location) {
            this.f5452a.m6009q(location);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: e */
        public final C1358a m9026e(@RecentlyNonNull String str) {
            this.f5452a.m6013m(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: f */
        public final C1358a m9025f(@RecentlyNonNull Date date) {
            this.f5452a.m6011o(date);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: g */
        public final C1358a m9024g(int i) {
            this.f5452a.m6010p(i);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: h */
        public final C1358a m9023h(boolean z) {
            this.f5452a.m6008r(z);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: i */
        public final C1358a m9022i(boolean z) {
            this.f5452a.m6007s(z);
            return this;
        }
    }

    protected C1357e(@RecentlyNonNull C1358a aVar) {
        this.f5451a = new C1932s1(aVar.f5452a, null);
    }

    /* renamed from: a */
    public C1932s1 m9031a() {
        return this.f5451a;
    }
}
