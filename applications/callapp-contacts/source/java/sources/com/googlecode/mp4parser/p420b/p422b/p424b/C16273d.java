package com.googlecode.mp4parser.p420b.p422b.p424b;

import java.nio.ByteBuffer;
/* renamed from: com.googlecode.mp4parser.b.b.b.d */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/d.class */
public final class C16273d extends AbstractC16270b {

    /* renamed from: a */
    private short f57495a;

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final String mo5963a() {
        return "roll";
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final void mo5962a(ByteBuffer byteBuffer) {
        this.f57495a = byteBuffer.getShort();
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: b */
    public final ByteBuffer mo5961b() {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort(this.f57495a);
        allocate.rewind();
        return allocate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f57495a == ((C16273d) obj).f57495a;
    }

    public final int hashCode() {
        return this.f57495a;
    }
}
