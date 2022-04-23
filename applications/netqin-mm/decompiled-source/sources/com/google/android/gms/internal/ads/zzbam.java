package com.google.android.gms.internal.ads;

import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.C3460d6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbam.class */
public final class zzbam extends zzaa<zzy> {

    /* renamed from: n */
    public final zzbcg<zzy> f24711n;

    /* renamed from: o */
    public final zzbbk f24712o;

    public zzbam(String str, zzbcg<zzy> zzbcgVar) {
        this(str, null, zzbcgVar);
    }

    public zzbam(String str, Map<String, String> map, zzbcg<zzy> zzbcgVar) {
        super(0, str, new C3460d6(zzbcgVar));
        this.f24711n = zzbcgVar;
        zzbbk zzbbkVar = new zzbbk();
        this.f24712o = zzbbkVar;
        zzbbkVar.m15873a(str, "GET", null, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.zzaa
    /* renamed from: a */
    public final zzaj<zzy> mo15542a(zzy zzyVar) {
        return zzaj.m16730a(zzyVar, zzbc.m15840a(zzyVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaa
    /* renamed from: a */
    public final /* synthetic */ void mo15541a(zzy zzyVar) {
        zzy zzyVar2 = zzyVar;
        this.f24712o.m15869a(zzyVar2.f29086c, zzyVar2.f29084a);
        zzbbk zzbbkVar = this.f24712o;
        byte[] bArr = zzyVar2.f29085b;
        if (zzbbk.m15880a() && bArr != null) {
            zzbbkVar.m15867a(bArr);
        }
        this.f24711n.m15835a((zzbcg<zzy>) zzyVar2);
    }
}
