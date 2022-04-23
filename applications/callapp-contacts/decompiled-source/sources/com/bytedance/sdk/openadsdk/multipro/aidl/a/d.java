package com.bytedance.sdk.openadsdk.multipro.aidl.a;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a/d.class */
public class d extends a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, RemoteCallbackList<IFullScreenVideoAdInteractionListener>> f9863a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f9864b;

    public static d a() {
        if (f9864b == null) {
            synchronized (d.class) {
                try {
                    if (f9864b == null) {
                        f9864b = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9864b;
    }

    private void a(String str, String str2) {
        synchronized (this) {
            try {
                if (f9863a != null) {
                    RemoteCallbackList<IFullScreenVideoAdInteractionListener> remove = "recycleRes".equals(str2) ? f9863a.remove(str) : f9863a.get(str);
                    if (remove != null) {
                        int beginBroadcast = remove.beginBroadcast();
                        for (int i = 0; i < beginBroadcast; i++) {
                            IFullScreenVideoAdInteractionListener broadcastItem = remove.getBroadcastItem(i);
                            if (broadcastItem != null) {
                                if ("onAdShow".equals(str2)) {
                                    broadcastItem.onAdShow();
                                } else if ("onAdClose".equals(str2)) {
                                    broadcastItem.onAdClose();
                                } else if ("onVideoComplete".equals(str2)) {
                                    broadcastItem.onVideoComplete();
                                } else if ("onSkippedVideo".equals(str2)) {
                                    broadcastItem.onSkippedVideo();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    broadcastItem.onAdVideoBarClick();
                                } else if ("recycleRes".equals(str2)) {
                                    broadcastItem.onDestroy();
                                }
                            }
                        }
                        remove.finishBroadcast();
                        if ("recycleRes".equals(str2)) {
                            remove.kill();
                        }
                    }
                }
            } catch (Throwable th) {
                q.c("MultiProcess", "fullScreen1 method " + str2 + " throws Exception :", th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.a.a, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeFullVideoCallback(String str, String str2) throws RemoteException {
        a(str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.a.a, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerFullVideoListener(String str, IFullScreenVideoAdInteractionListener iFullScreenVideoAdInteractionListener) throws RemoteException {
        synchronized (this) {
            RemoteCallbackList<IFullScreenVideoAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
            remoteCallbackList.register(iFullScreenVideoAdInteractionListener);
            f9863a.put(str, remoteCallbackList);
        }
    }
}
