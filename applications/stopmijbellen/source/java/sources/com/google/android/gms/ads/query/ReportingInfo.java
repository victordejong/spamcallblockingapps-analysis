package com.google.android.gms.ads.query;

import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzccm;
import com.google.android.gms.internal.ads.zzccn;
import java.util.List;
import java.util.Map;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo.class */
public final class ReportingInfo {
    private final zzccn zza;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo$Builder.class */
    public static final class Builder {
        private final zzccm zza;

        @KeepForSdk
        public Builder(@RecentlyNonNull View view) {
            zzccm zzccmVar = new zzccm();
            this.zza = zzccmVar;
            zzccmVar.zzb(view);
        }

        @RecentlyNonNull
        @KeepForSdk
        public ReportingInfo build() {
            return new ReportingInfo(this, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setAssetViews(@RecentlyNonNull Map<String, View> map) {
            this.zza.zzc(map);
            return this;
        }
    }

    public /* synthetic */ ReportingInfo(Builder builder, zza zzaVar) {
        this.zza = new zzccn(builder.zza);
    }

    @KeepForSdk
    public void reportTouchEvent(@RecentlyNonNull MotionEvent motionEvent) {
        this.zza.zza(motionEvent);
    }

    @KeepForSdk
    public void updateClickUrl(@RecentlyNonNull Uri uri, @RecentlyNonNull UpdateClickUrlCallback updateClickUrlCallback) {
        this.zza.zzb(uri, updateClickUrlCallback);
    }

    @KeepForSdk
    public void updateImpressionUrls(@RecentlyNonNull List<Uri> list, @RecentlyNonNull UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.zza.zzc(list, updateImpressionUrlsCallback);
    }
}
