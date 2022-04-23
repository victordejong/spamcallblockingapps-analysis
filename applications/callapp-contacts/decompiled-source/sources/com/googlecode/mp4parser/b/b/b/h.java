package com.googlecode.mp4parser.b.b.b;

import com.b.a.c;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/h.class */
public final class h extends b {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f33158a;

    /* renamed from: b  reason: collision with root package name */
    private String f33159b;

    public h(String str) {
        this.f33159b = str;
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return this.f33159b;
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
        this.f33158a = (ByteBuffer) byteBuffer.duplicate().rewind();
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        return this.f33158a.duplicate();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ByteBuffer byteBuffer = this.f33158a;
        ByteBuffer byteBuffer2 = ((h) obj).f33158a;
        return byteBuffer != null ? byteBuffer.equals(byteBuffer2) : byteBuffer2 == null;
    }

    public final int hashCode() {
        ByteBuffer byteBuffer = this.f33158a;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }

    public final String toString() {
        ByteBuffer duplicate = this.f33158a.duplicate();
        duplicate.rewind();
        byte[] bArr = new byte[duplicate.limit()];
        duplicate.get(bArr);
        return "UnknownEntry{content=" + c.a(bArr) + '}';
    }
}
