package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ctx.class */
public final class ctx extends csx<cwc> {
    public ctx() {
        super(cwc.class, new ctw(dai.class));
    }

    /* renamed from: a */
    public static void m10653a(cwg cwgVar) {
        if (cwgVar.m10556a() < 12 || cwgVar.m10556a() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ cwc mo10638a(dbi dbiVar) {
        return cwc.m10571a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ void mo10637a(cwc cwcVar) {
        cwc cwcVar2 = cwcVar;
        dao.m10262a(cwcVar2.m10577a(), 0);
        dao.m10263a(cwcVar2.m10568c().mo9911b());
        m10653a(cwcVar2.m10570b());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: b */
    public final String mo10636b() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: c */
    public final cxu.EnumC2931b mo10634c() {
        return cxu.EnumC2931b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: f */
    public final csw<?, cwc> mo10633f() {
        return new ctz(this, cwd.class);
    }
}
