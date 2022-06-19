package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dee.class */
final class dee extends dcx<dgr, dgq> {

    /* renamed from: b */
    private final /* synthetic */ dec f47017b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dee(dec decVar, Class cls) {
        super(cls);
        this.f47017b = decVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: a */
    public final /* synthetic */ dgr mo16799a(dlw dlwVar) throws zzenn {
        return dgr.m16730a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: a */
    public final /* synthetic */ void mo16798a(dgr dgrVar) throws GeneralSecurityException {
        dgr dgrVar2 = dgrVar;
        dla.m16521a(dgrVar2.zzihg);
        if (dgrVar2.m16731a().zziht == 12 || dgrVar2.m16731a().zziht == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: b */
    public final /* synthetic */ dgq mo16797b(dgr dgrVar) throws GeneralSecurityException {
        dgr dgrVar2 = dgrVar;
        return dgq.m16736b().m16732a(dlw.m16475a(dkz.m16524a(dgrVar2.zzihg))).m16733a(dgrVar2.m16731a()).m16734a().mo16259f();
    }
}
