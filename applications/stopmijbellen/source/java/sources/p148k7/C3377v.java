package p148k7;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.AbstractSelectableChannel;
/* renamed from: k7.v */
/* loaded from: classes2-dex2jar.jar:k7/v.class */
public class C3377v implements ReadableByteChannel, ScatteringByteChannel {

    /* renamed from: a */
    public AbstractSelectableChannel f11413a;

    /* renamed from: b */
    public SocketChannel f11414b;

    public C3377v(SocketChannel socketChannel) throws IOException {
        socketChannel.configureBlocking(false);
        this.f11413a = socketChannel;
        this.f11414b = socketChannel;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f11413a.close();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.f11413a.isOpen();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        return this.f11414b.read(byteBuffer);
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        return this.f11414b.read(byteBufferArr);
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr, int i, int i2) throws IOException {
        return this.f11414b.read(byteBufferArr, i, i2);
    }
}
