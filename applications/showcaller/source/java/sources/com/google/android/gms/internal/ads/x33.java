package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x33.class */
public final class x33 extends w13<ma3> {
    public x33() {
        super(ma3.class, new v33(i13.class));
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ma3 mo8528c(zzgex zzgexVar) {
        return ma3.m13319E(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(ma3 ma3Var) {
        ma3 ma3Var2 = ma3Var;
        gc3.m14963b(ma3Var2.m13321C(), 0);
        if (ma3Var2.m13320D().zzc() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<?, ma3> mo8526h() {
        return new w33(this, pa3.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 3;
    }
}
