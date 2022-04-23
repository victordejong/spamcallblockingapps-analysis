package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wm.class */
public final class wm implements xd {

    /* renamed from: a  reason: collision with root package name */
    private Context f28478a;

    /* renamed from: b  reason: collision with root package name */
    private zzf f28479b;

    /* renamed from: c  reason: collision with root package name */
    private wo f28480c;

    private wm() {
    }

    @Override // com.google.android.gms.internal.ads.xd
    public final /* synthetic */ xd a(Context context) {
        this.f28478a = (Context) dso.a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.xd
    public final /* synthetic */ xd a(zzf zzfVar) {
        this.f28479b = (zzf) dso.a(zzfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.xd
    public final /* synthetic */ xd a(wo woVar) {
        this.f28480c = (wo) dso.a(woVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.xd
    public final xe a() {
        dso.a(this.f28478a, Context.class);
        dso.a(this.f28479b, zzf.class);
        dso.a(this.f28480c, wo.class);
        return new wj(this.f28478a, this.f28479b, this.f28480c);
    }
}
