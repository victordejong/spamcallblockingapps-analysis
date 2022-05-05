package com.facebook.stetho.websocket;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/websocket/SimpleEndpoint.class */
public interface SimpleEndpoint {
    void onClose(SimpleSession simpleSession, int i, String str);

    void onError(SimpleSession simpleSession, Throwable th);

    void onMessage(SimpleSession simpleSession, String str);

    void onMessage(SimpleSession simpleSession, byte[] bArr, int i);

    void onOpen(SimpleSession simpleSession);
}
