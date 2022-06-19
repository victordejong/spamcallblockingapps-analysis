package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.p102b.p103a.C3515e;
import java.io.IOException;
import java.nio.ByteBuffer;
@AbstractC16259g(m7537a = {20})
/* renamed from: com.googlecode.mp4parser.b.b.a.m */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/m.class */
public class C16265m extends AbstractC16254b {

    /* renamed from: a */
    public int f57476a;

    public C16265m() {
        this.f57435Y = 20;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final int mo7534a() {
        return 1;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        this.f57476a = C3515e.m37852a(byteBuffer.get());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f57476a == ((C16265m) obj).f57476a;
    }

    public int hashCode() {
        return this.f57476a;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        return "ProfileLevelIndicationDescriptor{profileLevelIndicationIndex=" + Integer.toHexString(this.f57476a) + '}';
    }
}
