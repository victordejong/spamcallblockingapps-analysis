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
/* renamed from: com.appsflyer.internal.v */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v.class */
final class C3442v {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.v$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$b.class */
    public static final class C3443b {

        /* renamed from: ı */
        final String f13007;

        /* renamed from: Ι */
        private final boolean f13008;

        C3443b(String str, boolean z) {
            this.f13007 = str;
            this.f13008 = z;
        }

        /* renamed from: ɩ */
        public final boolean m37946() {
            return this.f13008;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.v$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$c.class */
    public static final class ServiceConnectionC3444c implements ServiceConnection {

        /* renamed from: ǃ */
        boolean f13009;

        /* renamed from: Ι */
        final LinkedBlockingQueue<IBinder> f13010;

        private ServiceConnectionC3444c() {
            this.f13010 = new LinkedBlockingQueue<>(1);
            this.f13009 = false;
        }

        /* synthetic */ ServiceConnectionC3444c(byte b) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f13010.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.v$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$e.class */
    public static final class C3445e implements IInterface {

        /* renamed from: Ι */
        private IBinder f13011;

        C3445e(IBinder iBinder) {
            this.f13011 = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f13011;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: Ι */
        final boolean m37945() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.f13011.transact(2, obtain, obtain2, 0);
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

        /* renamed from: ι */
        public final String m37944() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f13011.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    C3442v() {
    }

    /* renamed from: ɩ */
    public static C3443b m37947(Context context) throws Exception {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                ServiceConnectionC3444c serviceConnectionC3444c = new ServiceConnectionC3444c((byte) 0);
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    try {
                        if (!context.bindService(intent, serviceConnectionC3444c, 1)) {
                            if (context != null) {
                                context.unbindService(serviceConnectionC3444c);
                            }
                            throw new IOException("Google Play connection failed");
                        } else if (serviceConnectionC3444c.f13009) {
                            throw new IllegalStateException();
                        } else {
                            serviceConnectionC3444c.f13009 = true;
                            C3445e c3445e = new C3445e(serviceConnectionC3444c.f13010.take());
                            C3443b c3443b = new C3443b(c3445e.m37944(), c3445e.m37945());
                            if (context != null) {
                                context.unbindService(serviceConnectionC3444c);
                            }
                            return c3443b;
                        }
                    } catch (Exception e) {
                        throw e;
                    }
                } catch (Throwable th) {
                    if (context != null) {
                        context.unbindService(serviceConnectionC3444c);
                    }
                    throw th;
                }
            } catch (Exception e2) {
                throw e2;
            }
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }
}
