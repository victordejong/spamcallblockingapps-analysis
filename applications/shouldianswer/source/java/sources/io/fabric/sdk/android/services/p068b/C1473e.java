package io.fabric.sdk.android.services.p068b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import io.fabric.sdk.android.C1449c;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* renamed from: io.fabric.sdk.android.services.b.e */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/e.class */
public class C1473e implements AbstractC1477f {

    /* renamed from: a */
    private final Context f4055a;

    /* renamed from: io.fabric.sdk.android.services.b.e$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/e$a.class */
    private static final class ServiceConnectionC1475a implements ServiceConnection {

        /* renamed from: a */
        private boolean f4056a;

        /* renamed from: b */
        private final LinkedBlockingQueue<IBinder> f4057b;

        private ServiceConnectionC1475a() {
            this.f4056a = false;
            this.f4057b = new LinkedBlockingQueue<>(1);
        }

        /* renamed from: a */
        public IBinder m3517a() {
            if (this.f4056a) {
                C1449c.m3572g().mo3546e("Fabric", "getBinder already called");
            }
            this.f4056a = true;
            try {
                return this.f4057b.poll(200L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                return null;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f4057b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.f4057b.clear();
        }
    }

    /* renamed from: io.fabric.sdk.android.services.b.e$b */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/e$b.class */
    private static final class C1476b implements IInterface {

        /* renamed from: a */
        private final IBinder f4058a;

        public C1476b(IBinder iBinder) {
            this.f4058a = iBinder;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        public String m3516a() {
            String str;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    this.f4058a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    str = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Exception e) {
                    C1449c.m3572g().mo3552a("Fabric", "Could not get parcel from Google Play Service to capture AdvertisingId");
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

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f4058a;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        public boolean m3515b() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            boolean z = false;
            try {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    obtain.writeInt(1);
                    this.f4058a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                } catch (Exception e) {
                    C1449c.m3572g().mo3552a("Fabric", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
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

    public C1473e(Context context) {
        this.f4055a = context.getApplicationContext();
    }

    @Override // io.fabric.sdk.android.services.p068b.AbstractC1477f
    /* renamed from: a */
    public C1469b mo3514a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            C1449c.m3572g().mo3552a("Fabric", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
            return null;
        }
        try {
            this.f4055a.getPackageManager().getPackageInfo("com.android.vending", 0);
            ServiceConnectionC1475a serviceConnectionC1475a = new ServiceConnectionC1475a();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (!this.f4055a.bindService(intent, serviceConnectionC1475a, 1)) {
                    C1449c.m3572g().mo3552a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId");
                    return null;
                }
                try {
                    C1476b c1476b = new C1476b(serviceConnectionC1475a.m3517a());
                    C1469b c1469b = new C1469b(c1476b.m3516a(), c1476b.m3515b());
                    this.f4055a.unbindService(serviceConnectionC1475a);
                    return c1469b;
                } catch (Exception e) {
                    C1449c.m3572g().mo3547d("Fabric", "Exception in binding to Google Play Service to capture AdvertisingId", e);
                    this.f4055a.unbindService(serviceConnectionC1475a);
                    return null;
                }
            } catch (Throwable th) {
                C1449c.m3572g().mo3551a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId", th);
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            C1449c.m3572g().mo3552a("Fabric", "Unable to find Google Play Services package name");
            return null;
        } catch (Exception e3) {
            C1449c.m3572g().mo3551a("Fabric", "Unable to determine if Google Play Services is available", e3);
            return null;
        }
    }
}
