package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddv.class */
public final class ddv extends dcu<dgf> {
    public ddv() {
        super(dgf.class, new ddu(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dgf mo16803a(dlw dlwVar) throws zzenn {
        return dgf.m16769a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dgf dgfVar) throws GeneralSecurityException {
        dgf dgfVar2 = dgfVar;
        dla.m16520b(dgfVar2.zzihc);
        new ddw();
        ddw.m16822a(dgfVar2.m16773a());
        new dfp();
        dfp.m16805a(dgfVar2.m16768b());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<?, dgf> mo16800d() {
        return new ddx(this, dgi.class);
    }
}
