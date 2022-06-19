package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvh.class */
public final class cvh extends csx<cvr> {
    public cvh() {
        super(cvr.class, new cvg(ctd.class));
    }

    /* renamed from: b */
    public static void m10641b(int i) {
        if (i != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 16 bytes");
        }
    }

    /* renamed from: b */
    public static void m10640b(cvv cvvVar) {
        if (cvvVar.m10602a() < 10) {
            throw new GeneralSecurityException("tag size too short");
        }
        if (cvvVar.m10602a() <= 16) {
            return;
        }
        throw new GeneralSecurityException("tag size too long");
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ cvr mo10638a(dbi dbiVar) {
        return cvr.m10615a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ void mo10637a(cvr cvrVar) {
        cvr cvrVar2 = cvrVar;
        dao.m10262a(cvrVar2.m10621a(), 0);
        m10641b(cvrVar2.m10614b().mo9911b());
        m10640b(cvrVar2.m10612c());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: b */
    public final String mo10636b() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: c */
    public final cxu.EnumC2931b mo10634c() {
        return cxu.EnumC2931b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: f */
    public final csw<?, cvr> mo10633f() {
        return new cvj(this, cvu.class);
    }
}
