package com.facebook.stetho.server;

import android.net.LocalSocket;
import java.io.IOException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/LazySocketHandler.class */
public class LazySocketHandler implements SocketHandler {
    @Nullable
    private SocketHandler mSocketHandler;
    private final SocketHandlerFactory mSocketHandlerFactory;

    public LazySocketHandler(SocketHandlerFactory socketHandlerFactory) {
        this.mSocketHandlerFactory = socketHandlerFactory;
    }

    @Nonnull
    private SocketHandler getSocketHandler() {
        SocketHandler socketHandler;
        synchronized (this) {
            if (this.mSocketHandler == null) {
                this.mSocketHandler = this.mSocketHandlerFactory.create();
            }
            socketHandler = this.mSocketHandler;
        }
        return socketHandler;
    }

    @Override // com.facebook.stetho.server.SocketHandler
    public void onAccepted(LocalSocket localSocket) throws IOException {
        getSocketHandler().onAccepted(localSocket);
    }
}
