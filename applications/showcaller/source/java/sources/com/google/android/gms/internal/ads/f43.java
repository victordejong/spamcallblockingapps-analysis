package com.google.android.gms.internal.ads;

import java.security.InvalidKeyException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f43.class */
public final class f43 extends w13<e73> {
    public f43() {
        super(e73.class, new c43(l13.class));
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ e73 mo8528c(zzgex zzgexVar) {
        return e73.m15558E(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(e73 e73Var) {
        e73 e73Var2 = e73Var;
        gc3.m14963b(e73Var2.m15560C(), 0);
        if (e73Var2.m15559D().zzc() == 64) {
            return;
        }
        int zzc = e73Var2.m15559D().zzc();
        StringBuilder sb = new StringBuilder(61);
        sb.append("invalid key size: ");
        sb.append(zzc);
        sb.append(". Valid keys must have 64 bytes.");
        throw new InvalidKeyException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<?, e73> mo8526h() {
        return new d43(this, i73.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 3;
    }
}
