package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzyw;
import com.google.android.gms.internal.ads.zzyz;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest.class */
public final class AdRequest {

    /* renamed from: a */
    public final zzyw f22645a;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public final zzyz f22646a;

        public Builder() {
            zzyz zzyzVar = new zzyz();
            this.f22646a = zzyzVar;
            zzyzVar.m11037b("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        @Deprecated
        /* renamed from: a */
        public final Builder m18146a(int i) {
            this.f22646a.m11045a(i);
            return this;
        }

        /* renamed from: a */
        public final Builder m18145a(Location location) {
            this.f22646a.m11044a(location);
            return this;
        }

        /* renamed from: a */
        public final Builder m18143a(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.f22646a.m11042a(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f22646a.m11034c("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        /* renamed from: a */
        public final Builder m18142a(String str) {
            this.f22646a.m11041a(str);
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public final Builder m18141a(Date date) {
            this.f22646a.m11040a(date);
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public final Builder m18140a(boolean z) {
            this.f22646a.m11039a(z);
            return this;
        }

        /* renamed from: a */
        public final AdRequest m18147a() {
            return new AdRequest(this);
        }

        @Deprecated
        /* renamed from: b */
        public final Builder m18139b(String str) {
            this.f22646a.m11037b(str);
            return this;
        }

        @Deprecated
        /* renamed from: b */
        public final Builder m18138b(boolean z) {
            this.f22646a.m11036b(z);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    public AdRequest(Builder builder) {
        this.f22645a = new zzyw(builder.f22646a);
    }

    /* renamed from: a */
    public final zzyw m18148a() {
        return this.f22645a;
    }
}
