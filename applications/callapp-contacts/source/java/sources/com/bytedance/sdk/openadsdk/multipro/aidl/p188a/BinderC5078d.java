package com.bytedance.sdk.openadsdk.multipro.aidl.p188a;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.aidl.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a/d.class */
public class BinderC5078d extends AbstractBinderC5075a {

    /* renamed from: a */
    private static Map<String, RemoteCallbackList<IFullScreenVideoAdInteractionListener>> f18334a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b */
    private static volatile BinderC5078d f18335b;

    /* renamed from: a */
    public static BinderC5078d m33102a() {
        if (f18335b == null) {
            synchronized (BinderC5078d.class) {
                try {
                    if (f18335b == null) {
                        f18335b = new BinderC5078d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18335b;
    }

    /* renamed from: a */
    private void m33101a(String str, String str2) {
        synchronized (this) {
            try {
                if (f18334a != null) {
                    RemoteCallbackList<IFullScreenVideoAdInteractionListener> remove = "recycleRes".equals(str2) ? f18334a.remove(str) : f18334a.get(str);
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
                C5478q.m32108c("MultiProcess", "fullScreen1 method " + str2 + " throws Exception :", th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeFullVideoCallback(String str, String str2) throws RemoteException {
        m33101a(str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerFullVideoListener(String str, IFullScreenVideoAdInteractionListener iFullScreenVideoAdInteractionListener) throws RemoteException {
        synchronized (this) {
            RemoteCallbackList<IFullScreenVideoAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
            remoteCallbackList.register(iFullScreenVideoAdInteractionListener);
            f18334a.put(str, remoteCallbackList);
        }
    }
}
