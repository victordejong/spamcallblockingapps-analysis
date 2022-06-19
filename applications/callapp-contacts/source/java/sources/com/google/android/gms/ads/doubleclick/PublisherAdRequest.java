package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.emr;
import com.google.android.gms.internal.ads.emu;
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
            this.zzada.m14743c(str);
            return this;
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzada.m14745b(cls, bundle);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.zzada.m14748a(str, str2);
            return this;
        }

        public final Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.zzada.m14748a(str, TextUtils.join(",", list));
            }
            return this;
        }

        public final Builder addKeyword(String str) {
            this.zzada.m14749a(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzada.m14751a(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.zzada.m14750a(cls, bundle);
            return this;
        }

        @Deprecated
        public final Builder addTestDevice(String str) {
            this.zzada.m14744b(str);
            return this;
        }

        public final PublisherAdRequest build() {
            return new PublisherAdRequest(this);
        }

        public final Builder setAdInfo(AdInfo adInfo) {
            this.zzada.f49232q = adInfo;
            return this;
        }

        @Deprecated
        public final Builder setBirthday(Date date) {
            this.zzada.f49222g = date;
            return this;
        }

        public final Builder setContentUrl(String str) {
            C12045o.m19161a(str, (Object) "Content URL must be non-null.");
            C12045o.m19159a(str, (Object) "Content URL must be non-empty.");
            C12045o.m19156a(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.zzada.f49223h = str;
            return this;
        }

        @Deprecated
        public final Builder setGender(int i) {
            this.zzada.f49225j = i;
            return this;
        }

        public final Builder setHttpTimeoutMillis(int i) {
            this.zzada.f49235t = i;
            return this;
        }

        @Deprecated
        public final Builder setIsDesignedForFamilies(boolean z) {
            this.zzada.f49231p = z;
            return this;
        }

        public final Builder setLocation(Location location) {
            this.zzada.f49226k = location;
            return this;
        }

        @Deprecated
        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzada.f49227l = z;
            return this;
        }

        @Deprecated
        public final Builder setMaxAdContentRating(String str) {
            this.zzada.m14742d(str);
            return this;
        }

        public final Builder setNeighboringContentUrls(List<String> list) {
            if (list == null) {
                C13088za.zzez("neighboring content URLs list should not be null");
                return this;
            }
            this.zzada.m14747a(list);
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.zzada.f49228m = str;
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.zzada.f49229n = str;
            return this;
        }

        @Deprecated
        public final Builder setTagForUnderAgeOfConsent(int i) {
            this.zzada.m14752a(i);
            return this;
        }

        @Deprecated
        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.zzada.m14746a(z);
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
        return this.zzadb.f49177a;
    }

    public final String getContentUrl() {
        return this.zzadb.f49178b;
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzadb.m14775c(cls);
    }

    public final Bundle getCustomTargeting() {
        return this.zzadb.f49189m;
    }

    @Deprecated
    public final int getGender() {
        return this.zzadb.f49179c;
    }

    public final Set<String> getKeywords() {
        return this.zzadb.f49180d;
    }

    public final Location getLocation() {
        return this.zzadb.f49181e;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzadb.f49182f;
    }

    public final List<String> getNeighboringContentUrls() {
        return this.zzadb.m14779a();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzadb.m14777a(cls);
    }

    public final <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzadb.m14776b(cls);
    }

    public final String getPublisherProvidedId() {
        return this.zzadb.f49185i;
    }

    public final boolean isTestDevice(Context context) {
        return this.zzadb.m14778a(context);
    }

    public final emr zzdt() {
        return this.zzadb;
    }
}
