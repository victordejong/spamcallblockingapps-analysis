package com.google.android.gms.ads.query;

import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzcak;
import com.google.android.gms.internal.ads.zzcal;
import java.util.List;
import java.util.Map;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo.class */
public final class ReportingInfo {
    private final zzcal zza;

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo$Builder.class */
    public static final class Builder {
        private final zzcak zza;

        @KeepForSdk
        public Builder(@RecentlyNonNull View view) {
            zzcak zzcakVar = new zzcak();
            this.zza = zzcakVar;
            zzcakVar.zzc(view);
        }

        @RecentlyNonNull
        @KeepForSdk
        public ReportingInfo build() {
            return new ReportingInfo(this, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setAssetViews(@RecentlyNonNull Map<String, View> map) {
            this.zza.zzd(map);
            return this;
        }
    }

    public /* synthetic */ ReportingInfo(Builder builder, zza zzaVar) {
        this.zza = new zzcal(builder.zza);
    }

    @KeepForSdk
    public void reportTouchEvent(@RecentlyNonNull MotionEvent motionEvent) {
        this.zza.zzc(motionEvent);
    }

    @KeepForSdk
    public void updateClickUrl(@RecentlyNonNull Uri uri, @RecentlyNonNull UpdateClickUrlCallback updateClickUrlCallback) {
        this.zza.zzb(uri, updateClickUrlCallback);
    }

    @KeepForSdk
    public void updateImpressionUrls(@RecentlyNonNull List<Uri> list, @RecentlyNonNull UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.zza.zza(list, updateImpressionUrlsCallback);
    }
}
