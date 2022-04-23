package com.mp4parser.iso14496.part15;

import com.b.a.e;
import com.b.a.f;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/b.class */
public final class b extends com.googlecode.mp4parser.b.b.b.b {

    /* renamed from: a  reason: collision with root package name */
    int f34928a;

    /* renamed from: b  reason: collision with root package name */
    int f34929b;

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return "sync";
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
        int a2 = e.a(byteBuffer.get());
        this.f34928a = (a2 & 192) >> 6;
        this.f34929b = a2 & 63;
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        f.c(allocate, this.f34929b + (this.f34928a << 6));
        return (ByteBuffer) allocate.rewind();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f34929b == bVar.f34929b && this.f34928a == bVar.f34928a;
    }

    public final int hashCode() {
        return (this.f34928a * 31) + this.f34929b;
    }

    public final String toString() {
        return "SyncSampleEntry{reserved=" + this.f34928a + ", nalUnitType=" + this.f34929b + '}';
    }
}
