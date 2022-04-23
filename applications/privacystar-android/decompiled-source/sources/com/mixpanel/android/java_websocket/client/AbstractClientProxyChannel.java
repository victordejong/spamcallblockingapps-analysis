package com.mixpanel.android.java_websocket.client;

import com.mixpanel.android.java_websocket.AbstractWrappedByteChannel;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/client/AbstractClientProxyChannel.class */
public abstract class AbstractClientProxyChannel extends AbstractWrappedByteChannel {
    protected final ByteBuffer proxyHandshake;

    public AbstractClientProxyChannel(ByteChannel byteChannel) {
        super(byteChannel);
        try {
            this.proxyHandshake = ByteBuffer.wrap(buildHandShake().getBytes("ASCII"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public abstract String buildHandShake();

    @Override // com.mixpanel.android.java_websocket.AbstractWrappedByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        return !this.proxyHandshake.hasRemaining() ? super.write(byteBuffer) : super.write(this.proxyHandshake);
    }
}
