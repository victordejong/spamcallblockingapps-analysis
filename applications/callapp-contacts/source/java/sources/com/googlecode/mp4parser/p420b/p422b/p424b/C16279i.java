package com.googlecode.mp4parser.p420b.p422b.p424b;

import java.nio.ByteBuffer;
/* renamed from: com.googlecode.mp4parser.b.b.b.i */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/i.class */
public final class C16279i extends AbstractC16270b {

    /* renamed from: a */
    private boolean f57523a;

    /* renamed from: b */
    private short f57524b;

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final String mo5963a() {
        return "rap ";
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final void mo5962a(ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        this.f57523a = (b & 128) == 128;
        this.f57524b = (short) (b & Byte.MAX_VALUE);
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: b */
    public final ByteBuffer mo5961b() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        allocate.put((byte) ((this.f57523a ? 128 : 0) | (this.f57524b & 127)));
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
        C16279i c16279i = (C16279i) obj;
        return this.f57524b == c16279i.f57524b && this.f57523a == c16279i.f57523a;
    }

    public final int hashCode() {
        return ((this.f57523a ? 1 : 0) * 31) + this.f57524b;
    }

    public final String toString() {
        return "VisualRandomAccessEntry{numLeadingSamplesKnown=" + this.f57523a + ", numLeadingSamples=" + ((int) this.f57524b) + '}';
    }
}
