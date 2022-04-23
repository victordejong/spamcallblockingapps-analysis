package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC0444d;
import androidx.room.C0446f;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.g */
/* loaded from: classes-dex2jar.jar:androidx/room/g.class */
public class C0451g {

    /* renamed from: a */
    Context f2487a;

    /* renamed from: b */
    final String f2488b;

    /* renamed from: c */
    int f2489c;

    /* renamed from: d */
    final C0446f f2490d;

    /* renamed from: e */
    final C0446f.AbstractC0449c f2491e;

    /* renamed from: f */
    AbstractC0444d f2492f;

    /* renamed from: g */
    final Executor f2493g;

    /* renamed from: j */
    final ServiceConnection f2496j;

    /* renamed from: h */
    final AbstractC0443c f2494h = new a(this);

    /* renamed from: i */
    final AtomicBoolean f2495i = new AtomicBoolean(false);

    /* renamed from: k */
    final Runnable f2497k = new RunnableC0453c();

    /* renamed from: l */
    final Runnable f2498l = new RunnableC0454d();

    /* renamed from: androidx.room.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$b.class */
    class ServiceConnectionC0452b implements ServiceConnection {
        ServiceConnectionC0452b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0451g.this.f2492f = AbstractC0444d.a.h0(iBinder);
            C0451g gVar = C0451g.this;
            gVar.f2493g.execute(gVar.f2497k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C0451g gVar = C0451g.this;
            gVar.f2493g.execute(gVar.f2498l);
            C0451g gVar2 = C0451g.this;
            gVar2.f2492f = null;
            gVar2.f2487a = null;
        }
    }

    /* renamed from: androidx.room.g$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$c.class */
    class RunnableC0453c implements Runnable {
        RunnableC0453c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C0451g gVar = C0451g.this;
                AbstractC0444d dVar = gVar.f2492f;
                if (dVar != null) {
                    gVar.f2489c = dVar.m12290O3(gVar.f2494h, gVar.f2488b);
                    C0451g gVar2 = C0451g.this;
                    gVar2.f2490d.m12287a(gVar2.f2491e);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
            }
        }
    }

    /* renamed from: androidx.room.g$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$d.class */
    class RunnableC0454d implements Runnable {
        RunnableC0454d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0451g gVar = C0451g.this;
            gVar.f2490d.m12281g(gVar.f2491e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0451g(Context context, String str, C0446f fVar, Executor executor) {
        ServiceConnectionC0452b bVar = new ServiceConnectionC0452b();
        this.f2496j = bVar;
        this.f2487a = context.getApplicationContext();
        this.f2488b = str;
        this.f2490d = fVar;
        this.f2493g = executor;
        this.f2491e = new e(this, fVar.f2467b);
        this.f2487a.bindService(new Intent(this.f2487a, MultiInstanceInvalidationService.class), bVar, 1);
    }
}
