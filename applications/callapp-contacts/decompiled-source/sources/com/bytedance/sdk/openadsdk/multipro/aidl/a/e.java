package com.bytedance.sdk.openadsdk.multipro.aidl.a;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a/e.class */
public class e extends a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, RemoteCallbackList<IRewardAdInteractionListener>> f9865a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b  reason: collision with root package name */
    private static volatile e f9866b;

    public static e a() {
        if (f9866b == null) {
            synchronized (e.class) {
                try {
                    if (f9866b == null) {
                        f9866b = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9866b;
    }

    private void a(String str, String str2, boolean z, int i, String str3) {
        synchronized (this) {
            try {
                if (f9865a != null) {
                    RemoteCallbackList<IRewardAdInteractionListener> remove = "recycleRes".equals(str2) ? f9865a.remove(str) : f9865a.get(str);
                    if (remove != null) {
                        int beginBroadcast = remove.beginBroadcast();
                        for (int i2 = 0; i2 < beginBroadcast; i2++) {
                            IRewardAdInteractionListener broadcastItem = remove.getBroadcastItem(i2);
                            if (broadcastItem != null) {
                                if ("onAdShow".equals(str2)) {
                                    broadcastItem.onAdShow();
                                } else if ("onAdClose".equals(str2)) {
                                    broadcastItem.onAdClose();
                                } else if ("onVideoComplete".equals(str2)) {
                                    broadcastItem.onVideoComplete();
                                } else if ("onVideoError".equals(str2)) {
                                    broadcastItem.onVideoError();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    broadcastItem.onAdVideoBarClick();
                                } else if ("onRewardVerify".equals(str2)) {
                                    broadcastItem.onRewardVerify(z, i, str3);
                                } else if ("onSkippedVideo".equals(str2)) {
                                    broadcastItem.onSkippedVideo();
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
                q.c("MultiProcess", "reward2 '" + str2 + "'  throws Exception :", th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.a.a, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeRewardVideoCallback(String str, String str2, boolean z, int i, String str3) throws RemoteException {
        a(str, str2, z, i, str3);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.a.a, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerRewardVideoListener(String str, IRewardAdInteractionListener iRewardAdInteractionListener) throws RemoteException {
        synchronized (this) {
            RemoteCallbackList<IRewardAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
            remoteCallbackList.register(iRewardAdInteractionListener);
            f9865a.put(str, remoteCallbackList);
        }
    }
}
