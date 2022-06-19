package com.google.android.gms.internal.ads;

import java.security.interfaces.ECPrivateKey;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czn.class */
public final class czn implements csq {

    /* renamed from: a */
    private static final byte[] f13858a = new byte[0];

    /* renamed from: b */
    private final ECPrivateKey f13859b;

    /* renamed from: c */
    private final czq f13860c;

    /* renamed from: d */
    private final String f13861d;

    /* renamed from: e */
    private final byte[] f13862e;

    /* renamed from: f */
    private final czw f13863f;

    /* renamed from: g */
    private final czk f13864g;

    public czn(ECPrivateKey eCPrivateKey, byte[] bArr, String str, czw czwVar, czk czkVar) {
        this.f13859b = eCPrivateKey;
        this.f13860c = new czq(eCPrivateKey);
        this.f13862e = bArr;
        this.f13861d = str;
        this.f13863f = czwVar;
        this.f13864g = czkVar;
    }
}
