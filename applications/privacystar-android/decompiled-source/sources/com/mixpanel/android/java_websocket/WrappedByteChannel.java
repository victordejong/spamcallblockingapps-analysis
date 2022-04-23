package com.mixpanel.android.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import javax.net.ssl.SSLException;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/WrappedByteChannel.class */
public interface WrappedByteChannel extends ByteChannel {
    boolean isBlocking();

    boolean isNeedRead();

    boolean isNeedWrite();

    int readMore(ByteBuffer byteBuffer) throws SSLException;

    void writeMore() throws IOException;
}
