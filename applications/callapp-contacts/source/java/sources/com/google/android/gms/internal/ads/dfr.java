package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfr.class */
final class dfr extends dcx<dic, dhy> {

    /* renamed from: b */
    private final /* synthetic */ dfp f47047b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dfr(dfp dfpVar, Class cls) {
        super(cls);
        this.f47047b = dfpVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: a */
    public final /* synthetic */ dic mo16799a(dlw dlwVar) throws zzenn {
        return dic.m16649a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: a */
    public final /* synthetic */ void mo16798a(dic dicVar) throws GeneralSecurityException {
        dic dicVar2 = dicVar;
        if (dicVar2.zzihg >= 16) {
            dfp.m16804a(dicVar2.m16650a());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: b */
    public final /* synthetic */ dhy mo16797b(dic dicVar) throws GeneralSecurityException {
        dic dicVar2 = dicVar;
        return dhy.m16656b().m16653a().m16652a(dicVar2.m16650a()).m16651a(dlw.m16475a(dkz.m16524a(dicVar2.zzihg))).mo16259f();
    }
}
