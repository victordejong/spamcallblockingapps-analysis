package com.p102b.p103a.p104a;

import java.nio.ByteBuffer;
/* renamed from: com.b.a.a.t */
/* loaded from: classes-dex2jar.jar:com/b/a/a/t.class */
public final class C3503t extends AbstractC3455a {
    public C3503t() {
        super("nmhd");
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public final void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public final void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public final long getContentSize() {
        return 4L;
    }
}
