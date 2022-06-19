package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n33.class */
public final class n33 extends w13<l73> {
    public n33() {
        super(l73.class, new l33(i13.class));
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ l73 mo8528c(zzgex zzgexVar) {
        return l73.m13669E(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(l73 l73Var) {
        l73 l73Var2 = l73Var;
        gc3.m14963b(l73Var2.m13671C(), 0);
        if (l73Var2.m13670D().zzc() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<?, l73> mo8526h() {
        return new m33(this, o73.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 3;
    }
}
