package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Cipher;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ob3.class */
public final class ob3 implements vb3<Cipher> {
    @Override // com.google.android.gms.internal.ads.vb3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Cipher mo10046a(String str, Provider provider) {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
