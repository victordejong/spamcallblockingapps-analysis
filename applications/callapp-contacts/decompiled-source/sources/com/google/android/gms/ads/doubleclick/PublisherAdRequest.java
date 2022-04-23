package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
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
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest.class */
public final class PublisherAdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
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
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    private final emr zzadb;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder.class */
    public static final class Builder {
        private final emu zzada = new emu();

        public final Builder addCategoryExclusion(String str) {
            this.zzada.c(str);
            return this;
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzada.b(cls, bundle);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.zzada.a(str, str2);
            return this;
        }

        public final Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.zzada.a(str, TextUtils.join(",", list));
            }
            return this;
        }

        public final Builder addKeyword(String str) {
            this.zzada.a(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzada.a(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.zzada.a(cls, bundle);
            return this;
        }

        @Deprecated
        public final Builder addTestDevice(String str) {
            this.zzada.b(str);
            return this;
        }

        public final PublisherAdRequest build() {
            return new PublisherAdRequest(this);
        }

        public final Builder setAdInfo(AdInfo adInfo) {
            this.zzada.q = adInfo;
            return this;
        }

        @Deprecated
        public final Builder setBirthday(Date date) {
            this.zzada.g = date;
            return this;
        }

        public final Builder setContentUrl(String str) {
            o.a(str, (Object) "Content URL must be non-null.");
            o.a(str, (Object) "Content URL must be non-empty.");
            o.a(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.zzada.h = str;
            return this;
        }

        @Deprecated
        public final Builder setGender(int i) {
            this.zzada.j = i;
            return this;
        }

        public final Builder setHttpTimeoutMillis(int i) {
            this.zzada.t = i;
            return this;
        }

        @Deprecated
        public final Builder setIsDesignedForFamilies(boolean z) {
            this.zzada.p = z;
            return this;
        }

        public final Builder setLocation(Location location) {
            this.zzada.k = location;
            return this;
        }

        @Deprecated
        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzada.l = z;
            return this;
        }

        @Deprecated
        public final Builder setMaxAdContentRating(String str) {
            this.zzada.d(str);
            return this;
        }

        public final Builder setNeighboringContentUrls(List<String> list) {
            if (list == null) {
                za.zzez("neighboring content URLs list should not be null");
                return this;
            }
            this.zzada.a(list);
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.zzada.m = str;
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.zzada.n = str;
            return this;
        }

        @Deprecated
        public final Builder setTagForUnderAgeOfConsent(int i) {
            this.zzada.a(i);
            return this;
        }

        @Deprecated
        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.zzada.a(z);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    private PublisherAdRequest(Builder builder) {
        this.zzadb = new emr(builder.zzada);
    }

    @Deprecated
    public static void updateCorrelator() {
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zzadb.f27952a;
    }

    public final String getContentUrl() {
        return this.zzadb.f27953b;
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzadb.c(cls);
    }

    public final Bundle getCustomTargeting() {
        return this.zzadb.m;
    }

    @Deprecated
    public final int getGender() {
        return this.zzadb.f27954c;
    }

    public final Set<String> getKeywords() {
        return this.zzadb.f27955d;
    }

    public final Location getLocation() {
        return this.zzadb.e;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzadb.f;
    }

    public final List<String> getNeighboringContentUrls() {
        return this.zzadb.a();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzadb.a(cls);
    }

    public final <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzadb.b(cls);
    }

    public final String getPublisherProvidedId() {
        return this.zzadb.i;
    }

    public final boolean isTestDevice(Context context) {
        return this.zzadb.a(context);
    }

    public final emr zzdt() {
        return this.zzadb;
    }
}
