package com.google.android.gms.ads.query;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.BinderC12891rv;
import com.google.android.gms.internal.ads.BinderC12894ry;
import com.google.android.gms.internal.ads.C12892rw;
import com.google.android.gms.internal.ads.C12893rx;
import com.google.android.gms.internal.ads.C13088za;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo.class */
public final class ReportingInfo {
    private final C12892rw zzhvd;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/query/ReportingInfo$Builder.class */
    public static final class Builder {
        private final C12893rx zzhve;

        public Builder(View view) {
            C12893rx c12893rx = new C12893rx();
            this.zzhve = c12893rx;
            c12893rx.f49772a = view;
        }

        public final ReportingInfo build() {
            return new ReportingInfo(this);
        }

        public final Builder setAssetViews(Map<String, View> map) {
            C12893rx c12893rx = this.zzhve;
            c12893rx.f49773b.clear();
            for (Map.Entry<String, View> entry : map.entrySet()) {
                View value = entry.getValue();
                if (value != null) {
                    c12893rx.f49773b.put(entry.getKey(), new WeakReference<>(value));
                }
            }
            return this;
        }
    }

    private ReportingInfo(Builder builder) {
        this.zzhvd = new C12892rw(builder.zzhve);
    }

    public final void reportTouchEvent(MotionEvent motionEvent) {
        C12892rw c12892rw = this.zzhvd;
        if (c12892rw.f49770b == null) {
            C13088za.zzdz("Failed to get internal reporting info generator.");
            return;
        }
        try {
            c12892rw.f49770b.mo13999a(BinderC12129d.m18979a(motionEvent));
        } catch (RemoteException e) {
            C13088za.zzex("Failed to call remote method.");
        }
    }

    public final void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        C12892rw c12892rw = this.zzhvd;
        if (c12892rw.f49770b == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            c12892rw.f49770b.mo13993b(new ArrayList(Arrays.asList(uri)), BinderC12129d.m18979a(c12892rw.f49769a), new BinderC12894ry(c12892rw, updateClickUrlCallback));
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("Internal error: ");
            sb.append(valueOf);
            updateClickUrlCallback.onFailure(sb.toString());
        }
    }

    public final void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        C12892rw c12892rw = this.zzhvd;
        if (c12892rw.f49770b == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            c12892rw.f49770b.mo13995a(list, BinderC12129d.m18979a(c12892rw.f49769a), new BinderC12891rv(c12892rw, updateImpressionUrlsCallback));
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("Internal error: ");
            sb.append(valueOf);
            updateImpressionUrlsCallback.onFailure(sb.toString());
        }
    }
}
