package com.appsflyer.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.appsflyer.internal.u */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/u.class */
public final class C1859u {

    /* renamed from: com.appsflyer.internal.u$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/u$b.class */
    public static final class C1860b {

        /* renamed from: ǃ */
        public final boolean f1905;

        /* renamed from: ɩ */
        public final String f1906;

        public C1860b(String str, boolean z) {
            this.f1906 = str;
            this.f1905 = z;
        }

        /* renamed from: ɩ */
        public final boolean m36111() {
            return this.f1905;
        }
    }

    /* renamed from: com.appsflyer.internal.u$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/u$d.class */
    public static final class ServiceConnectionC1861d implements ServiceConnection {

        /* renamed from: ı */
        public boolean f1907;

        /* renamed from: Ι */
        public final LinkedBlockingQueue<IBinder> f1908;

        public ServiceConnectionC1861d() {
            this.f1908 = new LinkedBlockingQueue<>(1);
            this.f1907 = false;
        }

        public /* synthetic */ ServiceConnectionC1861d(byte b) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f1908.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: com.appsflyer.internal.u$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/u$e.class */
    public static final class C1862e implements IInterface {

        /* renamed from: ǃ */
        public IBinder f1909;

        public C1862e(IBinder iBinder) {
            this.f1909 = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f1909;
        }

        /* renamed from: ı */
        public final boolean m36110() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.f1909.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                return z;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* renamed from: ǃ */
        public final String m36109() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f1909.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    /* renamed from: ι */
    public static C1860b m36112(Context context) throws Exception {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                ServiceConnectionC1861d dVar = new ServiceConnectionC1861d((byte) 0);
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    try {
                        if (!context.bindService(intent, dVar, 1)) {
                            if (context != null) {
                                context.unbindService(dVar);
                            }
                            throw new IOException("Google Play connection failed");
                        } else if (!dVar.f1907) {
                            dVar.f1907 = true;
                            C1862e eVar = new C1862e(dVar.f1908.take());
                            C1860b bVar = new C1860b(eVar.m36109(), eVar.m36110());
                            if (context != null) {
                                context.unbindService(dVar);
                            }
                            return bVar;
                        } else {
                            throw new IllegalStateException();
                        }
                    } catch (Exception e) {
                        throw e;
                    }
                } catch (Throwable th) {
                    if (context != null) {
                        context.unbindService(dVar);
                    }
                    throw th;
                }
            } catch (Exception e2) {
                throw e2;
            }
        } else {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
    }
}
