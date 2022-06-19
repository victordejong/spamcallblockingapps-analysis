package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.interfaces.ECPublicKey;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czm.class */
public final class czm implements cst {

    /* renamed from: a */
    private static final byte[] f13852a = new byte[0];

    /* renamed from: b */
    private final czo f13853b;

    /* renamed from: c */
    private final String f13854c;

    /* renamed from: d */
    private final byte[] f13855d;

    /* renamed from: e */
    private final czw f13856e;

    /* renamed from: f */
    private final czk f13857f;

    public czm(ECPublicKey eCPublicKey, byte[] bArr, String str, czw czwVar, czk czkVar) {
        czr.m10285a(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f13853b = new czo(eCPublicKey);
        this.f13855d = bArr;
        this.f13854c = str;
        this.f13856e = czwVar;
        this.f13857f = czkVar;
    }

    @Override // com.google.android.gms.internal.ads.cst
    /* renamed from: a */
    public final byte[] mo10292a(byte[] bArr, byte[] bArr2) {
        czs m10291a = this.f13853b.m10291a(this.f13854c, this.f13855d, bArr2, this.f13857f.mo10294a(), this.f13856e);
        byte[] mo10254a = this.f13857f.mo10293a(m10291a.m10282b()).mo10254a(bArr, f13852a);
        byte[] m10283a = m10291a.m10283a();
        return ByteBuffer.allocate(m10283a.length + mo10254a.length).put(m10283a).put(mo10254a).array();
    }
}
