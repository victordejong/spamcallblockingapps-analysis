package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djy.class */
public final class djy implements dcr {

    /* renamed from: a */
    private static final byte[] f47126a = new byte[0];

    /* renamed from: b */
    private final ECPrivateKey f47127b;

    /* renamed from: c */
    private final dka f47128c;

    /* renamed from: d */
    private final String f47129d;

    /* renamed from: e */
    private final byte[] f47130e;

    /* renamed from: f */
    private final dkh f47131f;

    /* renamed from: g */
    private final djv f47132g;

    public djy(ECPrivateKey eCPrivateKey, byte[] bArr, String str, dkh dkhVar, djv djvVar) throws GeneralSecurityException {
        this.f47127b = eCPrivateKey;
        this.f47128c = new dka(eCPrivateKey);
        this.f47130e = bArr;
        this.f47129d = str;
        this.f47131f = dkhVar;
        this.f47132g = djvVar;
    }
}
