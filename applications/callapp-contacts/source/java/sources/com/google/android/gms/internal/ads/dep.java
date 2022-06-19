package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dep.class */
public final class dep implements dcn {

    /* renamed from: a */
    private static final byte[] f47021a = new byte[0];

    /* renamed from: b */
    private final dik f47022b;

    /* renamed from: c */
    private final dcn f47023c;

    public dep(dik dikVar, dcn dcnVar) {
        this.f47022b = dikVar;
        this.f47023c = dcnVar;
    }

    @Override // com.google.android.gms.internal.ads.dcn
    /* renamed from: a */
    public final byte[] mo16516a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] mo16256g = ddm.m16834b(this.f47022b).mo16256g();
        byte[] mo16516a = this.f47023c.mo16516a(mo16256g, f47021a);
        byte[] mo16516a2 = ((dcn) ddm.m16836a(this.f47022b.zzijv, mo16256g, dcn.class)).mo16516a(bArr, bArr2);
        return ByteBuffer.allocate(mo16516a.length + 4 + mo16516a2.length).putInt(mo16516a.length).put(mo16516a).put(mo16516a2).array();
    }
}
