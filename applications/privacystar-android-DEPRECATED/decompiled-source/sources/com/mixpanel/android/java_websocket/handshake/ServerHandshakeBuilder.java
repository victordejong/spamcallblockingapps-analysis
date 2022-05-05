package com.mixpanel.android.java_websocket.handshake;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/handshake/ServerHandshakeBuilder.class */
public interface ServerHandshakeBuilder extends HandshakeBuilder, ServerHandshake {
    void setHttpStatus(short s);

    void setHttpStatusMessage(String str);
}
