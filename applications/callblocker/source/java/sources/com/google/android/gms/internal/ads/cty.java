package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cty.class */
public final class cty extends csx<cwh> {
    public cty() {
        super(cwh.class, new cub(csm.class));
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ cwh mo10638a(dbi dbiVar) {
        return cwh.m10547a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ void mo10637a(cwh cwhVar) {
        cwh cwhVar2 = cwhVar;
        dao.m10262a(cwhVar2.m10553a(), 0);
        dao.m10263a(cwhVar2.m10544c().mo9911b());
        if (cwhVar2.m10546b().m10534a() == 12 || cwhVar2.m10546b().m10534a() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: b */
    public final String mo10636b() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: c */
    public final cxu.EnumC2931b mo10634c() {
        return cxu.EnumC2931b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: f */
    public final csw<?, cwh> mo10633f() {
        return new cua(this, cwk.class);
    }
}
