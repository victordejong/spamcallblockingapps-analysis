package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cup.class */
public final class cup extends csx<cyt> {
    public cup() {
        super(cyt.class, new cus(csm.class));
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ cyt mo10638a(dbi dbiVar) {
        return cyt.m10325a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ void mo10637a(cyt cytVar) {
        cyt cytVar2 = cytVar;
        dao.m10262a(cytVar2.m10329a(), 0);
        if (cytVar2.m10324b().mo9911b() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: b */
    public final String mo10636b() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: c */
    public final cxu.EnumC2931b mo10634c() {
        return cxu.EnumC2931b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: f */
    public final csw<?, cyt> mo10633f() {
        return new cur(this, cyw.class);
    }
}
