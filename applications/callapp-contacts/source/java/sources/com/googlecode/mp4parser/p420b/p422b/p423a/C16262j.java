package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.p102b.p103a.C3513c;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlinx.serialization.json.internal.JsonReaderKt;
@AbstractC16259g(m7537a = {19})
/* renamed from: com.googlecode.mp4parser.b.b.a.j */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/j.class */
public class C16262j extends AbstractC16254b {

    /* renamed from: a */
    byte[] f57473a;

    public C16262j() {
        this.f57435Y = 19;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    final int mo7534a() {
        throw new RuntimeException("Not Implemented");
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        if (m7544b() > 0) {
            byte[] bArr = new byte[m7544b()];
            this.f57473a = bArr;
            byteBuffer.get(bArr);
        }
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ExtensionDescriptor");
        sb.append("{bytes=");
        byte[] bArr = this.f57473a;
        sb.append(bArr == null ? JsonReaderKt.NULL : C3513c.m37856a(bArr));
        sb.append('}');
        return sb.toString();
    }
}
