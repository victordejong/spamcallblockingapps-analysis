package com.facebook.stetho.inspector.helper;

import com.facebook.stetho.common.LogRedirector;
import com.facebook.stetho.common.Util;
import com.facebook.stetho.inspector.jsonrpc.DisconnectReceiver;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.jsonrpc.PendingRequestCallback;
import java.nio.channels.NotYetConnectedException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/helper/ChromePeerManager.class */
public class ChromePeerManager {
    private static final String TAG = "ChromePeerManager";
    @GuardedBy("this")
    private PeerRegistrationListener mListener;
    @GuardedBy("this")
    private final Map<JsonRpcPeer, DisconnectReceiver> mReceivingPeers = new HashMap();
    @GuardedBy("this")
    private JsonRpcPeer[] mReceivingPeersSnapshot;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/helper/ChromePeerManager$UnregisterOnDisconnect.class */
    public class UnregisterOnDisconnect implements DisconnectReceiver {
        private final JsonRpcPeer mPeer;

        public UnregisterOnDisconnect(JsonRpcPeer jsonRpcPeer) {
            this.mPeer = jsonRpcPeer;
        }

        @Override // com.facebook.stetho.inspector.jsonrpc.DisconnectReceiver
        public void onDisconnect() {
            ChromePeerManager.this.removePeer(this.mPeer);
        }
    }

    private JsonRpcPeer[] getReceivingPeersSnapshot() {
        JsonRpcPeer[] jsonRpcPeerArr;
        synchronized (this) {
            if (this.mReceivingPeersSnapshot == null) {
                this.mReceivingPeersSnapshot = (JsonRpcPeer[]) this.mReceivingPeers.keySet().toArray(new JsonRpcPeer[this.mReceivingPeers.size()]);
            }
            jsonRpcPeerArr = this.mReceivingPeersSnapshot;
        }
        return jsonRpcPeerArr;
    }

    private void sendMessageToPeers(String str, Object obj, @Nullable PendingRequestCallback pendingRequestCallback) {
        for (JsonRpcPeer jsonRpcPeer : getReceivingPeersSnapshot()) {
            try {
                jsonRpcPeer.invokeMethod(str, obj, pendingRequestCallback);
            } catch (NotYetConnectedException e) {
                LogRedirector.m384e(TAG, "Error delivering data to Chrome", e);
            }
        }
    }

    public boolean addPeer(JsonRpcPeer jsonRpcPeer) {
        synchronized (this) {
            if (this.mReceivingPeers.containsKey(jsonRpcPeer)) {
                return false;
            }
            UnregisterOnDisconnect unregisterOnDisconnect = new UnregisterOnDisconnect(jsonRpcPeer);
            jsonRpcPeer.registerDisconnectReceiver(unregisterOnDisconnect);
            this.mReceivingPeers.put(jsonRpcPeer, unregisterOnDisconnect);
            this.mReceivingPeersSnapshot = null;
            if (this.mListener != null) {
                this.mListener.onPeerRegistered(jsonRpcPeer);
            }
            return true;
        }
    }

    public boolean hasRegisteredPeers() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.mReceivingPeers.isEmpty();
        }
        return !isEmpty;
    }

    public void invokeMethodOnPeers(String str, Object obj, PendingRequestCallback pendingRequestCallback) {
        Util.throwIfNull(pendingRequestCallback);
        sendMessageToPeers(str, obj, pendingRequestCallback);
    }

    public void removePeer(JsonRpcPeer jsonRpcPeer) {
        synchronized (this) {
            if (this.mReceivingPeers.remove(jsonRpcPeer) != null) {
                this.mReceivingPeersSnapshot = null;
                if (this.mListener != null) {
                    this.mListener.onPeerUnregistered(jsonRpcPeer);
                }
            }
        }
    }

    public void sendNotificationToPeers(String str, Object obj) {
        sendMessageToPeers(str, obj, null);
    }

    public void setListener(PeerRegistrationListener peerRegistrationListener) {
        synchronized (this) {
            this.mListener = peerRegistrationListener;
        }
    }
}
