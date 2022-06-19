package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Mac;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkp.class */
public final class dkp implements dki<Mac> {
    @Override // com.google.android.gms.internal.ads.dki
    /* renamed from: a */
    public final /* synthetic */ Mac mo16535a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
