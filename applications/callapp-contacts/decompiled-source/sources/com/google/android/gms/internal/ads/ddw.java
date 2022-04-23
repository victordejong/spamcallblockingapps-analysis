package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddw.class */
public final class ddw extends dcu<dgj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ddw() {
        super(dgj.class, new ddz(dkt.class));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public static void a2(dgj dgjVar) throws GeneralSecurityException {
        dla.b(dgjVar.zzihc);
        dla.a(dgjVar.zzihd.b());
        a(dgjVar.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(dgn dgnVar) throws GeneralSecurityException {
        if (dgnVar.zziht < 12 || dgnVar.zziht > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dgj a(dlw dlwVar) throws zzenn {
        return dgj.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dgj dgjVar) throws GeneralSecurityException {
        a2(dgjVar);
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dgj> d() {
        return new ddy(this, dgm.class);
    }
}
