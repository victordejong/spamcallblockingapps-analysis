package com.googlecode.mp4parser.p420b.p422b.p423a;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
/* renamed from: com.googlecode.mp4parser.b.b.a.o */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/o.class */
public class C16267o extends AbstractC16254b {

    /* renamed from: a */
    private static Logger f57478a = Logger.getLogger(C16267o.class.getName());

    /* renamed from: b */
    private ByteBuffer f57479b;

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    final int mo7534a() {
        throw new RuntimeException("sdjlhfl");
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        this.f57479b = byteBuffer.slice();
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        return "UnknownDescriptor{tag=" + this.f57435Y + ", sizeOfInstance=" + this.f57436Z + ", data=" + this.f57479b + '}';
    }
}
