package io.agora.rtc.internal;

import java.nio.ByteBuffer;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/IMarshallable.class */
public interface IMarshallable {
    void marshall(ByteBuffer byteBuffer);

    byte[] marshall();

    void unmarshall(ByteBuffer byteBuffer);

    void unmarshall(byte[] bArr);
}
