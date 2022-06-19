package com.google.android.gms.ads.query;

import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzasm;
import com.google.android.gms.internal.ads.zzasr;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo.class */
public final class ReportingInfo {
    private final zzasm zzhsb;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo$Builder.class */
    public static final class Builder {
        private final zzasr zzhsc;

        public Builder(View view) {
            zzasr zzasrVar = new zzasr();
            this.zzhsc = zzasrVar;
            zzasrVar.zzk(view);
        }

        public final ReportingInfo build() {
            return new ReportingInfo(this);
        }

        public final Builder setAssetViews(Map<String, View> map) {
            this.zzhsc.zzh(map);
            return this;
        }
    }

    private ReportingInfo(Builder builder) {
        this.zzhsb = new zzasm(builder.zzhsc);
    }

    public final void reportTouchEvent(MotionEvent motionEvent) {
        this.zzhsb.reportTouchEvent(motionEvent);
    }

    public final void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        this.zzhsb.updateClickUrl(uri, updateClickUrlCallback);
    }

    public final void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.zzhsb.updateImpressionUrls(list, updateImpressionUrlsCallback);
    }
}
