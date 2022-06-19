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
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@Deprecated
/* renamed from: com.appsflyer.internal.aa */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aa.class */
public final class C0703aa {
    public final long AFInAppEventParameterName;
    private final boolean AFInAppEventType;
    public final String AFKeystoreWrapper;

    /* renamed from: com.appsflyer.internal.aa$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aa$b.class */
    public static final class C0704b implements IInterface {
        private final IBinder values;

        public C0704b(IBinder iBinder) {
            this.values = iBinder;
        }

        public final String AFKeystoreWrapper() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.values.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.values;
        }

        /* JADX WARN: Finally extract failed */
        public final boolean valueOf() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.values.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
    }

    /* renamed from: com.appsflyer.internal.aa$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aa$d.class */
    public static final class C0705d {
        public final String valueOf;
        private final boolean values;

        public C0705d(String str, boolean z) {
            this.valueOf = str;
            this.values = z;
        }

        public final boolean valueOf() {
            return this.values;
        }
    }

    /* renamed from: com.appsflyer.internal.aa$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aa$e.class */
    public static final class ServiceConnectionC0706e implements ServiceConnection {
        public boolean AFInAppEventParameterName;
        public final LinkedBlockingQueue<IBinder> values;

        private ServiceConnectionC0706e() {
            this.values = new LinkedBlockingQueue<>(1);
            this.AFInAppEventParameterName = false;
        }

        public /* synthetic */ ServiceConnectionC0706e(byte b) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.values.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public C0703aa() {
    }

    public C0703aa(String str, long j, boolean z) {
        this.AFKeystoreWrapper = str;
        this.AFInAppEventParameterName = j;
        this.AFInAppEventType = z;
    }

    public static C0705d values(Context context) throws Exception {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            ServiceConnectionC0706e serviceConnectionC0706e = new ServiceConnectionC0706e((byte) 0);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (!context.bindService(intent, serviceConnectionC0706e, 1)) {
                    context.unbindService(serviceConnectionC0706e);
                    throw new IOException("Google Play connection failed");
                } else if (serviceConnectionC0706e.AFInAppEventParameterName) {
                    throw new IllegalStateException("Cannot call get on this connection more than once");
                } else {
                    serviceConnectionC0706e.AFInAppEventParameterName = true;
                    IBinder poll = serviceConnectionC0706e.values.poll(10L, TimeUnit.SECONDS);
                    if (poll == null) {
                        throw new TimeoutException("Timed out waiting for the service connection");
                    }
                    C0704b c0704b = new C0704b(poll);
                    return new C0705d(c0704b.AFKeystoreWrapper(), c0704b.valueOf());
                }
            } finally {
                context.unbindService(serviceConnectionC0706e);
            }
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }

    public final boolean valueOf() {
        return this.AFInAppEventType;
    }
}
