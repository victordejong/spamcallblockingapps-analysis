package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfa.class */
public final class dfa extends ddj<dhq, dhr> {

    /* renamed from: c */
    private static final byte[] f47029c = new byte[0];

    public dfa() {
        super(dhq.class, dhr.class, new dez(dcr.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dot mo16803a(dlw dlwVar) throws zzenn {
        return dhq.m16684a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dot dotVar) throws GeneralSecurityException {
        dhq dhqVar = (dhq) dotVar;
        if (!dhqVar.zzihd.m16470c()) {
            dla.m16520b(dhqVar.zzihc);
            dfj.m16811a(dhqVar.m16688a().m16678a());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<dhm, dhq> mo16800d() {
        return new dfd(this, dhm.class);
    }
}
