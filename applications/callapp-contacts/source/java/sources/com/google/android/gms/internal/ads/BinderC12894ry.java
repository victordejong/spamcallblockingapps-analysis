package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ry */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ry.class */
public final class BinderC12894ry extends AbstractBinderC12888rs {

    /* renamed from: a */
    private final /* synthetic */ UpdateClickUrlCallback f49774a;

    public BinderC12894ry(C12892rw c12892rw, UpdateClickUrlCallback updateClickUrlCallback) {
        this.f49774a = updateClickUrlCallback;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12884ro
    /* renamed from: a */
    public final void mo14205a(String str) {
        this.f49774a.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12884ro
    /* renamed from: a */
    public final void mo14204a(List<Uri> list) {
        this.f49774a.onSuccess(list.get(0));
    }
}
