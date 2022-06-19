package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.concurrent.CountDownLatch;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.aidl.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a.class */
public class C5072a {

    /* renamed from: c */
    private static volatile C5072a f18320c;

    /* renamed from: a */
    private Context f18321a;

    /* renamed from: b */
    private IBinderPool f18322b;

    /* renamed from: d */
    private CountDownLatch f18323d;

    /* renamed from: e */
    private final Object f18324e = new Object();

    /* renamed from: f */
    private long f18325f = 0;

    /* renamed from: g */
    private ServiceConnection f18326g = new ServiceConnection() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C5072a.this.f18322b = IBinderPool.Stub.asInterface(iBinder);
            try {
                C5072a.this.f18322b.asBinder().linkToDeath(C5072a.this.f18327h, 0);
            } catch (RemoteException e) {
                C5478q.m32108c("MultiProcess", "onServiceConnected throws :", e);
            }
            C5072a.this.f18323d.countDown();
            C5478q.m32112b("MultiProcess", "onServiceConnected - binderService consume time ：" + (System.currentTimeMillis() - C5072a.this.f18325f));
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C5478q.m32109c("MultiProcess", "BinderPool......onServiceDisconnected");
        }
    };

    /* renamed from: h */
    private IBinder.DeathRecipient f18327h = new IBinder.DeathRecipient() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            C5478q.m32107d("MultiProcess", "binder died.");
            C5072a.this.f18322b.asBinder().unlinkToDeath(C5072a.this.f18327h, 0);
            C5072a.this.f18322b = null;
            C5072a.this.m33113a();
        }
    };

    private C5072a(Context context) {
        this.f18321a = context.getApplicationContext();
        m33113a();
    }

    /* renamed from: a */
    public static C5072a m33111a(Context context) {
        if (f18320c == null) {
            synchronized (C5072a.class) {
                try {
                    if (f18320c == null) {
                        f18320c = new C5072a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18320c;
    }

    /* renamed from: a */
    public void m33113a() {
        synchronized (this) {
            C5478q.m32109c("MultiProcess", "BinderPool......connectBinderPoolService");
            this.f18323d = new CountDownLatch(1);
            this.f18321a.bindService(new Intent(this.f18321a, BinderPoolService.class), this.f18326g, 1);
            this.f18325f = System.currentTimeMillis();
            try {
                this.f18323d.await();
            } catch (InterruptedException e) {
                C5478q.m32108c("MultiProcess", "connectBinderPoolService throws: ", e);
            }
        }
    }

    /* renamed from: a */
    public IBinder m33112a(int i) {
        IBinder iBinder;
        try {
            IBinderPool iBinderPool = this.f18322b;
            iBinder = null;
            if (iBinderPool != null) {
                iBinder = iBinderPool.queryBinder(i);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
            iBinder = null;
        }
        return iBinder;
    }
}
