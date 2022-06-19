package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.interfaces.ECPublicKey;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gb3.class */
public final class gb3 implements n13 {

    /* renamed from: a */
    private static final byte[] f23287a = new byte[0];

    /* renamed from: b */
    private final jb3 f23288b;

    /* renamed from: c */
    private final String f23289c;

    /* renamed from: d */
    private final byte[] f23290d;

    /* renamed from: e */
    private final eb3 f23291e;

    /* renamed from: f */
    private final int f23292f;

    public gb3(ECPublicKey eCPublicKey, byte[] bArr, String str, int i, eb3 eb3Var) {
        kb3.m13928a(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f23288b = new jb3(eCPublicKey);
        this.f23290d = bArr;
        this.f23289c = str;
        this.f23292f = i;
        this.f23291e = eb3Var;
    }

    @Override // com.google.android.gms.internal.ads.n13
    /* renamed from: a */
    public final byte[] mo11114a(byte[] bArr, byte[] bArr2) {
        ib3 m14139a = this.f23288b.m14139a(this.f23289c, this.f23290d, bArr2, this.f23291e.zza(), this.f23292f);
        byte[] m9783a = this.f23291e.mo10089a(m14139a.m14454b()).m9783a(bArr, f23287a);
        byte[] m14455a = m14139a.m14455a();
        return ByteBuffer.allocate(m14455a.length + m9783a.length).put(m14455a).put(m9783a).array();
    }
}
