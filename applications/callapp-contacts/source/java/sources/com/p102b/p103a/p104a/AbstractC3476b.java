package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16294e;
import com.p102b.p103a.AbstractC3512b;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* renamed from: com.b.a.a.b */
/* loaded from: classes-dex2jar.jar:com/b/a/a/b.class */
public interface AbstractC3476b {
    void getBox(WritableByteChannel writableByteChannel) throws IOException;

    AbstractC3487e getParent();

    long getSize();

    String getType();

    void parse(AbstractC16294e abstractC16294e, ByteBuffer byteBuffer, long j, AbstractC3512b abstractC3512b) throws IOException;

    void setParent(AbstractC3487e abstractC3487e);
}
