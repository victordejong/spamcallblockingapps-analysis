package com.b.a.a;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/b/a/a/e.class */
public interface e {
    ByteBuffer a(long j, long j2) throws IOException;

    <T extends b> List<T> a(Class<T> cls);

    void a(WritableByteChannel writableByteChannel) throws IOException;

    List<b> b();
}
