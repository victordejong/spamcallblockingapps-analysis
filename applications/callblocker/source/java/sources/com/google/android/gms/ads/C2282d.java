package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.ebh;
import com.google.android.gms.internal.ads.ebi;
import java.util.Date;
/* renamed from: com.google.android.gms.ads.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/d.class */
public final class C2282d {

    /* renamed from: a */
    private final ebi f6590a;

    /* renamed from: com.google.android.gms.ads.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/d$a.class */
    public static final class C2283a {

        /* renamed from: a */
        private final ebh f6591a = new ebh();

        public C2283a() {
            this.f6591a.m8083b("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        @Deprecated
        /* renamed from: a */
        public final C2283a m14840a(int i) {
            this.f6591a.m8091a(i);
            return this;
        }

        /* renamed from: a */
        public final C2283a m14839a(Location location) {
            this.f6591a.m8090a(location);
            return this;
        }

        /* renamed from: a */
        public final C2283a m14837a(Class<? extends Object> cls, Bundle bundle) {
            this.f6591a.m8088a(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f6591a.m8080c("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        /* renamed from: a */
        public final C2283a m14836a(String str) {
            this.f6591a.m8087a(str);
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public final C2283a m14835a(Date date) {
            this.f6591a.m8086a(date);
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public final C2283a m14834a(boolean z) {
            this.f6591a.m8085a(z);
            return this;
        }

        /* renamed from: a */
        public final C2282d m14841a() {
            return new C2282d(this);
        }

        @Deprecated
        /* renamed from: b */
        public final C2283a m14833b(String str) {
            this.f6591a.m8083b(str);
            return this;
        }

        @Deprecated
        /* renamed from: b */
        public final C2283a m14832b(boolean z) {
            this.f6591a.m8082b(z);
            return this;
        }
    }

    private C2282d(C2283a c2283a) {
        this.f6590a = new ebi(c2283a.f6591a);
    }

    /* renamed from: a */
    public final ebi m14842a() {
        return this.f6590a;
    }
}
