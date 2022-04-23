package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfb.class */
final class dfb extends dcu<dhr> {
    public dfb() {
        super(dhr.class, new dff(dcq.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dhr a(dlw dlwVar) throws zzenn {
        return dhr.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dhr dhrVar) throws GeneralSecurityException {
        dhr dhrVar2 = dhrVar;
        dla.b(dhrVar2.zzihc);
        dfj.a(dhrVar2.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.ASYMMETRIC_PUBLIC;
    }
}
