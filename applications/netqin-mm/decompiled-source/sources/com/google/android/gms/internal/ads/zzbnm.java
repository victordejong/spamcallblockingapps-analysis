package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnm.class */
public final class zzbnm implements zzeoy<View> {

    /* renamed from: a */
    public final zzbnj f25256a;

    public zzbnm(zzbnj zzbnjVar) {
        this.f25256a = zzbnjVar;
    }

    /* renamed from: a */
    public static View m15275a(zzbnj zzbnjVar) {
        View b = zzbnjVar.m15282b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15275a(this.f25256a);
    }
}
