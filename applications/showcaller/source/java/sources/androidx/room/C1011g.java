package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC0999c;
import androidx.room.AbstractC1002d;
import androidx.room.C1006f;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.g */
/* loaded from: classes-dex2jar.jar:androidx/room/g.class */
public class C1011g {

    /* renamed from: a */
    final Context f4480a;

    /* renamed from: b */
    final String f4481b;

    /* renamed from: c */
    int f4482c;

    /* renamed from: d */
    final C1006f f4483d;

    /* renamed from: e */
    final C1006f.AbstractC1009c f4484e;

    /* renamed from: f */
    AbstractC1002d f4485f;

    /* renamed from: g */
    final Executor f4486g;

    /* renamed from: j */
    final ServiceConnection f4489j;

    /* renamed from: h */
    final AbstractC0999c f4487h = new BinderC1012a();

    /* renamed from: i */
    final AtomicBoolean f4488i = new AtomicBoolean(false);

    /* renamed from: k */
    final Runnable f4490k = new RunnableC1015c();

    /* renamed from: l */
    final Runnable f4491l = new RunnableC1016d();

    /* renamed from: m */
    private final Runnable f4492m = new RunnableC1017e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$a.class */
    public class BinderC1012a extends AbstractC0999c.AbstractBinderC1000a {

        /* renamed from: androidx.room.g$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/g$a$a.class */
        class RunnableC1013a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String[] f4494d;

            RunnableC1013a(String[] strArr) {
                BinderC1012a.this = r4;
                this.f4494d = strArr;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1011g.this.f4483d.m31254e(this.f4494d);
            }
        }

        BinderC1012a() {
            C1011g.this = r4;
        }

        @Override // androidx.room.AbstractC0999c
        /* renamed from: C1 */
        public void mo31238C1(String[] strArr) {
            C1011g.this.f4486g.execute(new RunnableC1013a(strArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$b.class */
    public class ServiceConnectionC1014b implements ServiceConnection {
        ServiceConnectionC1014b() {
            C1011g.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1011g.this.f4485f = AbstractC1002d.AbstractBinderC1003a.m31262c0(iBinder);
            C1011g c1011g = C1011g.this;
            c1011g.f4486g.execute(c1011g.f4490k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1011g c1011g = C1011g.this;
            c1011g.f4486g.execute(c1011g.f4491l);
            C1011g.this.f4485f = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.g$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$c.class */
    public class RunnableC1015c implements Runnable {
        RunnableC1015c() {
            C1011g.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C1011g c1011g = C1011g.this;
                AbstractC1002d abstractC1002d = c1011g.f4485f;
                if (abstractC1002d == null) {
                    return;
                }
                c1011g.f4482c = abstractC1002d.mo31260c2(c1011g.f4487h, c1011g.f4481b);
                C1011g c1011g2 = C1011g.this;
                c1011g2.f4483d.m31258a(c1011g2.f4484e);
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.g$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$d.class */
    public class RunnableC1016d implements Runnable {
        RunnableC1016d() {
            C1011g.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1011g c1011g = C1011g.this;
            c1011g.f4483d.m31252g(c1011g.f4484e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.g$e */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$e.class */
    public class RunnableC1017e implements Runnable {
        RunnableC1017e() {
            C1011g.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1011g c1011g = C1011g.this;
            c1011g.f4483d.m31252g(c1011g.f4484e);
            try {
                C1011g c1011g2 = C1011g.this;
                AbstractC1002d abstractC1002d = c1011g2.f4485f;
                if (abstractC1002d != null) {
                    abstractC1002d.mo31259o6(c1011g2.f4487h, c1011g2.f4482c);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e);
            }
            C1011g c1011g3 = C1011g.this;
            c1011g3.f4480a.unbindService(c1011g3.f4489j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.g$f */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$f.class */
    public class C1018f extends C1006f.AbstractC1009c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1018f(String[] strArr) {
            super(strArr);
            C1011g.this = r4;
        }

        @Override // androidx.room.C1006f.AbstractC1009c
        /* renamed from: a */
        boolean mo31237a() {
            return true;
        }

        @Override // androidx.room.C1006f.AbstractC1009c
        /* renamed from: b */
        public void mo31236b(Set<String> set) {
            if (C1011g.this.f4488i.get()) {
                return;
            }
            try {
                C1011g c1011g = C1011g.this;
                AbstractC1002d abstractC1002d = c1011g.f4485f;
                if (abstractC1002d == null) {
                    return;
                }
                abstractC1002d.mo31261Q5(c1011g.f4482c, (String[]) set.toArray(new String[0]));
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot broadcast invalidation", e);
            }
        }
    }

    public C1011g(Context context, String str, C1006f c1006f, Executor executor) {
        ServiceConnectionC1014b serviceConnectionC1014b = new ServiceConnectionC1014b();
        this.f4489j = serviceConnectionC1014b;
        Context applicationContext = context.getApplicationContext();
        this.f4480a = applicationContext;
        this.f4481b = str;
        this.f4483d = c1006f;
        this.f4486g = executor;
        this.f4484e = new C1018f((String[]) c1006f.f4457b.keySet().toArray(new String[0]));
        applicationContext.bindService(new Intent(applicationContext, MultiInstanceInvalidationService.class), serviceConnectionC1014b, 1);
    }
}
