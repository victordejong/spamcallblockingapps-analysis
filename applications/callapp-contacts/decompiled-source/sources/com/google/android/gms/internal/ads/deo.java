package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/deo.class */
public final class deo extends dcu<dit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public deo() {
        super(dit.class, new den(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dit a(dlw dlwVar) throws zzenn {
        return dit.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dit ditVar) throws GeneralSecurityException {
        dla.b(ditVar.zzihc);
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.REMOTE;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dit> d() {
        return new deq(this, diw.class);
    }
}
