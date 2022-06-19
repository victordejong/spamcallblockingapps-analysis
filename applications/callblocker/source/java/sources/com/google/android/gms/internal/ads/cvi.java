package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvi.class */
public final class cvi extends csx<cxp> {
    public cvi() {
        super(cxp.class, new cvl(ctd.class));
    }

    /* renamed from: b */
    public static void m10635b(cxt cxtVar) {
        if (cxtVar.m10428b() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        switch (cvo.f13733a[cxtVar.m10429a().ordinal()]) {
            case 1:
                if (cxtVar.m10428b() <= 20) {
                    return;
                }
                throw new GeneralSecurityException("tag size too big");
            case 2:
                if (cxtVar.m10428b() <= 32) {
                    return;
                }
                throw new GeneralSecurityException("tag size too big");
            case 3:
                if (cxtVar.m10428b() <= 64) {
                    return;
                }
                throw new GeneralSecurityException("tag size too big");
            default:
                throw new GeneralSecurityException("unknown hash type");
        }
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ cxp mo10638a(dbi dbiVar) {
        return cxp.m10444a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ void mo10637a(cxp cxpVar) {
        cxp cxpVar2 = cxpVar;
        dao.m10262a(cxpVar2.m10450a(), 0);
        if (cxpVar2.m10441c().mo9911b() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        m10635b(cxpVar2.m10443b());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: b */
    public final String mo10636b() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: c */
    public final cxu.EnumC2931b mo10634c() {
        return cxu.EnumC2931b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: f */
    public final csw<?, cxp> mo10633f() {
        return new cvk(this, cxq.class);
    }
}
