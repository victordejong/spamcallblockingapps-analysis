package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddw.class */
public final class ddw extends dcu<dgj> {
    public ddw() {
        super(dgj.class, new ddz(dkt.class));
    }

    /* renamed from: a */
    public static void m16822a(dgj dgjVar) throws GeneralSecurityException {
        dla.m16520b(dgjVar.zzihc);
        dla.m16521a(dgjVar.zzihd.mo16138b());
        m16821a(dgjVar.m16758a());
    }

    /* renamed from: a */
    public static void m16821a(dgn dgnVar) throws GeneralSecurityException {
        if (dgnVar.zziht < 12 || dgnVar.zziht > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dgj mo16803a(dlw dlwVar) throws zzenn {
        return dgj.m16754a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dgj dgjVar) throws GeneralSecurityException {
        m16822a(dgjVar);
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<?, dgj> mo16800d() {
        return new ddy(this, dgm.class);
    }
}
