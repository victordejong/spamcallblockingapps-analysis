package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dee.class */
final class dee extends dcx<dgr, dgq> {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dec f26778b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dee(dec decVar, Class cls) {
        super(cls);
        this.f26778b = decVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dgr a(dlw dlwVar) throws zzenn {
        return dgr.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ void a(dgr dgrVar) throws GeneralSecurityException {
        dgr dgrVar2 = dgrVar;
        dla.a(dgrVar2.zzihg);
        if (dgrVar2.a().zziht != 12 && dgrVar2.a().zziht != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dgq b(dgr dgrVar) throws GeneralSecurityException {
        dgr dgrVar2 = dgrVar;
        return dgq.b().a(dlw.a(dkz.a(dgrVar2.zzihg))).a(dgrVar2.a()).a().f();
    }
}
