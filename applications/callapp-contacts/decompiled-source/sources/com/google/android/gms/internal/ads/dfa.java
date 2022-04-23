package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfa.class */
public final class dfa extends ddj<dhq, dhr> {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f26790c = new byte[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public dfa() {
        super(dhq.class, dhr.class, new dez(dcr.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dot a(dlw dlwVar) throws zzenn {
        return dhq.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dot dotVar) throws GeneralSecurityException {
        dhq dhqVar = (dhq) dotVar;
        if (!dhqVar.zzihd.c()) {
            dla.b(dhqVar.zzihc);
            dfj.a(dhqVar.a().a());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<dhm, dhq> d() {
        return new dfd(this, dhm.class);
    }
}
