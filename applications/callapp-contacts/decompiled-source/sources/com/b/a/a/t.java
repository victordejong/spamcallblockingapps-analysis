package com.b.a.a;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/b/a/a/t.class */
public final class t extends a {
    public t() {
        super("nmhd");
    }

    @Override // com.googlecode.mp4parser.a
    public final void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public final void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public final long getContentSize() {
        return 4L;
    }
}
