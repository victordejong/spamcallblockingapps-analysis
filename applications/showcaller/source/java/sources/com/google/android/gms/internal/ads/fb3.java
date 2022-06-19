package com.google.android.gms.internal.ads;

import java.security.interfaces.ECPrivateKey;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fb3.class */
public final class fb3 implements m13 {

    /* renamed from: a */
    private final ECPrivateKey f22777a;

    /* renamed from: b */
    private final hb3 f22778b;

    /* renamed from: c */
    private final String f22779c;

    /* renamed from: d */
    private final byte[] f22780d;

    /* renamed from: e */
    private final eb3 f22781e;

    public fb3(ECPrivateKey eCPrivateKey, byte[] bArr, String str, int i, eb3 eb3Var) {
        this.f22777a = eCPrivateKey;
        this.f22778b = new hb3(eCPrivateKey);
        this.f22780d = bArr;
        this.f22779c = str;
        this.f22781e = eb3Var;
    }
}
