package com.googlecode.mp4parser.p420b.p422b.p424b;

import java.nio.ByteBuffer;
/* renamed from: com.googlecode.mp4parser.b.b.b.g */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/g.class */
public final class C16277g extends AbstractC16270b {

    /* renamed from: a */
    private boolean f57519a;

    /* renamed from: b */
    private short f57520b;

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final String mo5963a() {
        return "tele";
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final void mo5962a(ByteBuffer byteBuffer) {
        this.f57519a = (byteBuffer.get() & 128) == 128;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: b */
    public final ByteBuffer mo5961b() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        allocate.put((byte) (this.f57519a ? 128 : 0));
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
        C16277g c16277g = (C16277g) obj;
        return this.f57519a == c16277g.f57519a && this.f57520b == c16277g.f57520b;
    }

    public final int hashCode() {
        return ((this.f57519a ? 1 : 0) * 31) + this.f57520b;
    }

    public final String toString() {
        return "TemporalLevelEntry{levelIndependentlyDecodable=" + this.f57519a + '}';
    }
}
