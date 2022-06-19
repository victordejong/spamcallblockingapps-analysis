package com.pubmatic.sdk.common.utility;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import com.pubmatic.sdk.common.log.PMLog;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAdvertisingIdClient.class */
public final class POBAdvertisingIdClient {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo.class */
    public static final class AdInfo {

        /* renamed from: a */
        private final String f550a;

        /* renamed from: b */
        private final boolean f551b;

        AdInfo(String str, boolean z) {
            this.f550a = str;
            this.f551b = z;
        }

        public String getId() {
            return this.f550a;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.f551b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.common.utility.POBAdvertisingIdClient$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAdvertisingIdClient$b.class */
    public static final class ServiceConnectionC1882b implements ServiceConnection {

        /* renamed from: a */
        private final LinkedBlockingQueue<IBinder> f552a;

        /* renamed from: b */
        boolean f553b;

        private ServiceConnectionC1882b() {
            this.f552a = new LinkedBlockingQueue<>(1);
            this.f553b = false;
        }

        /* renamed from: a */
        IBinder m1000a() {
            if (!this.f553b) {
                this.f553b = true;
                return this.f552a.take();
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f552a.put(iBinder);
            } catch (InterruptedException | NullPointerException e) {
                PMLog.error("AdvertisingIdClient", "%s", e.getLocalizedMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            PMLog.debug("AdvertisingIdClient", "onServiceDisconnected, ComponentName" + componentName, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.common.utility.POBAdvertisingIdClient$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAdvertisingIdClient$c.class */
    public static final class C1883c implements IInterface {

        /* renamed from: a */
        private final IBinder f554a;

        C1883c(IBinder iBinder) {
            this.f554a = iBinder;
        }

        /* renamed from: a */
        String m999a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f554a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        boolean m998a(boolean z) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                boolean z2 = false;
                this.f554a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z2 = true;
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

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f554a;
        }
    }

    public static AdInfo getAdvertisingIdInfo(Context context) {
        AdInfo adInfo;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            ServiceConnectionC1882b serviceConnectionC1882b = new ServiceConnectionC1882b();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (!context.bindService(intent, serviceConnectionC1882b, 1)) {
                throw new IOException("Google Play connection failed");
            }
            try {
                try {
                    C1883c c1883c = new C1883c(serviceConnectionC1882b.m1000a());
                    AdInfo adInfo2 = new AdInfo(c1883c.m999a(), c1883c.m998a(true));
                    context.unbindService(serviceConnectionC1882b);
                    adInfo = adInfo2;
                } catch (Exception e) {
                    PMLog.warn("AdvertisingIdClient", "Failed to get AdvertisingIdInfo", new Object[0]);
                    context.unbindService(serviceConnectionC1882b);
                    adInfo = null;
                }
                return adInfo;
            } catch (Throwable th) {
                context.unbindService(serviceConnectionC1882b);
                throw th;
            }
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }
}
