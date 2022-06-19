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
import com.google.android.gms.internal.ads.zzbjf;
import com.google.android.gms.internal.ads.zzbjg;
import com.google.android.gms.internal.ads.zzciz;
import java.util.Date;
import java.util.List;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest.class */
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
    public final zzbjg zza;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest$Builder.class */
    public static class Builder {
        public final zzbjf zza;

        public Builder() {
            zzbjf zzbjfVar = new zzbjf();
            this.zza = zzbjfVar;
            zzbjfVar.zzx("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        @RecentlyNonNull
        public Builder addCustomEventExtrasBundle(@RecentlyNonNull Class<? extends CustomEvent> cls, @RecentlyNonNull Bundle bundle) {
            this.zza.zzs(cls, bundle);
            return this;
        }

        @RecentlyNonNull
        public Builder addKeyword(@RecentlyNonNull String str) {
            this.zza.zzu(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public Builder addNetworkExtras(@RecentlyNonNull NetworkExtras networkExtras) {
            this.zza.zzw(networkExtras);
            return this;
        }

        @RecentlyNonNull
        public Builder addNetworkExtrasBundle(@RecentlyNonNull Class<? extends MediationExtrasReceiver> cls, @RecentlyNonNull Bundle bundle) {
            this.zza.zzv(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zza.zzy("B3EEABB8EE11C2BE770B684D95219ECB");
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
            this.zza.zzz(adInfo);
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setAdString(@RecentlyNonNull String str) {
            this.zza.zzA(str);
            return this;
        }

        @RecentlyNonNull
        public Builder setContentUrl(@RecentlyNonNull String str) {
            Preconditions.checkNotNull(str, "Content URL must be non-null.");
            Preconditions.checkNotEmpty(str, "Content URL must be non-empty.");
            Preconditions.checkArgument(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", Integer.valueOf((int) AdRequest.MAX_CONTENT_URL_LENGTH), Integer.valueOf(str.length()));
            this.zza.zzC(str);
            return this;
        }

        @RecentlyNonNull
        public Builder setHttpTimeoutMillis(int i) {
            this.zza.zzE(i);
            return this;
        }

        @RecentlyNonNull
        public Builder setLocation(@RecentlyNonNull Location location) {
            this.zza.zzG(location);
            return this;
        }

        @RecentlyNonNull
        public Builder setNeighboringContentUrls(@RecentlyNonNull List<String> list) {
            if (list == null) {
                zzciz.zzj("neighboring content URLs list should not be null");
                return this;
            }
            this.zza.zzH(list);
            return this;
        }

        @RecentlyNonNull
        public Builder setRequestAgent(@RecentlyNonNull String str) {
            this.zza.zzJ(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public final Builder zza(@RecentlyNonNull String str) {
            this.zza.zzx(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public final Builder zzb(@RecentlyNonNull Date date) {
            this.zza.zzB(date);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        public final Builder zzc(int i) {
            this.zza.zzD(i);
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
            this.zza.zzK(z);
            return this;
        }
    }

    public AdRequest(@RecentlyNonNull Builder builder) {
        this.zza = new zzbjg(builder.zza, null);
    }

    @RecentlyNonNull
    public String getContentUrl() {
        return this.zza.zzm();
    }

    @RecentlyNullable
    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(@RecentlyNonNull Class<T> cls) {
        return this.zza.zze(cls);
    }

    @RecentlyNonNull
    public Bundle getCustomTargeting() {
        return this.zza.zzf();
    }

    @RecentlyNonNull
    public Set<String> getKeywords() {
        return this.zza.zzt();
    }

    @RecentlyNonNull
    public Location getLocation() {
        return this.zza.zzd();
    }

    @RecentlyNonNull
    public List<String> getNeighboringContentUrls() {
        return this.zza.zzq();
    }

    @RecentlyNullable
    public <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(@RecentlyNonNull Class<T> cls) {
        return this.zza.zzg(cls);
    }

    public boolean isTestDevice(@RecentlyNonNull Context context) {
        return this.zza.zzv(context);
    }

    public zzbjg zza() {
        return this.zza;
    }
}
