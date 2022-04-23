package com.googlecode.mp4parser.b.b.b;

import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/d.class */
public final class d extends b {

    /* renamed from: a  reason: collision with root package name */
    private short f33145a;

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return "roll";
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
        this.f33145a = byteBuffer.getShort();
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort(this.f33145a);
        allocate.rewind();
        return allocate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f33145a == ((d) obj).f33145a;
    }

    public final int hashCode() {
        return this.f33145a;
    }
}
