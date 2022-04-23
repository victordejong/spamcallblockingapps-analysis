package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.c40;
import p131c.p161d.p170b.p224d.p252g.p253a.d40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeco.class */
public final class zzeco extends zzeag<zzecz> {
    public zzeco() {
        super(zzecz.class, new c40(zzeam.class));
    }

    /* renamed from: a */
    public static void m12901a(int i) throws GeneralSecurityException {
        if (i != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 16 bytes");
        }
    }

    /* renamed from: a */
    public static void m12900a(zzedd zzeddVar) throws GeneralSecurityException {
        if (zzeddVar.m12867m() < 10) {
            throw new GeneralSecurityException("tag size too short");
        } else if (zzeddVar.m12867m() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzecz mo12895a(zzeip zzeipVar) throws zzekj {
        return zzecz.m12884a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzecz zzeczVar) throws GeneralSecurityException {
        zzecz zzeczVar2 = zzeczVar;
        zzeht.m12547a(zzeczVar2.m12882m(), 0);
        m12901a(zzeczVar2.m12881n().size());
        m12900a(zzeczVar2.m12880o());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<?, zzecz> mo12891f() {
        return new d40(this, zzeda.class);
    }
}
