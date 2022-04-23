package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.b;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.c;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.d;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.e;
import com.bytedance.sdk.openadsdk.utils.q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService.class */
public class BinderPoolService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private Binder f9852a = new a();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$a.class */
    public static class a extends IBinderPool.Stub {
        @Override // com.bytedance.sdk.openadsdk.IBinderPool
        public IBinder queryBinder(int i) throws RemoteException {
            q.c("MultiProcess", "queryBinder...........binderCode=".concat(String.valueOf(i)));
            return i != 0 ? i != 1 ? i != 2 ? i != 4 ? null : c.a() : b.a() : d.a() : e.a();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        q.b("MultiProcess", "BinderPoolService onBind ! ");
        return this.f9852a;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        q.b("MultiProcess", "BinderPoolService has been created ! ");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        q.b("MultiProcess", "BinderPoolService is destroy ! ");
    }
}
