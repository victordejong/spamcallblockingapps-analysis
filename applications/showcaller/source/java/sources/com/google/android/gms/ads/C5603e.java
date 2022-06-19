package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.C6825ou;
import com.google.android.gms.internal.ads.C6862pu;
import java.util.Date;
/* renamed from: com.google.android.gms.ads.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/e.class */
public class C5603e {

    /* renamed from: a */
    protected final C6862pu f18225a;

    /* renamed from: com.google.android.gms.ads.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/e$a.class */
    public static class C5604a {

        /* renamed from: a */
        protected final C6825ou f18226a;

        public C5604a() {
            C6825ou c6825ou = new C6825ou();
            this.f18226a = c6825ou;
            c6825ou.m12504y("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C5604a m18284a(@RecentlyNonNull String str) {
            this.f18226a.m12506w(str);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C5604a m18283b(@RecentlyNonNull Class<?> cls, @RecentlyNonNull Bundle bundle) {
            this.f18226a.m12505x(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f18226a.m12503z("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C5603e m18282c() {
            return new C5603e(this);
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C5604a m18281d(@RecentlyNonNull Location location) {
            this.f18226a.m12527b(location);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: e */
        public final C5604a m18280e(@RecentlyNonNull String str) {
            this.f18226a.m12504y(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: f */
        public final C5604a m18279f(@RecentlyNonNull Date date) {
            this.f18226a.m12529A(date);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: g */
        public final C5604a m18278g(int i) {
            this.f18226a.m12528a(i);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: h */
        public final C5604a m18277h(boolean z) {
            this.f18226a.m12526c(z);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: i */
        public final C5604a m18276i(boolean z) {
            this.f18226a.m12525d(z);
            return this;
        }
    }

    protected C5603e(@RecentlyNonNull C5604a c5604a) {
        this.f18225a = new C6862pu(c5604a.f18226a, null);
    }

    /* renamed from: a */
    public C6862pu m18285a() {
        return this.f18225a;
    }
}
