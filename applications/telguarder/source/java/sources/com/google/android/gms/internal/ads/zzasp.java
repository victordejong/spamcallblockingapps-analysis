package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasp.class */
public final class zzasp extends zzasi {
    private final /* synthetic */ UpdateImpressionUrlsCallback zzdts;

    public zzasp(zzasm zzasmVar, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.zzdts = updateImpressionUrlsCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    public final void onError(String str) {
        this.zzdts.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    public final void onSuccess(List<Uri> list) {
        this.zzdts.onSuccess(list);
    }
}
