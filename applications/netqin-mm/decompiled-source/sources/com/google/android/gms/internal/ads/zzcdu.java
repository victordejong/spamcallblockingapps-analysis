package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdu.class */
public final class zzcdu implements zzeoy<zzqo> {

    /* renamed from: a */
    public final zzeph<zzbbx> f25794a;

    /* renamed from: b */
    public final zzeph<String> f25795b;

    public zzcdu(zzeph<zzbbx> zzephVar, zzeph<String> zzephVar2) {
        this.f25794a = zzephVar;
        this.f25795b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzp.m17969c();
        zzqo zzqoVar = new zzqo(zzayu.m16115b(), this.f25794a.get(), this.f25795b.get(), new JSONObject(), false, true);
        zzepe.m12187a(zzqoVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzqoVar;
    }
}
