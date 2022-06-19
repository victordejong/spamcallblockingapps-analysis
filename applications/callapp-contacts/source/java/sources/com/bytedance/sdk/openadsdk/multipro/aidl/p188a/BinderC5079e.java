package com.bytedance.sdk.openadsdk.multipro.aidl.p188a;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.aidl.a.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a/e.class */
public class BinderC5079e extends AbstractBinderC5075a {

    /* renamed from: a */
    private static Map<String, RemoteCallbackList<IRewardAdInteractionListener>> f18336a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b */
    private static volatile BinderC5079e f18337b;

    /* renamed from: a */
    public static BinderC5079e m33100a() {
        if (f18337b == null) {
            synchronized (BinderC5079e.class) {
                try {
                    if (f18337b == null) {
                        f18337b = new BinderC5079e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18337b;
    }

    /* renamed from: a */
    private void m33099a(String str, String str2, boolean z, int i, String str3) {
        synchronized (this) {
            try {
                if (f18336a != null) {
                    RemoteCallbackList<IRewardAdInteractionListener> remove = "recycleRes".equals(str2) ? f18336a.remove(str) : f18336a.get(str);
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
                C5478q.m32108c("MultiProcess", "reward2 '" + str2 + "'  throws Exception :", th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeRewardVideoCallback(String str, String str2, boolean z, int i, String str3) throws RemoteException {
        m33099a(str, str2, z, i, str3);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerRewardVideoListener(String str, IRewardAdInteractionListener iRewardAdInteractionListener) throws RemoteException {
        synchronized (this) {
            RemoteCallbackList<IRewardAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
            remoteCallbackList.register(iRewardAdInteractionListener);
            f18336a.put(str, remoteCallbackList);
        }
    }
}
