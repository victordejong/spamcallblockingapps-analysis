package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzzj;
import com.google.android.gms.internal.ads.zzzk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
import java.util.List;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest.class */
public class AdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_APP_ID_MISSING = 8;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_MEDIATION_NO_FILL = 9;
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
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    public final zzzk zzacw;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest$Builder.class */
    public static class Builder {
        public final zzzj zzacv;

        public Builder() {
            zzzj zzzjVar = new zzzj();
            this.zzacv = zzzjVar;
            zzzjVar.zzcg("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzacv.zzb(cls, bundle);
            return this;
        }

        public Builder addKeyword(String str) {
            this.zzacv.zzcf(str);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzacv.zza(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.zzacv.zza(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zzacv.zzch("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        @Deprecated
        public Builder addTestDevice(String str) {
            this.zzacv.zzcg(str);
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this);
        }

        @KeepForSdk
        public Builder setAdInfo(AdInfo adInfo) {
            this.zzacv.zza(adInfo);
            return this;
        }

        @Deprecated
        public Builder setBirthday(Date date) {
            this.zzacv.zza(date);
            return this;
        }

        public Builder setContentUrl(String str) {
            Preconditions.checkNotNull(str, "Content URL must be non-null.");
            Preconditions.checkNotEmpty(str, "Content URL must be non-empty.");
            Preconditions.checkArgument(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.zzacv.zzci(str);
            return this;
        }

        @Deprecated
        public Builder setGender(int i) {
            this.zzacv.zzcw(i);
            return this;
        }

        public Builder setHttpTimeoutMillis(int i) {
            this.zzacv.zzcy(i);
            return this;
        }

        @Deprecated
        public Builder setIsDesignedForFamilies(boolean z) {
            this.zzacv.zzaa(z);
            return this;
        }

        public Builder setLocation(Location location) {
            this.zzacv.zza(location);
            return this;
        }

        @Deprecated
        public Builder setMaxAdContentRating(String str) {
            this.zzacv.zzcm(str);
            return this;
        }

        public Builder setNeighboringContentUrls(List<String> list) {
            if (list == null) {
                zzazk.zzex("neighboring content URLs list should not be null");
                return this;
            }
            this.zzacv.zzc(list);
            return this;
        }

        public Builder setRequestAgent(String str) {
            this.zzacv.zzck(str);
            return this;
        }

        @Deprecated
        public Builder setTagForUnderAgeOfConsent(int i) {
            this.zzacv.zzcx(i);
            return this;
        }

        @Deprecated
        public Builder tagForChildDirectedTreatment(boolean z) {
            this.zzacv.zzz(z);
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
        this.zzacw = new zzzk(builder.zzacv);
    }

    @Deprecated
    public Date getBirthday() {
        return this.zzacw.getBirthday();
    }

    public String getContentUrl() {
        return this.zzacw.getContentUrl();
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzacw.getCustomEventExtrasBundle(cls);
    }

    public Bundle getCustomTargeting() {
        return this.zzacw.getCustomTargeting();
    }

    @Deprecated
    public int getGender() {
        return this.zzacw.getGender();
    }

    public Set<String> getKeywords() {
        return this.zzacw.getKeywords();
    }

    public Location getLocation() {
        return this.zzacw.getLocation();
    }

    public List<String> getNeighboringContentUrls() {
        return this.zzacw.zzrh();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzacw.getNetworkExtras(cls);
    }

    public <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzacw.getNetworkExtrasBundle(cls);
    }

    public boolean isTestDevice(Context context) {
        return this.zzacw.isTestDevice(context);
    }

    public zzzk zzds() {
        return this.zzacw;
    }
}
