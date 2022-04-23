package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfo.class */
public final class dfo extends dcu<dfz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dfo() {
        super(dfz.class, new dfn(ddb.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i) throws GeneralSecurityException {
        if (i != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(dge dgeVar) throws GeneralSecurityException {
        if (dgeVar.zzihi < 10) {
            throw new GeneralSecurityException("tag size too short");
        } else if (dgeVar.zzihi > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dfz a(dlw dlwVar) throws zzenn {
        return dfz.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dfz dfzVar) throws GeneralSecurityException {
        dfz dfzVar2 = dfzVar;
        dla.b(dfzVar2.zzihc);
        a(dfzVar2.zzihd.b());
        a(dfzVar2.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dfz> d() {
        return new dfq(this, dga.class);
    }
}
