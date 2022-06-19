package com.google.android.gms.ads.query;

import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzasm;
import com.google.android.gms.internal.ads.zzasr;
import java.util.List;
import java.util.Map;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo.class */
public final class ReportingInfo {
    private final zzasm zzhsb;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo$Builder.class */
    public static final class Builder {
        private final zzasr zzhsc;

        @KeepForSdk
        public Builder(View view) {
            zzasr zzasrVar = new zzasr();
            this.zzhsc = zzasrVar;
            zzasrVar.zzk(view);
        }

        @KeepForSdk
        public final ReportingInfo build() {
            return new ReportingInfo(this);
        }

        @KeepForSdk
        public final Builder setAssetViews(Map<String, View> map) {
            this.zzhsc.zzh(map);
            return this;
        }
    }

    private ReportingInfo(Builder builder) {
        this.zzhsb = new zzasm(builder.zzhsc);
    }

    @KeepForSdk
    public final void reportTouchEvent(MotionEvent motionEvent) {
        this.zzhsb.reportTouchEvent(motionEvent);
    }

    @KeepForSdk
    public final void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        this.zzhsb.updateClickUrl(uri, updateClickUrlCallback);
    }

    @KeepForSdk
    public final void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.zzhsb.updateImpressionUrls(list, updateImpressionUrlsCallback);
    }
}
