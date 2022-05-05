package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.criteo.sync.sdk.AdvertisingInfoLoader;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.b */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/b.class */
public class C2381b {

    /* renamed from: f */
    public static final String f2952f = "com.facebook.internal.b";

    /* renamed from: g */
    public static C2381b f2953g;

    /* renamed from: a */
    public String f2954a;

    /* renamed from: b */
    public String f2955b;

    /* renamed from: c */
    public String f2956c;

    /* renamed from: d */
    public boolean f2957d;

    /* renamed from: e */
    public long f2958e;

    /* renamed from: com.facebook.internal.b$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/b$b.class */
    public static final class C2383b implements IInterface {

        /* renamed from: a */
        public IBinder f2959a;

        public C2383b(IBinder iBinder) {
            this.f2959a = iBinder;
        }

        /* renamed from: G0 */
        public String m34919G0() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f2959a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* renamed from: H0 */
        public boolean m34918H0() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.f2959a.transact(2, obtain, obtain2, 0);
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

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f2959a;
        }
    }

    /* renamed from: com.facebook.internal.b$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/b$c.class */
    public static final class ServiceConnectionC2384c implements ServiceConnection {

        /* renamed from: a */
        public AtomicBoolean f2960a;

        /* renamed from: b */
        public final BlockingQueue<IBinder> f2961b;

        public ServiceConnectionC2384c() {
            this.f2960a = new AtomicBoolean(false);
            this.f2961b = new LinkedBlockingDeque();
        }

        /* renamed from: a */
        public IBinder m34917a() throws InterruptedException {
            if (!this.f2960a.compareAndSet(true, true)) {
                return this.f2961b.take();
            }
            throw new IllegalStateException("Binder already consumed");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.f2961b.put(iBinder);
                } catch (InterruptedException e) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: a */
    public static C2381b m34930a(Context context) {
        C2381b b = m34927b(context);
        C2381b bVar = b;
        if (b == null) {
            C2381b c = m34925c(context);
            bVar = c;
            if (c == null) {
                bVar = new C2381b();
            }
        }
        return bVar;
    }

    /* renamed from: a */
    public static C2381b m34929a(C2381b bVar) {
        bVar.f2958e = System.currentTimeMillis();
        f2953g = bVar;
        return bVar;
    }

    /* renamed from: b */
    public static C2381b m34927b(Context context) {
        Method a;
        Object a2;
        try {
            if (!m34921f(context) || (a = C2408g0.m34849a(AdvertisingInfoLoader.AdvertisingIdClientClassName, "getAdvertisingIdInfo", Context.class)) == null || (a2 = C2408g0.m34857a((Object) null, a, context)) == null) {
                return null;
            }
            Method a3 = C2408g0.m34859a(a2.getClass(), "getId", new Class[0]);
            Method a4 = C2408g0.m34859a(a2.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
            if (a3 == null || a4 == null) {
                return null;
            }
            C2381b bVar = new C2381b();
            bVar.f2955b = (String) C2408g0.m34857a(a2, a3, new Object[0]);
            bVar.f2957d = ((Boolean) C2408g0.m34857a(a2, a4, new Object[0])).booleanValue();
            return bVar;
        } catch (Exception e) {
            C2408g0.m34853a("android_id", e);
            return null;
        }
    }

    /* renamed from: c */
    public static C2381b m34925c(Context context) {
        ServiceConnectionC2384c cVar = new ServiceConnectionC2384c();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (!context.bindService(intent, cVar, 1)) {
            return null;
        }
        try {
            C2383b bVar = new C2383b(cVar.m34917a());
            C2381b bVar2 = new C2381b();
            bVar2.f2955b = bVar.m34919G0();
            bVar2.f2957d = bVar.m34918H0();
            return bVar2;
        } catch (Exception e) {
            C2408g0.m34853a("android_id", e);
            return null;
        } finally {
            context.unbindService(cVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0082 A[Catch: all -> 0x0151, Exception -> 0x0158, TRY_ENTER, TryCatch #4 {Exception -> 0x0158, all -> 0x0151, blocks: (B:3:0x0007, B:5:0x0010, B:7:0x0016, B:9:0x0027, B:12:0x002c, B:14:0x0046, B:16:0x0051, B:20:0x0060, B:22:0x006c, B:24:0x0079, B:26:0x0082, B:29:0x008c, B:31:0x0093, B:55:0x0145, B:56:0x0150), top: B:74:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008c A[Catch: all -> 0x0151, Exception -> 0x0158, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0158, all -> 0x0151, blocks: (B:3:0x0007, B:5:0x0010, B:7:0x0016, B:9:0x0027, B:12:0x002c, B:14:0x0046, B:16:0x0051, B:20:0x0060, B:22:0x006c, B:24:0x0079, B:26:0x0082, B:29:0x008c, B:31:0x0093, B:55:0x0145, B:56:0x0150), top: B:74:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0093 A[Catch: all -> 0x0151, Exception -> 0x0158, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0158, all -> 0x0151, blocks: (B:3:0x0007, B:5:0x0010, B:7:0x0016, B:9:0x0027, B:12:0x002c, B:14:0x0046, B:16:0x0051, B:20:0x0060, B:22:0x006c, B:24:0x0079, B:26:0x0082, B:29:0x008c, B:31:0x0093, B:55:0x0145, B:56:0x0150), top: B:74:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0193  */
    @androidx.annotation.Nullable
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.internal.C2381b m34923d(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C2381b.m34923d(android.content.Context):com.facebook.internal.b");
    }

    @Nullable
    /* renamed from: e */
    public static String m34922e(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            return packageManager.getInstallerPackageName(context.getPackageName());
        }
        return null;
    }

    /* renamed from: f */
    public static boolean m34921f(Context context) {
        Method a = C2408g0.m34849a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
        if (a == null) {
            return false;
        }
        Object a2 = C2408g0.m34857a((Object) null, a, context);
        return (a2 instanceof Integer) && ((Integer) a2).intValue() == 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: g */
    public static boolean m34920g(Context context) {
        C2381b d = m34923d(context);
        return d != null && d.m34924d();
    }

    /* renamed from: a */
    public String m34931a() {
        if (!C6135n.m23730u() || !C6135n.m23748d()) {
            return null;
        }
        return this.f2955b;
    }

    /* renamed from: b */
    public String m34928b() {
        return this.f2956c;
    }

    /* renamed from: c */
    public String m34926c() {
        return this.f2954a;
    }

    /* renamed from: d */
    public boolean m34924d() {
        return this.f2957d;
    }
}
