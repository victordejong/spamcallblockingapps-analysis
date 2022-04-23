package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dep.class */
public final class dep implements dcn {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f26782a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    private final dik f26783b;

    /* renamed from: c  reason: collision with root package name */
    private final dcn f26784c;

    public dep(dik dikVar, dcn dcnVar) {
        this.f26783b = dikVar;
        this.f26784c = dcnVar;
    }

    @Override // com.google.android.gms.internal.ads.dcn
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] g = ddm.b(this.f26783b).g();
        byte[] a2 = this.f26784c.a(g, f26782a);
        byte[] a3 = ((dcn) ddm.a(this.f26783b.zzijv, g, dcn.class)).a(bArr, bArr2);
        return ByteBuffer.allocate(a2.length + 4 + a3.length).putInt(a2.length).put(a2).put(a3).array();
    }
}
