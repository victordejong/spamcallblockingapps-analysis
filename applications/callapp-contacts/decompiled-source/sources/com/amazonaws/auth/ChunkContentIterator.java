package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/ChunkContentIterator.class */
class ChunkContentIterator {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f6570a;

    /* renamed from: b  reason: collision with root package name */
    int f6571b;

    public ChunkContentIterator(byte[] bArr) {
        this.f6570a = bArr;
    }

    public final boolean a() {
        return this.f6571b < this.f6570a.length;
    }
}
