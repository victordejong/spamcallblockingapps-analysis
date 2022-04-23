package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dek.class */
final class dek extends dcx<dhc, dgz> {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dei f26780b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dek(dei deiVar, Class cls) {
        super(cls);
        this.f26780b = deiVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dhc a(dlw dlwVar) throws zzenn {
        return dhc.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ void a(dhc dhcVar) throws GeneralSecurityException {
        dla.a(dhcVar.zzihg);
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dgz b(dhc dhcVar) throws GeneralSecurityException {
        return dgz.a().a(dlw.a(dkz.a(dhcVar.zzihg))).a().f();
    }
}
