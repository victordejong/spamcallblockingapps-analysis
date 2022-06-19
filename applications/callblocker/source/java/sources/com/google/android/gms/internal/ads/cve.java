package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cwc;
import com.google.android.gms.internal.ads.cwo;
import com.google.android.gms.internal.ads.cxp;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cve.class */
final class cve implements czk {

    /* renamed from: a */
    private final String f13716a;

    /* renamed from: b */
    private final int f13717b;

    /* renamed from: c */
    private cwo f13718c;

    /* renamed from: d */
    private cvy f13719d;

    /* renamed from: e */
    private int f13720e;

    public cve(cya cyaVar) {
        this.f13716a = cyaVar.m10407a();
        if (this.f13716a.equals(ctp.f13684b)) {
            try {
                cwp m10519a = cwp.m10519a(cyaVar.m10406b(), dci.m10138a());
                this.f13718c = (cwo) cti.m10673b(cyaVar);
                this.f13717b = m10519a.m10520a();
            } catch (zzeco e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (!this.f13716a.equals(ctp.f13683a)) {
            String valueOf = String.valueOf(this.f13716a);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        } else {
            try {
                cvz m10583a = cvz.m10583a(cyaVar.m10406b(), dci.m10138a());
                this.f13719d = (cvy) cti.m10673b(cyaVar);
                this.f13720e = m10583a.m10584a().m10559b();
                this.f13717b = m10583a.m10582b().m10432b() + this.f13720e;
            } catch (zzeco e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.czk
    /* renamed from: a */
    public final int mo10294a() {
        return this.f13717b;
    }

    @Override // com.google.android.gms.internal.ads.czk
    /* renamed from: a */
    public final csm mo10293a(byte[] bArr) {
        csm csmVar;
        if (bArr.length != this.f13717b) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        }
        if (this.f13716a.equals(ctp.f13684b)) {
            csmVar = (csm) cti.m10678a(this.f13716a, (cwo) ((dcw) cwo.m10524c().m10072a((cwo.C2916a) this.f13718c).m10521a(dbi.m10218a(bArr, 0, this.f13717b)).mo9987g()), csm.class);
        } else if (!this.f13716a.equals(ctp.f13683a)) {
            throw new GeneralSecurityException("unknown DEM key type");
        } else {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.f13720e);
            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.f13720e, this.f13717b);
            cwc cwcVar = (cwc) ((dcw) cwc.m10567d().m10072a((cwc.C2910a) this.f13719d.m10592b()).m10562a(dbi.m10219a(copyOfRange)).mo9987g());
            csmVar = (csm) cti.m10678a(this.f13716a, (cvy) ((dcw) cvy.m10589d().m10587a(this.f13719d.m10599a()).m10586a(cwcVar).m10585a((cxp) ((dcw) cxp.m10440d().m10072a((cxp.C2927a) this.f13719d.m10590c()).m10435a(dbi.m10219a(copyOfRange2)).mo9987g())).mo9987g()), csm.class);
        }
        return csmVar;
    }
}
