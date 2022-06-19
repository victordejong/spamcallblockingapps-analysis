package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfb.class */
final class dfb extends dcu<dhr> {
    public dfb() {
        super(dhr.class, new dff(dcq.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dhr mo16803a(dlw dlwVar) throws zzenn {
        return dhr.m16674a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dhr dhrVar) throws GeneralSecurityException {
        dhr dhrVar2 = dhrVar;
        dla.m16520b(dhrVar2.zzihc);
        dfj.m16811a(dhrVar2.m16678a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.ASYMMETRIC_PUBLIC;
    }
}
