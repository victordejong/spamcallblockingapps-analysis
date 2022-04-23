package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/der.class */
final class der extends dcw<dcn, dix> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public der(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.dcw
    public final /* synthetic */ dcn a(dix dixVar) throws GeneralSecurityException {
        dix dixVar2 = dixVar;
        dcn b2 = ddc.a(dixVar2.a().zzilj).b();
        dja a2 = dixVar2.a();
        return new dep(a2.zzilk == null ? dik.a() : a2.zzilk, b2);
    }
}
