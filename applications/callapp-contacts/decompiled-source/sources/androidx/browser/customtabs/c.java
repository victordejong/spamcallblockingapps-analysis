package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.a.a;
import android.support.a.b;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final b f1211a;

    /* renamed from: b  reason: collision with root package name */
    private final ComponentName f1212b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f1213c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, ComponentName componentName, Context context) {
        this.f1211a = bVar;
        this.f1212b = componentName;
        this.f1213c = context;
    }

    private f a(b bVar) {
        a.AbstractBinderC0001a aVar = new a.AbstractBinderC0001a() { // from class: androidx.browser.customtabs.c.2

            /* renamed from: c  reason: collision with root package name */
            private Handler f1217c = new Handler(Looper.getMainLooper());

            @Override // android.support.a.a
            public final void a(final int i, final Uri uri, final boolean z, final Bundle bundle) throws RemoteException {
                if (r7 != null) {
                    this.f1217c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            r7.a(i, uri, z, bundle);
                        }
                    });
                }
            }

            @Override // android.support.a.a
            public final void a(final int i, final Bundle bundle) {
                if (r7 != null) {
                    this.f1217c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            r7.a(i, bundle);
                        }
                    });
                }
            }

            @Override // android.support.a.a
            public final void a(final Bundle bundle) throws RemoteException {
                if (r7 != null) {
                    this.f1217c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            r7.a(bundle);
                        }
                    });
                }
            }

            @Override // android.support.a.a
            public final void a(final String str, final Bundle bundle) throws RemoteException {
                if (r7 != null) {
                    this.f1217c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            r7.a(str, bundle);
                        }
                    });
                }
            }

            @Override // android.support.a.a
            public final void b(final String str, final Bundle bundle) throws RemoteException {
                if (r7 != null) {
                    this.f1217c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            r7.c(str, bundle);
                        }
                    });
                }
            }

            @Override // android.support.a.a
            public final Bundle c(String str, Bundle bundle) throws RemoteException {
                b bVar2 = r7;
                if (bVar2 == null) {
                    return null;
                }
                return bVar2.b(str, bundle);
            }
        };
        try {
            if (!this.f1211a.a(aVar)) {
                return null;
            }
            return new f(this.f1211a, aVar, this.f1212b, null);
        } catch (RemoteException e) {
            return null;
        }
    }

    public static boolean a(Context context, String str) {
        if (str == null) {
            return false;
        }
        final Context applicationContext = context.getApplicationContext();
        try {
            return a(applicationContext, str, new e() { // from class: androidx.browser.customtabs.c.1
                @Override // androidx.browser.customtabs.e
                public final void a(c cVar) {
                    cVar.a();
                    applicationContext.unbindService(this);
                }

                @Override // android.content.ServiceConnection
                public final void onServiceDisconnected(ComponentName componentName) {
                }
            });
        } catch (SecurityException e) {
            return false;
        }
    }

    public static boolean a(Context context, String str, e eVar) {
        eVar.f1239b = context.getApplicationContext();
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, eVar, 33);
    }

    public final boolean a() {
        try {
            return this.f1211a.a(0L);
        } catch (RemoteException e) {
            return false;
        }
    }

    public final f b() {
        return a(null);
    }
}
