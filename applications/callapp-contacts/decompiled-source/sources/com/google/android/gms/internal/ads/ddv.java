package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddv.class */
public final class ddv extends dcu<dgf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ddv() {
        super(dgf.class, new ddu(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dgf a(dlw dlwVar) throws zzenn {
        return dgf.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dgf dgfVar) throws GeneralSecurityException {
        dgf dgfVar2 = dgfVar;
        dla.b(dgfVar2.zzihc);
        new ddw();
        ddw.a2(dgfVar2.a());
        new dfp();
        dfp.a2(dgfVar2.b());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dgf> d() {
        return new ddx(this, dgi.class);
    }
}
