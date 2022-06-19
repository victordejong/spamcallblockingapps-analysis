package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djx.class */
public final class djx implements dcq {

    /* renamed from: a */
    private static final byte[] f47120a = new byte[0];

    /* renamed from: b */
    private final djz f47121b;

    /* renamed from: c */
    private final String f47122c;

    /* renamed from: d */
    private final byte[] f47123d;

    /* renamed from: e */
    private final dkh f47124e;

    /* renamed from: f */
    private final djv f47125f;

    public djx(ECPublicKey eCPublicKey, byte[] bArr, String str, dkh dkhVar, djv djvVar) throws GeneralSecurityException {
        dkb.m16544a(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f47121b = new djz(eCPublicKey);
        this.f47123d = bArr;
        this.f47122c = str;
        this.f47124e = dkhVar;
        this.f47125f = djvVar;
    }

    @Override // com.google.android.gms.internal.ads.dcq
    /* renamed from: a */
    public final byte[] mo16550a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        dkc m16549a = this.f47121b.m16549a(this.f47122c, this.f47123d, bArr2, this.f47125f.mo16552a(), this.f47124e);
        byte[] mo16516a = this.f47125f.mo16551a(m16549a.f47136b == null ? null : m16549a.f47136b.m16537a()).mo16516a(bArr, f47120a);
        byte[] m16537a = m16549a.f47135a == null ? null : m16549a.f47135a.m16537a();
        return ByteBuffer.allocate(m16537a.length + mo16516a.length).put(m16537a).put(mo16516a).array();
    }
}
