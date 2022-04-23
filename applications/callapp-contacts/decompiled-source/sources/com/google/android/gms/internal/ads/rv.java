package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rv.class */
public final class rv extends rs {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ UpdateImpressionUrlsCallback f28361a;

    public rv(rw rwVar, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.f28361a = updateImpressionUrlsCallback;
    }

    @Override // com.google.android.gms.internal.ads.ro
    public final void a(String str) {
        this.f28361a.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.ro
    public final void a(List<Uri> list) {
        this.f28361a.onSuccess(list);
    }
}
