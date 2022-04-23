package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dej.class */
public final class dej extends dcu<dhd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dej() {
        super(dhd.class, new dem(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dhd a(dlw dlwVar) throws zzenn {
        return dhd.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dhd dhdVar) throws GeneralSecurityException {
        dhd dhdVar2 = dhdVar;
        dla.b(dhdVar2.zzihc);
        if (dhdVar2.zzihd.b() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dhd> d() {
        return new del(this, dhg.class);
    }
}
