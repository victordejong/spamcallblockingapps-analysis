package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfx.class */
public final class zzdfx implements zzeoy<zzdfv> {

    /* renamed from: a */
    public final zzeph<Context> f27255a;

    /* renamed from: b */
    public final zzeph<String> f27256b;

    public zzdfx(zzeph<Context> zzephVar, zzeph<String> zzephVar2) {
        this.f27255a = zzephVar;
        this.f27256b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdfv m13617a(Context context, String str) {
        return new zzdfv(context, str);
    }

    /* renamed from: a */
    public static zzdfx m13616a(zzeph<Context> zzephVar, zzeph<String> zzephVar2) {
        return new zzdfx(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13617a(this.f27255a.get(), this.f27256b.get());
    }
}
