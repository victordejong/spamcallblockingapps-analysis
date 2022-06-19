package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.p102b.p103a.C3513c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlinx.serialization.json.internal.JsonReaderKt;
@AbstractC16259g(m7537a = {5})
/* renamed from: com.googlecode.mp4parser.b.b.a.f */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/f.class */
public class C16258f extends AbstractC16254b {

    /* renamed from: a */
    public byte[] f57456a;

    public C16258f() {
        this.f57435Y = 5;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    final int mo7534a() {
        return this.f57456a.length;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f57456a = bArr;
        byteBuffer.get(bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.equals(this.f57456a, ((C16258f) obj).f57456a);
    }

    public int hashCode() {
        byte[] bArr = this.f57456a;
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DecoderSpecificInfo");
        sb.append("{bytes=");
        byte[] bArr = this.f57456a;
        sb.append(bArr == null ? JsonReaderKt.NULL : C3513c.m37856a(bArr));
        sb.append('}');
        return sb.toString();
    }
}
