package com.bytedance.sdk.openadsdk.multipro.aidl.a;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.ICommonDialogListener;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a/b.class */
public class b extends a {

    /* renamed from: a  reason: collision with root package name */
    public static HashMap<String, RemoteCallbackList<ICommonDialogListener>> f9859a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f9860b;

    public static b a() {
        if (f9860b == null) {
            synchronized (b.class) {
                try {
                    if (f9860b == null) {
                        f9860b = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9860b;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.a.a, com.bytedance.sdk.openadsdk.IListenerManager
    public void broadcastDialogListener(String str, int i) throws RemoteException {
        RemoteCallbackList<ICommonDialogListener> remove = f9859a.remove(str);
        if (remove != null) {
            int beginBroadcast = remove.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                ICommonDialogListener broadcastItem = remove.getBroadcastItem(i2);
                if (broadcastItem != null) {
                    if (i == 1) {
                        broadcastItem.onDialogBtnYes();
                    } else if (i == 2) {
                        broadcastItem.onDialogBtnNo();
                    } else if (i != 3) {
                        broadcastItem.onDialogCancel();
                    } else {
                        broadcastItem.onDialogCancel();
                    }
                }
            }
            remove.finishBroadcast();
            remove.kill();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.a.a, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerDialogListener(String str, ICommonDialogListener iCommonDialogListener) throws RemoteException {
        if (iCommonDialogListener != null) {
            RemoteCallbackList<ICommonDialogListener> remoteCallbackList = new RemoteCallbackList<>();
            remoteCallbackList.register(iCommonDialogListener);
            f9859a.put(str, remoteCallbackList);
        }
    }
}
