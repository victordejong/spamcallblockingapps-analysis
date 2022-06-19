package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfo.class */
public final class dfo extends dcu<dfz> {
    public dfo() {
        super(dfz.class, new dfn(ddb.class));
    }

    /* renamed from: a */
    public static void m16808a(int i) throws GeneralSecurityException {
        if (i == 32) {
            return;
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }

    /* renamed from: a */
    public static void m16807a(dge dgeVar) throws GeneralSecurityException {
        if (dgeVar.zzihi >= 10) {
            if (dgeVar.zzihi > 16) {
                throw new GeneralSecurityException("tag size too long");
            }
            return;
        }
        throw new GeneralSecurityException("tag size too short");
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dfz mo16803a(dlw dlwVar) throws zzenn {
        return dfz.m16787a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dfz dfzVar) throws GeneralSecurityException {
        dfz dfzVar2 = dfzVar;
        dla.m16520b(dfzVar2.zzihc);
        m16808a(dfzVar2.zzihd.mo16138b());
        m16807a(dfzVar2.m16791a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<?, dfz> mo16800d() {
        return new dfq(this, dga.class);
    }
}
