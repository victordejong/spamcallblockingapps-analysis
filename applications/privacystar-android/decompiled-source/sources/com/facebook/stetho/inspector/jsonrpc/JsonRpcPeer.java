package com.facebook.stetho.inspector.jsonrpc;

import android.database.Observable;
import com.facebook.stetho.common.Util;
import com.facebook.stetho.inspector.jsonrpc.protocol.JsonRpcRequest;
import com.facebook.stetho.json.ObjectMapper;
import com.facebook.stetho.websocket.SimpleSession;
import java.nio.channels.NotYetConnectedException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
import org.json.JSONObject;
@ThreadSafe
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/jsonrpc/JsonRpcPeer.class */
public class JsonRpcPeer {
    @GuardedBy("this")
    private long mNextRequestId;
    private final ObjectMapper mObjectMapper;
    private final SimpleSession mPeer;
    @GuardedBy("this")
    private final Map<Long, PendingRequest> mPendingRequests = new HashMap();
    private final DisconnectObservable mDisconnectObservable = new DisconnectObservable();

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/jsonrpc/JsonRpcPeer$DisconnectObservable.class */
    private static class DisconnectObservable extends Observable<DisconnectReceiver> {
        private DisconnectObservable() {
        }

        public void onDisconnect() {
            int size = this.mObservers.size();
            for (int i = 0; i < size; i++) {
                ((DisconnectReceiver) this.mObservers.get(i)).onDisconnect();
            }
        }
    }

    public JsonRpcPeer(ObjectMapper objectMapper, SimpleSession simpleSession) {
        this.mObjectMapper = objectMapper;
        this.mPeer = (SimpleSession) Util.throwIfNull(simpleSession);
    }

    private long preparePendingRequest(PendingRequestCallback pendingRequestCallback) {
        long j;
        synchronized (this) {
            j = this.mNextRequestId;
            this.mNextRequestId = 1 + j;
            this.mPendingRequests.put(Long.valueOf(j), new PendingRequest(j, pendingRequestCallback));
        }
        return j;
    }

    public PendingRequest getAndRemovePendingRequest(long j) {
        PendingRequest remove;
        synchronized (this) {
            remove = this.mPendingRequests.remove(Long.valueOf(j));
        }
        return remove;
    }

    public SimpleSession getWebSocket() {
        return this.mPeer;
    }

    public void invokeDisconnectReceivers() {
        this.mDisconnectObservable.onDisconnect();
    }

    public void invokeMethod(String str, Object obj, @Nullable PendingRequestCallback pendingRequestCallback) throws NotYetConnectedException {
        Util.throwIfNull(str);
        this.mPeer.sendText(((JSONObject) this.mObjectMapper.convertValue(new JsonRpcRequest(pendingRequestCallback != null ? Long.valueOf(preparePendingRequest(pendingRequestCallback)) : null, str, (JSONObject) this.mObjectMapper.convertValue(obj, JSONObject.class)), JSONObject.class)).toString());
    }

    public void registerDisconnectReceiver(DisconnectReceiver disconnectReceiver) {
        this.mDisconnectObservable.registerObserver(disconnectReceiver);
    }

    public void unregisterDisconnectReceiver(DisconnectReceiver disconnectReceiver) {
        this.mDisconnectObservable.unregisterObserver(disconnectReceiver);
    }
}
