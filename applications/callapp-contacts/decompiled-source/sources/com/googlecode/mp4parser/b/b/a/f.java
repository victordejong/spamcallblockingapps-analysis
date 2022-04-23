package com.googlecode.mp4parser.b.b.a;

import com.b.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlinx.serialization.json.internal.JsonReaderKt;
@g(a = {5})
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/f.class */
public class f extends b {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f33120a;

    public f() {
        this.Y = 5;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    final int a() {
        return this.f33120a.length;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final void a(ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f33120a = bArr;
        byteBuffer.get(bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.equals(this.f33120a, ((f) obj).f33120a);
    }

    public int hashCode() {
        byte[] bArr = this.f33120a;
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DecoderSpecificInfo");
        sb.append("{bytes=");
        byte[] bArr = this.f33120a;
        sb.append(bArr == null ? JsonReaderKt.NULL : c.a(bArr));
        sb.append('}');
        return sb.toString();
    }
}
