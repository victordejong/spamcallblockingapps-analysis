package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/det.class */
public final class det extends dcu<djg> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public det() {
        super(djg.class, new dew(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ djg a(dlw dlwVar) throws zzenn {
        return djg.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(djg djgVar) throws GeneralSecurityException {
        djg djgVar2 = djgVar;
        dla.b(djgVar2.zzihc);
        if (djgVar2.zzihd.b() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, djg> d() {
        return new dev(this, djh.class);
    }
}
