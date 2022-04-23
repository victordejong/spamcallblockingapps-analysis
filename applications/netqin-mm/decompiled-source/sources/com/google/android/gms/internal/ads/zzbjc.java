package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjc.class */
public final class zzbjc implements zzeoy<WeakReference<Context>> {

    /* renamed from: a */
    public final zzbja f25047a;

    public zzbjc(zzbja zzbjaVar) {
        this.f25047a = zzbjaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        WeakReference<Context> b = this.f25047a.m15427b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }
}
