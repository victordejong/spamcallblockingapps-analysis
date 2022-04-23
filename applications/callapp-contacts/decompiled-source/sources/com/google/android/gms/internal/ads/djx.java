package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djx.class */
public final class djx implements dcq {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f26875a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    private final djz f26876b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26877c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f26878d;
    private final dkh e;
    private final djv f;

    public djx(ECPublicKey eCPublicKey, byte[] bArr, String str, dkh dkhVar, djv djvVar) throws GeneralSecurityException {
        dkb.a(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f26876b = new djz(eCPublicKey);
        this.f26878d = bArr;
        this.f26877c = str;
        this.e = dkhVar;
        this.f = djvVar;
    }

    @Override // com.google.android.gms.internal.ads.dcq
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        dkc a2 = this.f26876b.a(this.f26877c, this.f26878d, bArr2, this.f.a(), this.e);
        byte[] bArr3 = null;
        byte[] a3 = this.f.a(a2.f26886b == null ? null : a2.f26886b.a()).a(bArr, f26875a);
        if (a2.f26885a != null) {
            bArr3 = a2.f26885a.a();
        }
        return ByteBuffer.allocate(bArr3.length + a3.length).put(bArr3).put(a3).array();
    }
}
