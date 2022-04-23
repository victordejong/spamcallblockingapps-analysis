package com.bytedance.sdk.openadsdk.multipro.aidl.a;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.ICommonPermissionListener;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a/c.class */
public class c extends a {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, RemoteCallbackList<ICommonPermissionListener>> f9861a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static volatile c f9862b;

    public static c a() {
        if (f9862b == null) {
            synchronized (c.class) {
                try {
                    if (f9862b == null) {
                        f9862b = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9862b;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.a.a, com.bytedance.sdk.openadsdk.IListenerManager
    public void broadcastPermissionListener(String str, String str2) throws RemoteException {
        q.b("MultiProcess", "00000 CommonPermissionListenerManagerImpl broadcastDialogListener: 00000" + String.valueOf(str) + ", " + str2);
        RemoteCallbackList<ICommonPermissionListener> remove = f9861a.remove(str);
        if (remove != null) {
            int beginBroadcast = remove.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                ICommonPermissionListener broadcastItem = remove.getBroadcastItem(i);
                if (broadcastItem != null) {
                    q.b("MultiProcess", "CommonPermissionListenerManagerImpl broadcastDialogListener: " + String.valueOf(str) + ", " + str2);
                    if (str2 == null) {
                        broadcastItem.onGranted();
                    } else {
                        broadcastItem.onDenied(str2);
                    }
                }
            }
            remove.finishBroadcast();
            remove.kill();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.a.a, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerPermissionListener(String str, ICommonPermissionListener iCommonPermissionListener) throws RemoteException {
        if (iCommonPermissionListener != null) {
            q.b("MultiProcess", "CommonPermissionListenerManagerImpl registerPermissionListener");
            RemoteCallbackList<ICommonPermissionListener> remoteCallbackList = new RemoteCallbackList<>();
            remoteCallbackList.register(iCommonPermissionListener);
            f9861a.put(str, remoteCallbackList);
        }
    }
}
