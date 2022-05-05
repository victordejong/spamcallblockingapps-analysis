package com.facebook.stetho.server;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/SocketLikeHandler.class */
public interface SocketLikeHandler {
    void onAccepted(SocketLike socketLike) throws IOException;
}
