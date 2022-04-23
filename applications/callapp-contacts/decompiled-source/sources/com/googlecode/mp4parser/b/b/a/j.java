package com.googlecode.mp4parser.b.b.a;

import com.b.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlinx.serialization.json.internal.JsonReaderKt;
@g(a = {19})
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/j.class */
public class j extends b {

    /* renamed from: a  reason: collision with root package name */
    byte[] f33127a;

    public j() {
        this.Y = 19;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    final int a() {
        throw new RuntimeException("Not Implemented");
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final void a(ByteBuffer byteBuffer) throws IOException {
        if (b() > 0) {
            byte[] bArr = new byte[b()];
            this.f33127a = bArr;
            byteBuffer.get(bArr);
        }
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ExtensionDescriptor");
        sb.append("{bytes=");
        byte[] bArr = this.f33127a;
        sb.append(bArr == null ? JsonReaderKt.NULL : c.a(bArr));
        sb.append('}');
        return sb.toString();
    }
}
