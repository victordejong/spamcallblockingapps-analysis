package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import p000a.p001a.p002a.AbstractC0000a;
import p000a.p001a.p002a.AbstractC0003b;
/* renamed from: androidx.browser.customtabs.b */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b.class */
public class C0344b {

    /* renamed from: a */
    private final AbstractC0003b f1449a;

    /* renamed from: b */
    private final ComponentName f1450b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.browser.customtabs.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a.class */
    public class BinderC0345a extends AbstractC0000a.AbstractBinderC0001a {

        /* renamed from: d */
        private Handler f1451d = new Handler(Looper.getMainLooper());

        /* renamed from: e */
        final /* synthetic */ C0343a f1452e;

        /* renamed from: androidx.browser.customtabs.b$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$a.class */
        class RunnableC0346a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ int f1454d;

            /* renamed from: e */
            final /* synthetic */ Bundle f1455e;

            RunnableC0346a(int i, Bundle bundle) {
                BinderC0345a.this = r4;
                this.f1454d = i;
                this.f1455e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0345a.this.f1452e.mo34647c(this.f1454d, this.f1455e);
            }
        }

        /* renamed from: androidx.browser.customtabs.b$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$b.class */
        class RunnableC0347b implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String f1457d;

            /* renamed from: e */
            final /* synthetic */ Bundle f1458e;

            RunnableC0347b(String str, Bundle bundle) {
                BinderC0345a.this = r4;
                this.f1457d = str;
                this.f1458e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0345a.this.f1452e.mo34649a(this.f1457d, this.f1458e);
            }
        }

        /* renamed from: androidx.browser.customtabs.b$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$c.class */
        class RunnableC0348c implements Runnable {

            /* renamed from: d */
            final /* synthetic */ Bundle f1460d;

            RunnableC0348c(Bundle bundle) {
                BinderC0345a.this = r4;
                this.f1460d = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0345a.this.f1452e.mo34648b(this.f1460d);
            }
        }

        /* renamed from: androidx.browser.customtabs.b$a$d */
        /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$d.class */
        class RunnableC0349d implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String f1462d;

            /* renamed from: e */
            final /* synthetic */ Bundle f1463e;

            RunnableC0349d(String str, Bundle bundle) {
                BinderC0345a.this = r4;
                this.f1462d = str;
                this.f1463e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0345a.this.f1452e.mo34646d(this.f1462d, this.f1463e);
            }
        }

        /* renamed from: androidx.browser.customtabs.b$a$e */
        /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$e.class */
        class RunnableC0350e implements Runnable {

            /* renamed from: d */
            final /* synthetic */ int f1465d;

            /* renamed from: e */
            final /* synthetic */ Uri f1466e;

            /* renamed from: f */
            final /* synthetic */ boolean f1467f;

            /* renamed from: g */
            final /* synthetic */ Bundle f1468g;

            RunnableC0350e(int i, Uri uri, boolean z, Bundle bundle) {
                BinderC0345a.this = r4;
                this.f1465d = i;
                this.f1466e = uri;
                this.f1467f = z;
                this.f1468g = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderC0345a.this.f1452e.mo34645e(this.f1465d, this.f1466e, this.f1467f, this.f1468g);
            }
        }

        BinderC0345a(C0343a c0343a) {
            C0344b.this = r6;
            this.f1452e = c0343a;
        }

        @Override // p000a.p001a.p002a.AbstractC0000a
        /* renamed from: L5 */
        public void mo34659L5(String str, Bundle bundle) {
            if (this.f1452e == null) {
                return;
            }
            this.f1451d.post(new RunnableC0349d(str, bundle));
        }

        @Override // p000a.p001a.p002a.AbstractC0000a
        /* renamed from: V5 */
        public void mo34658V5(Bundle bundle) {
            if (this.f1452e == null) {
                return;
            }
            this.f1451d.post(new RunnableC0348c(bundle));
        }

        @Override // p000a.p001a.p002a.AbstractC0000a
        /* renamed from: X4 */
        public void mo34657X4(int i, Bundle bundle) {
            if (this.f1452e == null) {
                return;
            }
            this.f1451d.post(new RunnableC0346a(i, bundle));
        }

        @Override // p000a.p001a.p002a.AbstractC0000a
        /* renamed from: f6 */
        public void mo34656f6(int i, Uri uri, boolean z, Bundle bundle) {
            if (this.f1452e == null) {
                return;
            }
            this.f1451d.post(new RunnableC0350e(i, uri, z, bundle));
        }

        @Override // p000a.p001a.p002a.AbstractC0000a
        /* renamed from: o4 */
        public void mo34655o4(String str, Bundle bundle) {
            if (this.f1452e == null) {
                return;
            }
            this.f1451d.post(new RunnableC0347b(str, bundle));
        }
    }

    public C0344b(AbstractC0003b abstractC0003b, ComponentName componentName) {
        this.f1449a = abstractC0003b;
        this.f1450b = componentName;
    }

    /* renamed from: a */
    public static boolean m34662a(Context context, String str, AbstractServiceConnectionC0353d abstractServiceConnectionC0353d) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, abstractServiceConnectionC0353d, 33);
    }

    /* renamed from: b */
    public C0355e m34661b(C0343a c0343a) {
        BinderC0345a binderC0345a = new BinderC0345a(c0343a);
        C0355e c0355e = null;
        if (!this.f1449a.mo34669c4(binderC0345a)) {
            return null;
        }
        c0355e = new C0355e(this.f1449a, binderC0345a, this.f1450b);
        return c0355e;
    }

    /* renamed from: c */
    public boolean m34660c(long j) {
        try {
            return this.f1449a.mo34671R2(j);
        } catch (RemoteException e) {
            return false;
        }
    }
}
