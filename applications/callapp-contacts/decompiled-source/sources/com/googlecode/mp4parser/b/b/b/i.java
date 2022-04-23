package com.googlecode.mp4parser.b.b.b;

import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/i.class */
public final class i extends b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f33160a;

    /* renamed from: b  reason: collision with root package name */
    private short f33161b;

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return "rap ";
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
        byte b2 = byteBuffer.get();
        this.f33160a = (b2 & 128) == 128;
        this.f33161b = (short) (b2 & Byte.MAX_VALUE);
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        allocate.put((byte) ((this.f33160a ? 128 : 0) | (this.f33161b & 127)));
        allocate.rewind();
        return allocate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f33161b == iVar.f33161b && this.f33160a == iVar.f33160a;
    }

    public final int hashCode() {
        return ((this.f33160a ? 1 : 0) * 31) + this.f33161b;
    }

    public final String toString() {
        return "VisualRandomAccessEntry{numLeadingSamplesKnown=" + this.f33160a + ", numLeadingSamples=" + ((int) this.f33161b) + '}';
    }
}
