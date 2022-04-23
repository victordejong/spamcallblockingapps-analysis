package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dec.class */
public final class dec extends dcu<dgq> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dec() {
        super(dgq.class, new dea(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dgq a(dlw dlwVar) throws zzenn {
        return dgq.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dgq dgqVar) throws GeneralSecurityException {
        dgq dgqVar2 = dgqVar;
        dla.b(dgqVar2.zzihc);
        dla.a(dgqVar2.zzihd.b());
        if (dgqVar2.a().zziht != 12 && dgqVar2.a().zziht != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dgq> d() {
        return new dee(this, dgr.class);
    }
}
