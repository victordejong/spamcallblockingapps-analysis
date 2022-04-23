package com.googlecode.mp4parser.b.b.a;

import com.b.a.e;
import java.io.IOException;
import java.nio.ByteBuffer;
@g(a = {20})
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/m.class */
public class m extends b {

    /* renamed from: a  reason: collision with root package name */
    public int f33130a;

    public m() {
        this.Y = 20;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final int a() {
        return 1;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final void a(ByteBuffer byteBuffer) throws IOException {
        this.f33130a = e.a(byteBuffer.get());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f33130a == ((m) obj).f33130a;
    }

    public int hashCode() {
        return this.f33130a;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public String toString() {
        return "ProfileLevelIndicationDescriptor{profileLevelIndicationIndex=" + Integer.toHexString(this.f33130a) + '}';
    }
}
