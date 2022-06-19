package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z43.class */
public final class z43 extends w13<l53> {
    public z43() {
        super(l53.class, new x43(a23.class));
    }

    /* renamed from: m */
    public static void m8522m(r53 r53Var) {
        if (r53Var.m11692C() >= 10) {
            if (r53Var.m11692C() > 16) {
                throw new GeneralSecurityException("tag size too long");
            }
            return;
        }
        throw new GeneralSecurityException("tag size too short");
    }

    /* renamed from: n */
    public static void m8521n(int i) {
        if (i == 32) {
            return;
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ l53 mo8528c(zzgex zzgexVar) {
        return l53.m13685F(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(l53 l53Var) {
        l53 l53Var2 = l53Var;
        gc3.m14963b(l53Var2.m13688C(), 0);
        m8521n(l53Var2.m13687D().zzc());
        m8522m(l53Var2.m13686E());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<?, l53> mo8526h() {
        return new y43(this, o53.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 3;
    }
}
