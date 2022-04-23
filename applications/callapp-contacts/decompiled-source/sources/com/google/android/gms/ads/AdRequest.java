package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.emr;
import com.google.android.gms.internal.ads.emu;
import com.google.android.gms.internal.ads.za;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdRequest.class */
public class AdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_APP_ID_MISSING = 8;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_MEDIATION_NO_FILL = 9;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int ERROR_CODE_REQUEST_ID_MISMATCH = 10;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    protected final emr zzadb;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdRequest$Builder.class */
    public static class Builder {
        protected final emu zzada;

        public Builder() {
            emu emuVar = new emu();
            this.zzada = emuVar;
            emuVar.b("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzada.b(cls, bundle);
            return this;
        }

        public Builder addKeyword(String str) {
            this.zzada.a(str);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzada.a(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.zzada.a(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zzada.f27963d.remove("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        @Deprecated
        public Builder addTestDevice(String str) {
            this.zzada.b(str);
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this);
        }

        public Builder setAdInfo(AdInfo adInfo) {
            this.zzada.q = adInfo;
            return this;
        }

        @Deprecated
        public Builder setBirthday(Date date) {
            this.zzada.g = date;
            return this;
        }

        public Builder setContentUrl(String str) {
            o.a(str, (Object) "Content URL must be non-null.");
            o.a(str, (Object) "Content URL must be non-empty.");
            o.a(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.zzada.h = str;
            return this;
        }

        @Deprecated
        public Builder setGender(int i) {
            this.zzada.j = i;
            return this;
        }

        public Builder setHttpTimeoutMillis(int i) {
            this.zzada.t = i;
            return this;
        }

        @Deprecated
        public Builder setIsDesignedForFamilies(boolean z) {
            this.zzada.p = z;
            return this;
        }

        public Builder setLocation(Location location) {
            this.zzada.k = location;
            return this;
        }

        @Deprecated
        public Builder setMaxAdContentRating(String str) {
            this.zzada.d(str);
            return this;
        }

        public Builder setNeighboringContentUrls(List<String> list) {
            if (list == null) {
                za.zzez("neighboring content URLs list should not be null");
                return this;
            }
            this.zzada.a(list);
            return this;
        }

        public Builder setRequestAgent(String str) {
            this.zzada.n = str;
            return this;
        }

        @Deprecated
        public Builder setTagForUnderAgeOfConsent(int i) {
            this.zzada.a(i);
            return this;
        }

        @Deprecated
        public Builder tagForChildDirectedTreatment(boolean z) {
            this.zzada.a(z);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdRequest$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdRequest$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    public AdRequest(Builder builder) {
        this.zzadb = new emr(builder.zzada);
    }

    @Deprecated
    public Date getBirthday() {
        return this.zzadb.f27952a;
    }

    public String getContentUrl() {
        return this.zzadb.f27953b;
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzadb.c(cls);
    }

    public Bundle getCustomTargeting() {
        return this.zzadb.m;
    }

    @Deprecated
    public int getGender() {
        return this.zzadb.f27954c;
    }

    public Set<String> getKeywords() {
        return this.zzadb.f27955d;
    }

    public Location getLocation() {
        return this.zzadb.e;
    }

    public List<String> getNeighboringContentUrls() {
        return this.zzadb.a();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzadb.a(cls);
    }

    public <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzadb.b(cls);
    }

    public boolean isTestDevice(Context context) {
        return this.zzadb.a(context);
    }

    public emr zzdt() {
        return this.zzadb;
    }
}
