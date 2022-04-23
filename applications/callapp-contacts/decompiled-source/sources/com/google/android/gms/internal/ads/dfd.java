package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfd.class */
final class dfd extends dcx<dhm, dhq> {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dfa f26791b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dfd(dfa dfaVar, Class cls) {
        super(cls);
        this.f26791b = dfaVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dhm a(dlw dlwVar) throws zzenn {
        return dhm.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ void a(dhm dhmVar) throws GeneralSecurityException {
        dfj.a(dhmVar.a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dhq b(dhm dhmVar) throws GeneralSecurityException {
        dhm dhmVar2 = dhmVar;
        KeyPair a2 = dkb.a(dkb.a(dfj.a(dhmVar2.a().a().a())));
        ECPublicKey eCPublicKey = (ECPublicKey) a2.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) a2.getPrivate();
        ECPoint w = eCPublicKey.getW();
        return dhq.b().a().a(dhr.b().a().a(dhmVar2.a()).a(dlw.a(w.getAffineX().toByteArray())).b(dlw.a(w.getAffineY().toByteArray())).f()).a(dlw.a(eCPrivateKey.getS().toByteArray())).f();
    }
}
