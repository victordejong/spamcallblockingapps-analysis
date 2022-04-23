package com.mp4parser.iso14496.part15;

import com.googlecode.mp4parser.b.b.b.b;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/d.class */
public final class d extends b {
    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return "tsas";
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        return ByteBuffer.allocate(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public final int hashCode() {
        return 41;
    }
}
