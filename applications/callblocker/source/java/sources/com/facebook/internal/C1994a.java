package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.facebook.C2095j;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.internal.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a.class */
public class C1994a {

    /* renamed from: a */
    private static final String f5941a = C1994a.class.getCanonicalName();

    /* renamed from: g */
    private static C1994a f5942g;

    /* renamed from: b */
    private String f5943b;

    /* renamed from: c */
    private String f5944c;

    /* renamed from: d */
    private String f5945d;

    /* renamed from: e */
    private boolean f5946e;

    /* renamed from: f */
    private long f5947f;

    /* renamed from: com.facebook.internal.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a$a.class */
    public static final class C1996a implements IInterface {

        /* renamed from: a */
        private IBinder f5948a;

        C1996a(IBinder iBinder) {
            this.f5948a = iBinder;
        }

        /* renamed from: a */
        public String m15686a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f5948a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f5948a;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        public boolean m15682b() {
            boolean z = true;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.f5948a.transact(2, obtain, obtain2, 0);
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

    /* renamed from: com.facebook.internal.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a$b.class */
    public static final class ServiceConnectionC1997b implements ServiceConnection {

        /* renamed from: a */
        private AtomicBoolean f5949a;

        /* renamed from: b */
        private final BlockingQueue<IBinder> f5950b;

        private ServiceConnectionC1997b() {
            this.f5949a = new AtomicBoolean(false);
            this.f5950b = new LinkedBlockingDeque();
        }

        /* renamed from: a */
        public IBinder m15675a() {
            if (this.f5949a.compareAndSet(true, true)) {
                throw new IllegalStateException("Binder already consumed");
            }
            return this.f5950b.take();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.f5950b.put(iBinder);
                } catch (InterruptedException e) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: a */
    private static C1994a m15696a(C1994a c1994a) {
        c1994a.f5947f = System.currentTimeMillis();
        f5942g = c1994a;
        return c1994a;
    }

    /* renamed from: a */
    public static boolean m15697a(Context context) {
        C1994a m15694b = m15694b(context);
        return m15694b != null && m15694b.m15691d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ad  */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.database.Cursor] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.internal.C1994a m15694b(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1994a.m15694b(android.content.Context):com.facebook.internal.a");
    }

    /* renamed from: c */
    private static C1994a m15692c(Context context) {
        C1994a m15690d = m15690d(context);
        C1994a c1994a = m15690d;
        if (m15690d == null) {
            C1994a m15688f = m15688f(context);
            c1994a = m15688f;
            if (m15688f == null) {
                c1994a = new C1994a();
            }
        }
        return c1994a;
    }

    /* renamed from: d */
    private static C1994a m15690d(Context context) {
        C1994a c1994a;
        try {
            if (!m15689e(context)) {
                c1994a = null;
            } else {
                Method m15466a = C2079x.m15466a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class);
                if (m15466a == null) {
                    c1994a = null;
                } else {
                    Object m15474a = C2079x.m15474a((Object) null, m15466a, context);
                    if (m15474a == null) {
                        c1994a = null;
                    } else {
                        Method m15476a = C2079x.m15476a(m15474a.getClass(), "getId", new Class[0]);
                        Method m15476a2 = C2079x.m15476a(m15474a.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
                        if (m15476a == null || m15476a2 == null) {
                            c1994a = null;
                        } else {
                            c1994a = new C1994a();
                            c1994a.f5944c = (String) C2079x.m15474a(m15474a, m15476a, new Object[0]);
                            c1994a.f5946e = ((Boolean) C2079x.m15474a(m15474a, m15476a2, new Object[0])).booleanValue();
                        }
                    }
                }
            }
        } catch (Exception e) {
            C2079x.m15470a("android_id", e);
            c1994a = null;
        }
        return c1994a;
    }

    /* renamed from: e */
    private static boolean m15689e(Context context) {
        boolean z;
        Method m15466a = C2079x.m15466a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
        if (m15466a == null) {
            z = false;
        } else {
            Object m15474a = C2079x.m15474a((Object) null, m15466a, context);
            z = (m15474a instanceof Integer) && ((Integer) m15474a).intValue() == 0;
        }
        return z;
    }

    /* renamed from: f */
    private static C1994a m15688f(Context context) {
        C1994a c1994a;
        ServiceConnectionC1997b serviceConnectionC1997b = new ServiceConnectionC1997b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        try {
            if (context.bindService(intent, serviceConnectionC1997b, 1)) {
                try {
                    C1996a c1996a = new C1996a(serviceConnectionC1997b.m15675a());
                    C1994a c1994a2 = new C1994a();
                    c1994a2.f5944c = c1996a.m15686a();
                    c1994a2.f5946e = c1996a.m15682b();
                    context.unbindService(serviceConnectionC1997b);
                    c1994a = c1994a2;
                } catch (Exception e) {
                    C2079x.m15470a("android_id", e);
                    context.unbindService(serviceConnectionC1997b);
                }
                return c1994a;
            }
            c1994a = null;
            return c1994a;
        } catch (Throwable th) {
            context.unbindService(serviceConnectionC1997b);
            throw th;
        }
    }

    /* renamed from: g */
    private static String m15687g(Context context) {
        PackageManager packageManager = context.getPackageManager();
        return packageManager != null ? packageManager.getInstallerPackageName(context.getPackageName()) : null;
    }

    /* renamed from: a */
    public String m15698a() {
        return this.f5943b;
    }

    /* renamed from: b */
    public String m15695b() {
        return (!C2095j.m15374a() || !C2095j.m15350r()) ? null : this.f5944c;
    }

    /* renamed from: c */
    public String m15693c() {
        return this.f5945d;
    }

    /* renamed from: d */
    public boolean m15691d() {
        return this.f5946e;
    }
}
