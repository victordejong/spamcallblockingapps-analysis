package com.tenor.android.core.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import com.tenor.android.core.util.AbstractLogUtils;
import com.tenor.android.core.util.AbstractSessionUtils;
import java.util.concurrent.LinkedBlockingQueue;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/service/AaidClient.class */
public final class AaidClient {

    /* loaded from: classes3-dex2jar.jar:com/tenor/android/core/service/AaidClient$AdvertisingConnection.class */
    public static final class AdvertisingConnection implements ServiceConnection {
        private final LinkedBlockingQueue<IBinder> mQueue;
        private boolean mRetrieved;

        private AdvertisingConnection() {
            this.mRetrieved = false;
            this.mQueue = new LinkedBlockingQueue<>(1);
        }

        public IBinder getBinder() throws InterruptedException {
            if (!this.mRetrieved) {
                this.mRetrieved = true;
                return this.mQueue.take();
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.mQueue.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/tenor/android/core/service/AaidClient$AdvertisingInterface.class */
    public static final class AdvertisingInterface implements IInterface {
        private final IBinder mBinder;

        public AdvertisingInterface(IBinder iBinder) {
            this.mBinder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.mBinder;
        }

        public String getId() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.mBinder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* JADX WARN: Finally extract failed */
        public boolean isLimitAdTrackingEnabled(boolean z) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                this.mBinder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                boolean z2 = obtain2.readInt() != 0;
                obtain2.recycle();
                obtain.recycle();
                return z2;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
    }

    private static AaidInfo getAdvertisingId(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            AdvertisingConnection advertisingConnection = new AdvertisingConnection();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (!context.bindService(intent, advertisingConnection, 1)) {
                    context.unbindService(advertisingConnection);
                    return new AaidInfo(-4);
                }
                try {
                    AdvertisingInterface advertisingInterface = new AdvertisingInterface(advertisingConnection.getBinder());
                    return new AaidInfo(advertisingInterface.getId(), advertisingInterface.isLimitAdTrackingEnabled(true));
                } catch (Throwable th) {
                    try {
                        return new AaidInfo(-4);
                    } finally {
                        context.unbindService(advertisingConnection);
                    }
                }
            } catch (Throwable th2) {
                return new AaidInfo(-3);
            }
        } catch (Throwable th3) {
            return new AaidInfo(-2);
        }
    }

    public static void init(Context context, IAaidListener iAaidListener) {
        if (!isOnMainThread()) {
            AaidInfo advertisingId = getAdvertisingId(context);
            int state = advertisingId.getState();
            if (state == -1) {
                AbstractSessionUtils.setAndroidAdvertiseId(context, "");
            } else if (state == 0) {
                AbstractSessionUtils.setAndroidAdvertiseId(context, advertisingId.getId());
            }
            StringBuilder m8728C = C22128a.m8728C("AAID: ");
            m8728C.append(advertisingId.getId());
            m8728C.append(", Opt out: ");
            m8728C.append(advertisingId.isLimitAdTrackingEnabled());
            m8728C.append(", state: ");
            m8728C.append(advertisingId.getState());
            AbstractLogUtils.m36036e(context, m8728C.toString());
            if (iAaidListener == null) {
                return;
            }
            if (advertisingId.getState() == 0) {
                iAaidListener.success(advertisingId.getId());
                return;
            } else {
                iAaidListener.failure(advertisingId.getState());
                return;
            }
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }

    private static boolean isOnMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
