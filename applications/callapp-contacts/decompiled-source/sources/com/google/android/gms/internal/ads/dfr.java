package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfr.class */
final class dfr extends dcx<dic, dhy> {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dfp f26806b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dfr(dfp dfpVar, Class cls) {
        super(cls);
        this.f26806b = dfpVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dic a(dlw dlwVar) throws zzenn {
        return dic.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ void a(dic dicVar) throws GeneralSecurityException {
        dic dicVar2 = dicVar;
        if (dicVar2.zzihg >= 16) {
            dfp.a(dicVar2.a());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dhy b(dic dicVar) throws GeneralSecurityException {
        dic dicVar2 = dicVar;
        return dhy.b().a().a(dicVar2.a()).a(dlw.a(dkz.a(dicVar2.zzihg))).f();
    }
}
