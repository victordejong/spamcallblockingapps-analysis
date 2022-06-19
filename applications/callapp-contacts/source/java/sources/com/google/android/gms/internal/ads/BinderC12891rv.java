package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.rv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rv.class */
public final class BinderC12891rv extends AbstractBinderC12888rs {

    /* renamed from: a */
    private final /* synthetic */ UpdateImpressionUrlsCallback f49768a;

    public BinderC12891rv(C12892rw c12892rw, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.f49768a = updateImpressionUrlsCallback;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12884ro
    /* renamed from: a */
    public final void mo14205a(String str) {
        this.f49768a.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12884ro
    /* renamed from: a */
    public final void mo14204a(List<Uri> list) {
        this.f49768a.onSuccess(list);
    }
}
