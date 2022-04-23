package com.facebook.stetho.websocket;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/websocket/SimpleSession.class */
public interface SimpleSession {
    void close(int i, String str);

    boolean isOpen();

    void sendBinary(byte[] bArr);

    void sendText(String str);
}
