package com.googlecode.mp4parser.b.b.a;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/o.class */
public class o extends b {

    /* renamed from: a  reason: collision with root package name */
    private static Logger f33132a = Logger.getLogger(o.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f33133b;

    @Override // com.googlecode.mp4parser.b.b.a.b
    final int a() {
        throw new RuntimeException("sdjlhfl");
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final void a(ByteBuffer byteBuffer) throws IOException {
        this.f33133b = byteBuffer.slice();
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public String toString() {
        return "UnknownDescriptor{tag=" + this.Y + ", sizeOfInstance=" + this.Z + ", data=" + this.f33133b + '}';
    }
}
