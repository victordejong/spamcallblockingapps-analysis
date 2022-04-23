package com.googlecode.mp4parser.b.b.b;

import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/g.class */
public final class g extends b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f33156a;

    /* renamed from: b  reason: collision with root package name */
    private short f33157b;

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return "tele";
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
        this.f33156a = (byteBuffer.get() & 128) == 128;
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        allocate.put((byte) (this.f33156a ? 128 : 0));
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
        g gVar = (g) obj;
        return this.f33156a == gVar.f33156a && this.f33157b == gVar.f33157b;
    }

    public final int hashCode() {
        return ((this.f33156a ? 1 : 0) * 31) + this.f33157b;
    }

    public final String toString() {
        return "TemporalLevelEntry{levelIndependentlyDecodable=" + this.f33156a + '}';
    }
}
