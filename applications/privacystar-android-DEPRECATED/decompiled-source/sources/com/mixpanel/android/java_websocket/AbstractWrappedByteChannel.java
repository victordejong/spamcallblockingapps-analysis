package com.mixpanel.android.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SocketChannel;
import javax.net.ssl.SSLException;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/AbstractWrappedByteChannel.class */
public class AbstractWrappedByteChannel implements WrappedByteChannel {
    private final ByteChannel channel;

    public AbstractWrappedByteChannel(WrappedByteChannel wrappedByteChannel) {
        this.channel = wrappedByteChannel;
    }

    public AbstractWrappedByteChannel(ByteChannel byteChannel) {
        this.channel = byteChannel;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    @Override // com.mixpanel.android.java_websocket.WrappedByteChannel
    public boolean isBlocking() {
        if (this.channel instanceof SocketChannel) {
            return ((SocketChannel) this.channel).isBlocking();
        }
        if (this.channel instanceof WrappedByteChannel) {
            return ((WrappedByteChannel) this.channel).isBlocking();
        }
        return false;
    }

    @Override // com.mixpanel.android.java_websocket.WrappedByteChannel
    public boolean isNeedRead() {
        return this.channel instanceof WrappedByteChannel ? ((WrappedByteChannel) this.channel).isNeedRead() : false;
    }

    @Override // com.mixpanel.android.java_websocket.WrappedByteChannel
    public boolean isNeedWrite() {
        return this.channel instanceof WrappedByteChannel ? ((WrappedByteChannel) this.channel).isNeedWrite() : false;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.channel.isOpen();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        return this.channel.read(byteBuffer);
    }

    @Override // com.mixpanel.android.java_websocket.WrappedByteChannel
    public int readMore(ByteBuffer byteBuffer) throws SSLException {
        return this.channel instanceof WrappedByteChannel ? ((WrappedByteChannel) this.channel).readMore(byteBuffer) : 0;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        return this.channel.write(byteBuffer);
    }

    @Override // com.mixpanel.android.java_websocket.WrappedByteChannel
    public void writeMore() throws IOException {
        if (this.channel instanceof WrappedByteChannel) {
            ((WrappedByteChannel) this.channel).writeMore();
        }
    }
}
