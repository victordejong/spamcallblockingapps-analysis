package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/des.class */
public final class des extends dcu<dix> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public des() {
        super(dix.class, new der(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dix a(dlw dlwVar) throws zzenn {
        return dix.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dix dixVar) throws GeneralSecurityException {
        dla.b(dixVar.zzihc);
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.REMOTE;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dix> d() {
        return new deu(this, dja.class);
    }
}
