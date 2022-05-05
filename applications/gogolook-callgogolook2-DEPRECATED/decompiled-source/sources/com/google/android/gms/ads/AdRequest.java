package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Date;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p260a.C7444w5;
import p081h.p203i.p204a.p224e.p259j.p260a.C7456x5;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdRequest.class */
public final class AdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    public final C7444w5 zzuy;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdRequest$Builder.class */
    public static final class Builder {
        public final C7456x5 zzuz = new C7456x5();

        public Builder() {
            this.zzuz.m20553b("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzuz.m20554b(cls, bundle);
            return this;
        }

        public final Builder addKeyword(String str) {
            this.zzuz.m20559a(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzuz.m20562a(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzuz.m20560a(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zzuz.m20550c("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        public final Builder addTestDevice(String str) {
            this.zzuz.m20553b(str);
            return this;
        }

        public final AdRequest build() {
            return new AdRequest(this);
        }

        @Deprecated
        public final Builder setBirthday(Date date) {
            this.zzuz.m20557a(date);
            return this;
        }

        public final Builder setContentUrl(String str) {
            C7021t.m21289a(str, (Object) "Content URL must be non-null.");
            C7021t.m21287a(str, (Object) "Content URL must be non-empty.");
            C7021t.m21284a(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.zzuz.m20547d(str);
            return this;
        }

        @Deprecated
        public final Builder setGender(int i) {
            this.zzuz.m20564a(i);
            return this;
        }

        @Deprecated
        public final Builder setIsDesignedForFamilies(boolean z) {
            this.zzuz.m20549c(z);
            return this;
        }

        public final Builder setLocation(Location location) {
            this.zzuz.m20563a(location);
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.zzuz.m20543f(str);
            return this;
        }

        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.zzuz.m20552b(z);
            return this;
        }
    }

    public AdRequest(Builder builder) {
        this.zzuy = new C7444w5(builder.zzuz);
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zzuy.m20614a();
    }

    public final String getContentUrl() {
        return this.zzuy.m20611b();
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzuy.m20612a(cls);
    }

    @Deprecated
    public final int getGender() {
        return this.zzuy.m20607d();
    }

    public final Set<String> getKeywords() {
        return this.zzuy.m20606e();
    }

    public final Location getLocation() {
        return this.zzuy.m20605f();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzuy.m20610b(cls);
    }

    public final <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzuy.m20608c(cls);
    }

    public final boolean isTestDevice(Context context) {
        return this.zzuy.m20613a(context);
    }

    public final C7444w5 zzay() {
        return this.zzuy;
    }
}
