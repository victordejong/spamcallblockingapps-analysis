package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbhi;
import com.google.android.gms.internal.ads.zzbhj;
import com.google.android.gms.internal.ads.zzcgt;
import java.util.Date;
import java.util.List;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdRequest.class */
public class AdRequest {
    @RecentlyNonNull
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_APP_ID_MISSING = 8;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_AD_STRING = 11;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_MEDIATION_NO_FILL = 9;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int ERROR_CODE_REQUEST_ID_MISMATCH = 10;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    public final zzbhj zza;

    @VisibleForTesting
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdRequest$Builder.class */
    public static class Builder {
        public final zzbhi zza;

        public Builder() {
            zzbhi zzbhiVar = new zzbhi();
            this.zza = zzbhiVar;
            zzbhiVar.zzw("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        @RecentlyNonNull
        public Builder addCustomEventExtrasBundle(@RecentlyNonNull Class<? extends CustomEvent> cls, @RecentlyNonNull Bundle bundle) {
            this.zza.zzv(cls, bundle);
            return this;
        }

        @RecentlyNonNull
        public Builder addKeyword(@RecentlyNonNull String str) {
            this.zza.zzs(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public Builder addNetworkExtras(@RecentlyNonNull NetworkExtras networkExtras) {
            this.zza.zzt(networkExtras);
            return this;
        }

        @RecentlyNonNull
        public Builder addNetworkExtrasBundle(@RecentlyNonNull Class<? extends MediationExtrasReceiver> cls, @RecentlyNonNull Bundle bundle) {
            this.zza.zzu(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zza.zzx("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        @RecentlyNonNull
        public AdRequest build() {
            return new AdRequest(this);
        }

        @RecentlyNonNull
        @KeepForSdk
        @Deprecated
        public Builder setAdInfo(@RecentlyNonNull AdInfo adInfo) {
            this.zza.zzJ(adInfo);
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setAdString(@RecentlyNonNull String str) {
            this.zza.zzK(str);
            return this;
        }

        @RecentlyNonNull
        public Builder setContentUrl(@RecentlyNonNull String str) {
            Preconditions.m38897k(str, "Content URL must be non-null.");
            Preconditions.m38900h(str, "Content URL must be non-empty.");
            Preconditions.m38905c(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.zza.zzz(str);
            return this;
        }

        @RecentlyNonNull
        public Builder setHttpTimeoutMillis(int i) {
            this.zza.zzL(i);
            return this;
        }

        @RecentlyNonNull
        public Builder setLocation(@RecentlyNonNull Location location) {
            this.zza.zzC(location);
            return this;
        }

        @RecentlyNonNull
        public Builder setNeighboringContentUrls(@RecentlyNonNull List<String> list) {
            if (list == null) {
                zzcgt.zzi("neighboring content URLs list should not be null");
                return this;
            }
            this.zza.zzA(list);
            return this;
        }

        @RecentlyNonNull
        public Builder setRequestAgent(@RecentlyNonNull String str) {
            this.zza.zzE(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public final Builder zza(@RecentlyNonNull String str) {
            this.zza.zzw(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public final Builder zzb(@RecentlyNonNull Date date) {
            this.zza.zzy(date);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public final Builder zzc(int i) {
            this.zza.zzB(i);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public final Builder zzd(boolean z) {
            this.zza.zzF(z);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public final Builder zze(boolean z) {
            this.zza.zzI(z);
            return this;
        }
    }

    public AdRequest(@RecentlyNonNull Builder builder) {
        this.zza = new zzbhj(builder.zza, null);
    }

    @RecentlyNonNull
    public String getContentUrl() {
        return this.zza.zzb();
    }

    @RecentlyNullable
    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(@RecentlyNonNull Class<T> cls) {
        return this.zza.zzi(cls);
    }

    @RecentlyNonNull
    public Bundle getCustomTargeting() {
        return this.zza.zzq();
    }

    @RecentlyNonNull
    public Set<String> getKeywords() {
        return this.zza.zze();
    }

    @RecentlyNonNull
    public Location getLocation() {
        return this.zza.zzf();
    }

    @RecentlyNonNull
    public List<String> getNeighboringContentUrls() {
        return this.zza.zzc();
    }

    @RecentlyNullable
    public <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(@RecentlyNonNull Class<T> cls) {
        return this.zza.zzh(cls);
    }

    public boolean isTestDevice(@RecentlyNonNull Context context) {
        return this.zza.zzm(context);
    }

    public zzbhj zza() {
        return this.zza;
    }
}
