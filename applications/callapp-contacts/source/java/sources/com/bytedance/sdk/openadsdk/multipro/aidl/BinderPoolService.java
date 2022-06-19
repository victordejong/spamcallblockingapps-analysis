package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.BinderC5076b;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.BinderC5077c;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.BinderC5078d;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.BinderC5079e;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService.class */
public class BinderPoolService extends Service {

    /* renamed from: a */
    private Binder f18319a = new BinderC5071a();

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$a.class */
    public static class BinderC5071a extends IBinderPool.Stub {
        @Override // com.bytedance.sdk.openadsdk.IBinderPool
        public IBinder queryBinder(int i) throws RemoteException {
            C5478q.m32109c("MultiProcess", "queryBinder...........binderCode=".concat(String.valueOf(i)));
            return i != 0 ? i != 1 ? i != 2 ? i != 4 ? null : BinderC5077c.m33103a() : BinderC5076b.m33104a() : BinderC5078d.m33102a() : BinderC5079e.m33100a();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        C5478q.m32112b("MultiProcess", "BinderPoolService onBind ! ");
        return this.f18319a;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C5478q.m32112b("MultiProcess", "BinderPoolService has been created ! ");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C5478q.m32112b("MultiProcess", "BinderPoolService is destroy ! ");
    }
}
