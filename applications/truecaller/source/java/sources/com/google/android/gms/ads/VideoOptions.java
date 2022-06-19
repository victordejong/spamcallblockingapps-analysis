package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzbis;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/VideoOptions.class */
public final class VideoOptions {
    private final boolean zza;
    private final boolean zzb;
    private final boolean zzc;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/VideoOptions$Builder.class */
    public static final class Builder {
        private boolean zza = true;
        private boolean zzb = false;
        private boolean zzc = false;

        @RecentlyNonNull
        public VideoOptions build() {
            return new VideoOptions(this, null);
        }

        @RecentlyNonNull
        public Builder setClickToExpandRequested(boolean z) {
            this.zzc = z;
            return this;
        }

        @RecentlyNonNull
        public Builder setCustomControlsRequested(boolean z) {
            this.zzb = z;
            return this;
        }

        @RecentlyNonNull
        public Builder setStartMuted(boolean z) {
            this.zza = z;
            return this;
        }
    }

    public /* synthetic */ VideoOptions(Builder builder, zzd zzdVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
    }

    public VideoOptions(zzbis zzbisVar) {
        this.zza = zzbisVar.zza;
        this.zzb = zzbisVar.zzb;
        this.zzc = zzbisVar.zzc;
    }

    public boolean getClickToExpandRequested() {
        return this.zzc;
    }

    public boolean getCustomControlsRequested() {
        return this.zzb;
    }

    public boolean getStartMuted() {
        return this.zza;
    }
}
