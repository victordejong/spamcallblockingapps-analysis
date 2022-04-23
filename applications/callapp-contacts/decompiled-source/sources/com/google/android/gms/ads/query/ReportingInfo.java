package com.google.android.gms.ads.query;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.rv;
import com.google.android.gms.internal.ads.rw;
import com.google.android.gms.internal.ads.rx;
import com.google.android.gms.internal.ads.ry;
import com.google.android.gms.internal.ads.za;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo.class */
public final class ReportingInfo {
    private final rw zzhvd;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo$Builder.class */
    public static final class Builder {
        private final rx zzhve;

        public Builder(View view) {
            rx rxVar = new rx();
            this.zzhve = rxVar;
            rxVar.f28365a = view;
        }

        public final ReportingInfo build() {
            return new ReportingInfo(this);
        }

        public final Builder setAssetViews(Map<String, View> map) {
            rx rxVar = this.zzhve;
            rxVar.f28366b.clear();
            for (Map.Entry<String, View> entry : map.entrySet()) {
                View value = entry.getValue();
                if (value != null) {
                    rxVar.f28366b.put(entry.getKey(), new WeakReference<>(value));
                }
            }
            return this;
        }
    }

    private ReportingInfo(Builder builder) {
        this.zzhvd = new rw(builder.zzhve);
    }

    public final void reportTouchEvent(MotionEvent motionEvent) {
        rw rwVar = this.zzhvd;
        if (rwVar.f28363b == null) {
            za.zzdz("Failed to get internal reporting info generator.");
            return;
        }
        try {
            rwVar.f28363b.a(d.a(motionEvent));
        } catch (RemoteException e) {
            za.zzex("Failed to call remote method.");
        }
    }

    public final void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        rw rwVar = this.zzhvd;
        if (rwVar.f28363b == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            rwVar.f28363b.b(new ArrayList(Arrays.asList(uri)), d.a(rwVar.f28362a), new ry(rwVar, updateClickUrlCallback));
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("Internal error: ");
            sb.append(valueOf);
            updateClickUrlCallback.onFailure(sb.toString());
        }
    }

    public final void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        rw rwVar = this.zzhvd;
        if (rwVar.f28363b == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            rwVar.f28363b.a(list, d.a(rwVar.f28362a), new rv(rwVar, updateImpressionUrlsCallback));
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("Internal error: ");
            sb.append(valueOf);
            updateImpressionUrlsCallback.onFailure(sb.toString());
        }
    }
}
