package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.p102b.p103a.C3515e;
import java.io.IOException;
import java.nio.ByteBuffer;
@AbstractC16259g(m7537a = {6})
/* renamed from: com.googlecode.mp4parser.b.b.a.n */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/n.class */
public class C16266n extends AbstractC16254b {

    /* renamed from: a */
    public int f57477a;

    public C16266n() {
        this.f57435Y = 6;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final int mo7534a() {
        return 1;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        this.f57477a = C3515e.m37852a(byteBuffer.get());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f57477a == ((C16266n) obj).f57477a;
    }

    public int hashCode() {
        return this.f57477a;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        return "SLConfigDescriptor{predefined=" + this.f57477a + '}';
    }
}
