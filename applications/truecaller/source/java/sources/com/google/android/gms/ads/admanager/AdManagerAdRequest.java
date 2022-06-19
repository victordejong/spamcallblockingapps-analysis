package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbhj;
import java.util.List;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/admanager/AdManagerAdRequest.class */
public final class AdManagerAdRequest extends AdRequest {

    @VisibleForTesting
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/admanager/AdManagerAdRequest$Builder.class */
    public static final class Builder extends AdRequest.Builder {
        @RecentlyNonNull
        public Builder addCategoryExclusion(@RecentlyNonNull String str) {
            this.zza.zzH(str);
            return this;
        }

        @RecentlyNonNull
        public Builder addCustomTargeting(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
            this.zza.zzG(str, str2);
            return this;
        }

        @RecentlyNonNull
        public Builder addCustomTargeting(@RecentlyNonNull String str, @RecentlyNonNull List<String> list) {
            if (list != null) {
                this.zza.zzG(str, TextUtils.join(",", list));
            }
            return this;
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        @RecentlyNonNull
        public AdManagerAdRequest build() {
            return new AdManagerAdRequest(this, null);
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        @RecentlyNonNull
        @KeepForSdk
        @Deprecated
        public Builder setAdInfo(@RecentlyNonNull AdInfo adInfo) {
            this.zza.zzJ(adInfo);
            return this;
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        @RecentlyNonNull
        @KeepForSdk
        public Builder setAdString(@RecentlyNonNull String str) {
            this.zza.zzK(str);
            return this;
        }

        @RecentlyNonNull
        public Builder setPublisherProvidedId(@RecentlyNonNull String str) {
            this.zza.zzD(str);
            return this;
        }
    }

    public /* synthetic */ AdManagerAdRequest(Builder builder, zza zzaVar) {
        super(builder);
    }

    @Override // com.google.android.gms.ads.AdRequest
    @RecentlyNonNull
    public Bundle getCustomTargeting() {
        return this.zza.zzq();
    }

    @RecentlyNonNull
    public String getPublisherProvidedId() {
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.ads.AdRequest
    public final zzbhj zza() {
        return this.zza;
    }
}
