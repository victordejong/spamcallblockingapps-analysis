package net.pubnative.lite.sdk.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNAdvertisingIdClient.class */
public class PNAdvertisingIdClient {
    private static final String TAG = "PNAdvertisingIdClient";
    protected Handler mHadler;
    protected Listener mListener;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo.class */
    public class AdInfo {
        private final String mAdvertisingId;
        private final boolean mLimitAdTrackingEnabled;

        AdInfo(String str, boolean z) {
            PNAdvertisingIdClient.this = r4;
            this.mAdvertisingId = str;
            this.mLimitAdTrackingEnabled = z;
        }

        public String getId() {
            return this.mAdvertisingId;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.mLimitAdTrackingEnabled;
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingConnection.class */
    protected class AdvertisingConnection implements ServiceConnection {
        boolean retrieved = false;
        private final LinkedBlockingQueue<IBinder> queue = new LinkedBlockingQueue<>(1);

        protected AdvertisingConnection() {
            PNAdvertisingIdClient.this = r6;
        }

        public IBinder getBinder() throws InterruptedException {
            if (!this.retrieved) {
                this.retrieved = true;
                return this.queue.take();
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.queue.put(iBinder);
            } catch (InterruptedException e) {
                Log.e(PNAdvertisingIdClient.TAG, "Error: can't connect to AdvertisingId service", e);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingInterface.class */
    protected class AdvertisingInterface implements IInterface {
        private IBinder binder;

        public AdvertisingInterface(IBinder iBinder) {
            PNAdvertisingIdClient.this = r4;
            this.binder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.binder;
        }

        /* JADX WARN: Finally extract failed */
        public String getId() throws RemoteException {
            String str;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    this.binder.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    str = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Exception e) {
                    Log.e(PNAdvertisingIdClient.TAG, "Error: Can't read AdvertisingId from the service", e);
                    obtain2.recycle();
                    obtain.recycle();
                    str = null;
                }
                return str;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        public boolean isLimitAdTrackingEnabled(boolean z) throws RemoteException {
            boolean z2;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    obtain.writeInt(z ? 1 : 0);
                    this.binder.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    z2 = false;
                    if (obtain2.readInt() != 0) {
                        z2 = true;
                    }
                } catch (Exception e) {
                    Log.e(PNAdvertisingIdClient.TAG, "Error: Can't get is limit Ad tracking enabled", e);
                    z2 = false;
                }
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

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNAdvertisingIdClient$Listener.class */
    public interface Listener {
        void onPNAdvertisingIdFinish(String str, Boolean bool);
    }

    protected void getAdvertisingId(final Context context) {
        new Thread(new Runnable() { // from class: net.pubnative.lite.sdk.utils.PNAdvertisingIdClient.1
            /* JADX WARN: Removed duplicated region for block: B:21:0x00b1  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 213
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: net.pubnative.lite.sdk.utils.PNAdvertisingIdClient.RunnableC206241.run():void");
            }
        }).start();
    }

    protected void invokeOnFinish(final String str, final boolean z) {
        this.mHadler.post(new Runnable() { // from class: net.pubnative.lite.sdk.utils.PNAdvertisingIdClient.2
            @Override // java.lang.Runnable
            public void run() {
                if (PNAdvertisingIdClient.this.mListener != null) {
                    PNAdvertisingIdClient.this.mListener.onPNAdvertisingIdFinish(str, Boolean.valueOf(z));
                }
            }
        });
    }

    public void request(Context context, Listener listener) {
        this.mListener = listener;
        this.mHadler = new Handler(Looper.getMainLooper());
        getAdvertisingId(context);
    }
}
