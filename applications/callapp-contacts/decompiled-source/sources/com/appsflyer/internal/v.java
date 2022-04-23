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
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v.class */
final class v {

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$b.class */
    static final class b {

        /* renamed from: ı  reason: contains not printable characters */
        final String f331;

        /* renamed from: Ι  reason: contains not printable characters */
        private final boolean f332;

        b(String str, boolean z) {
            this.f331 = str;
            this.f332 = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: ɩ  reason: contains not printable characters */
        public final boolean m1028() {
            return this.f332;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$c.class */
    static final class c implements ServiceConnection {

        /* renamed from: ǃ  reason: contains not printable characters */
        boolean f333;

        /* renamed from: Ι  reason: contains not printable characters */
        final LinkedBlockingQueue<IBinder> f334;

        private c() {
            this.f334 = new LinkedBlockingQueue<>(1);
            this.f333 = false;
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f334.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$e.class */
    static final class e implements IInterface {

        /* renamed from: Ι  reason: contains not printable characters */
        private IBinder f335;

        e(IBinder iBinder) {
            this.f335 = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f335;
        }

        /* renamed from: Ι  reason: contains not printable characters */
        final boolean m1029() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.f335.transact(2, obtain, obtain2, 0);
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

        /* renamed from: ι  reason: contains not printable characters */
        public final String m1030() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f335.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    v() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ɩ  reason: contains not printable characters */
    public static b m1027(Context context) throws Exception {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                c cVar = new c((byte) 0);
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    try {
                        if (!context.bindService(intent, cVar, 1)) {
                            if (context != null) {
                                context.unbindService(cVar);
                            }
                            throw new IOException("Google Play connection failed");
                        } else if (!cVar.f333) {
                            cVar.f333 = true;
                            e eVar = new e(cVar.f334.take());
                            b bVar = new b(eVar.m1030(), eVar.m1029());
                            if (context != null) {
                                context.unbindService(cVar);
                            }
                            return bVar;
                        } else {
                            throw new IllegalStateException();
                        }
                    } catch (Exception e2) {
                        throw e2;
                    }
                } catch (Throwable th) {
                    if (context != null) {
                        context.unbindService(cVar);
                    }
                    throw th;
                }
            } catch (Exception e3) {
                throw e3;
            }
        } else {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
    }
}
