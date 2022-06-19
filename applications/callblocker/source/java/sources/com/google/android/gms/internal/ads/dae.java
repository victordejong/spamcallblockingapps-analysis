package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dae.class */
public final class dae implements czx<Mac> {
    @Override // com.google.android.gms.internal.ads.czx
    /* renamed from: a */
    public final /* synthetic */ Mac mo10276a(String str, Provider provider) {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
