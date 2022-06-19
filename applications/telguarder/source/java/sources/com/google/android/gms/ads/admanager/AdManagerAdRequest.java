package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.internal.ads.zzzk;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/admanager/AdManagerAdRequest.class */
public final class AdManagerAdRequest extends AdRequest {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/admanager/AdManagerAdRequest$Builder.class */
    public static final class Builder extends AdRequest.Builder {
        public final Builder addCategoryExclusion(String str) {
            this.zzacv.zzcl(str);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.zzacv.zzd(str, str2);
            return this;
        }

        public final Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.zzacv.zzd(str, TextUtils.join(",", list));
            }
            return this;
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        public final AdManagerAdRequest build() {
            return new AdManagerAdRequest(this);
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        public final Builder setAdInfo(AdInfo adInfo) {
            this.zzacv.zza(adInfo);
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.zzacv.zzcj(str);
            return this;
        }
    }

    private AdManagerAdRequest(Builder builder) {
        super(builder);
    }

    @Override // com.google.android.gms.ads.AdRequest
    public final Bundle getCustomTargeting() {
        return this.zzacw.getCustomTargeting();
    }

    public final String getPublisherProvidedId() {
        return this.zzacw.getPublisherProvidedId();
    }

    @Override // com.google.android.gms.ads.AdRequest
    public final zzzk zzds() {
        return this.zzacw;
    }
}
