package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ry.class */
public final class ry extends rs {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ UpdateClickUrlCallback f28367a;

    public ry(rw rwVar, UpdateClickUrlCallback updateClickUrlCallback) {
        this.f28367a = updateClickUrlCallback;
    }

    @Override // com.google.android.gms.internal.ads.ro
    public final void a(String str) {
        this.f28367a.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.ro
    public final void a(List<Uri> list) {
        this.f28367a.onSuccess(list.get(0));
    }
}
