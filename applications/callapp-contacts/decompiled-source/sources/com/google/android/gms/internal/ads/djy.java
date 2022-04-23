package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djy.class */
public final class djy implements dcr {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f26879a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    private final ECPrivateKey f26880b;

    /* renamed from: c  reason: collision with root package name */
    private final dka f26881c;

    /* renamed from: d  reason: collision with root package name */
    private final String f26882d;
    private final byte[] e;
    private final dkh f;
    private final djv g;

    public djy(ECPrivateKey eCPrivateKey, byte[] bArr, String str, dkh dkhVar, djv djvVar) throws GeneralSecurityException {
        this.f26880b = eCPrivateKey;
        this.f26881c = new dka(eCPrivateKey);
        this.e = bArr;
        this.f26882d = str;
        this.f = dkhVar;
        this.g = djvVar;
    }
}
