package com.b.a.a;

import com.googlecode.mp4parser.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b.class */
public interface b {
    void getBox(WritableByteChannel writableByteChannel) throws IOException;

    e getParent();

    long getSize();

    String getType();

    void parse(e eVar, ByteBuffer byteBuffer, long j, com.b.a.b bVar) throws IOException;

    void setParent(e eVar);
}
