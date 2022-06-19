package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/ChunkContentIterator.class */
class ChunkContentIterator {

    /* renamed from: a */
    final byte[] f12005a;

    /* renamed from: b */
    int f12006b;

    public ChunkContentIterator(byte[] bArr) {
        this.f12005a = bArr;
    }

    /* renamed from: a */
    public final boolean m38660a() {
        return this.f12006b < this.f12005a.length;
    }
}
