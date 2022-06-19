package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dej.class */
public final class dej extends dcu<dhd> {
    public dej() {
        super(dhd.class, new dem(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dhd mo16803a(dlw dlwVar) throws zzenn {
        return dhd.m16705a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dhd dhdVar) throws GeneralSecurityException {
        dhd dhdVar2 = dhdVar;
        dla.m16520b(dhdVar2.zzihc);
        if (dhdVar2.zzihd.mo16138b() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<?, dhd> mo16800d() {
        return new del(this, dhg.class);
    }
}
