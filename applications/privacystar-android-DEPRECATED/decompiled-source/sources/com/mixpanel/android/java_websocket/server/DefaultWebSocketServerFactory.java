package com.mixpanel.android.java_websocket.server;

import com.mixpanel.android.java_websocket.WebSocketAdapter;
import com.mixpanel.android.java_websocket.WebSocketImpl;
import com.mixpanel.android.java_websocket.drafts.Draft;
import com.mixpanel.android.java_websocket.server.WebSocketServer;
import java.net.Socket;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/server/DefaultWebSocketServerFactory.class */
public class DefaultWebSocketServerFactory implements WebSocketServer.WebSocketServerFactory {
    @Override // com.mixpanel.android.java_websocket.server.WebSocketServer.WebSocketServerFactory, com.mixpanel.android.java_websocket.WebSocketFactory
    public WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, Draft draft, Socket socket) {
        return new WebSocketImpl(webSocketAdapter, draft);
    }

    @Override // com.mixpanel.android.java_websocket.server.WebSocketServer.WebSocketServerFactory, com.mixpanel.android.java_websocket.WebSocketFactory
    public WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, List<Draft> list, Socket socket) {
        return new WebSocketImpl(webSocketAdapter, list);
    }

    @Override // com.mixpanel.android.java_websocket.server.WebSocketServer.WebSocketServerFactory
    public SocketChannel wrapChannel(SocketChannel socketChannel, SelectionKey selectionKey) {
        return socketChannel;
    }
}
