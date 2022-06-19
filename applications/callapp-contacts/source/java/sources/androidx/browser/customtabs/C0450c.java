package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.p006a.AbstractC0006a;
import android.support.p006a.AbstractC0014b;
import android.text.TextUtils;
/* renamed from: androidx.browser.customtabs.c */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/c.class */
public class C0450c {

    /* renamed from: a */
    private final AbstractC0014b f1773a;

    /* renamed from: b */
    private final ComponentName f1774b;

    /* renamed from: c */
    private final Context f1775c;

    public C0450c(AbstractC0014b abstractC0014b, ComponentName componentName, Context context) {
        this.f1773a = abstractC0014b;
        this.f1774b = componentName;
        this.f1775c = context;
    }

    /* renamed from: a */
    private C0462f m45475a(C0449b c0449b) {
        AbstractC0006a.AbstractBinderC0007a abstractBinderC0007a = new AbstractC0006a.AbstractBinderC0007a() { // from class: androidx.browser.customtabs.c.2

            /* renamed from: c */
            private Handler f1779c = new Handler(Looper.getMainLooper());

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: a */
            public final void mo45473a(final int i, final Uri uri, final boolean z, final Bundle bundle) throws RemoteException {
                if (r7 == null) {
                    return;
                }
                this.f1779c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        r7.mo45462a(i, uri, z, bundle);
                    }
                });
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: a */
            public final void mo45472a(final int i, final Bundle bundle) {
                if (r7 == null) {
                    return;
                }
                this.f1779c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        r7.mo45461a(i, bundle);
                    }
                });
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: a */
            public final void mo45471a(final Bundle bundle) throws RemoteException {
                if (r7 == null) {
                    return;
                }
                this.f1779c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        r7.mo45460a(bundle);
                    }
                });
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: a */
            public final void mo45470a(final String str, final Bundle bundle) throws RemoteException {
                if (r7 == null) {
                    return;
                }
                this.f1779c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        r7.mo45459a(str, bundle);
                    }
                });
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: b */
            public final void mo45469b(final String str, final Bundle bundle) throws RemoteException {
                if (r7 == null) {
                    return;
                }
                this.f1779c.post(new Runnable() { // from class: androidx.browser.customtabs.c.2.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        r7.mo45457c(str, bundle);
                    }
                });
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: c */
            public final Bundle mo45468c(String str, Bundle bundle) throws RemoteException {
                C0449b c0449b2 = r7;
                if (c0449b2 == null) {
                    return null;
                }
                return c0449b2.mo45458b(str, bundle);
            }
        };
        try {
            if (this.f1773a.mo45492a(abstractBinderC0007a)) {
                return new C0462f(this.f1773a, abstractBinderC0007a, this.f1774b, null);
            }
            return null;
        } catch (RemoteException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m45477a(Context context, String str) {
        if (str == null) {
            return false;
        }
        final Context applicationContext = context.getApplicationContext();
        try {
            return m45476a(applicationContext, str, new AbstractServiceConnectionC0460e() { // from class: androidx.browser.customtabs.c.1
                @Override // androidx.browser.customtabs.AbstractServiceConnectionC0460e
                /* renamed from: a */
                public final void mo15754a(C0450c c0450c) {
                    c0450c.m45478a();
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

    /* renamed from: a */
    public static boolean m45476a(Context context, String str, AbstractServiceConnectionC0460e abstractServiceConnectionC0460e) {
        abstractServiceConnectionC0460e.f1807b = context.getApplicationContext();
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, abstractServiceConnectionC0460e, 33);
    }

    /* renamed from: a */
    public final boolean m45478a() {
        try {
            return this.f1773a.mo45494a(0L);
        } catch (RemoteException e) {
            return false;
        }
    }

    /* renamed from: b */
    public final C0462f m45474b() {
        return m45475a(null);
    }
}
