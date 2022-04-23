package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/a.class */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f9853c;

    /* renamed from: a  reason: collision with root package name */
    private Context f9854a;

    /* renamed from: b  reason: collision with root package name */
    private IBinderPool f9855b;

    /* renamed from: d  reason: collision with root package name */
    private CountDownLatch f9856d;
    private final Object e = new Object();
    private long f = 0;
    private ServiceConnection g = new ServiceConnection() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            a.this.f9855b = IBinderPool.Stub.asInterface(iBinder);
            try {
                a.this.f9855b.asBinder().linkToDeath(a.this.h, 0);
            } catch (RemoteException e) {
                q.c("MultiProcess", "onServiceConnected throws :", e);
            }
            a.this.f9856d.countDown();
            q.b("MultiProcess", "onServiceConnected - binderService consume time ：" + (System.currentTimeMillis() - a.this.f));
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            q.c("MultiProcess", "BinderPool......onServiceDisconnected");
        }
    };
    private IBinder.DeathRecipient h = new IBinder.DeathRecipient() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            q.d("MultiProcess", "binder died.");
            a.this.f9855b.asBinder().unlinkToDeath(a.this.h, 0);
            a.this.f9855b = null;
            a.this.a();
        }
    };

    private a(Context context) {
        this.f9854a = context.getApplicationContext();
        a();
    }

    public static a a(Context context) {
        if (f9853c == null) {
            synchronized (a.class) {
                try {
                    if (f9853c == null) {
                        f9853c = new a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9853c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        synchronized (this) {
            q.c("MultiProcess", "BinderPool......connectBinderPoolService");
            this.f9856d = new CountDownLatch(1);
            this.f9854a.bindService(new Intent(this.f9854a, BinderPoolService.class), this.g, 1);
            this.f = System.currentTimeMillis();
            try {
                this.f9856d.await();
            } catch (InterruptedException e) {
                q.c("MultiProcess", "connectBinderPoolService throws: ", e);
            }
        }
    }

    public IBinder a(int i) {
        IBinder iBinder;
        try {
            IBinderPool iBinderPool = this.f9855b;
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
