package com.bytedance.sdk.openadsdk.multipro.aidl.p188a;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.ICommonPermissionListener;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.HashMap;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.aidl.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a/c.class */
public class BinderC5077c extends AbstractBinderC5075a {

    /* renamed from: a */
    private static HashMap<String, RemoteCallbackList<ICommonPermissionListener>> f18332a = new HashMap<>();

    /* renamed from: b */
    private static volatile BinderC5077c f18333b;

    /* renamed from: a */
    public static BinderC5077c m33103a() {
        if (f18333b == null) {
            synchronized (BinderC5077c.class) {
                try {
                    if (f18333b == null) {
                        f18333b = new BinderC5077c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18333b;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a, com.bytedance.sdk.openadsdk.IListenerManager
    public void broadcastPermissionListener(String str, String str2) throws RemoteException {
        C5478q.m32112b("MultiProcess", "00000 CommonPermissionListenerManagerImpl broadcastDialogListener: 00000" + String.valueOf(str) + ", " + str2);
        RemoteCallbackList<ICommonPermissionListener> remove = f18332a.remove(str);
        if (remove == null) {
            return;
        }
        int beginBroadcast = remove.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            ICommonPermissionListener broadcastItem = remove.getBroadcastItem(i);
            if (broadcastItem != null) {
                C5478q.m32112b("MultiProcess", "CommonPermissionListenerManagerImpl broadcastDialogListener: " + String.valueOf(str) + ", " + str2);
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

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerPermissionListener(String str, ICommonPermissionListener iCommonPermissionListener) throws RemoteException {
        if (iCommonPermissionListener == null) {
            return;
        }
        C5478q.m32112b("MultiProcess", "CommonPermissionListenerManagerImpl registerPermissionListener");
        RemoteCallbackList<ICommonPermissionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iCommonPermissionListener);
        f18332a.put(str, remoteCallbackList);
    }
}
