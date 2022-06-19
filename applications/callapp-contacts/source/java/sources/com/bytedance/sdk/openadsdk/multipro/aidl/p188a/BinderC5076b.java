package com.bytedance.sdk.openadsdk.multipro.aidl.p188a;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.ICommonDialogListener;
import java.util.HashMap;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.aidl.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a/b.class */
public class BinderC5076b extends AbstractBinderC5075a {

    /* renamed from: a */
    public static HashMap<String, RemoteCallbackList<ICommonDialogListener>> f18330a = new HashMap<>();

    /* renamed from: b */
    private static volatile BinderC5076b f18331b;

    /* renamed from: a */
    public static BinderC5076b m33104a() {
        if (f18331b == null) {
            synchronized (BinderC5076b.class) {
                try {
                    if (f18331b == null) {
                        f18331b = new BinderC5076b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18331b;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a, com.bytedance.sdk.openadsdk.IListenerManager
    public void broadcastDialogListener(String str, int i) throws RemoteException {
        RemoteCallbackList<ICommonDialogListener> remove = f18330a.remove(str);
        if (remove == null) {
            return;
        }
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

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerDialogListener(String str, ICommonDialogListener iCommonDialogListener) throws RemoteException {
        if (iCommonDialogListener == null) {
            return;
        }
        RemoteCallbackList<ICommonDialogListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iCommonDialogListener);
        f18330a.put(str, remoteCallbackList);
    }
}
