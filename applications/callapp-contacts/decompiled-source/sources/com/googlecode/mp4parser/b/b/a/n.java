package com.googlecode.mp4parser.b.b.a;

import com.b.a.e;
import java.io.IOException;
import java.nio.ByteBuffer;
@g(a = {6})
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/n.class */
public class n extends b {

    /* renamed from: a  reason: collision with root package name */
    public int f33131a;

    public n() {
        this.Y = 6;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final int a() {
        return 1;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final void a(ByteBuffer byteBuffer) throws IOException {
        this.f33131a = e.a(byteBuffer.get());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f33131a == ((n) obj).f33131a;
    }

    public int hashCode() {
        return this.f33131a;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public String toString() {
        return "SLConfigDescriptor{predefined=" + this.f33131a + '}';
    }
}
