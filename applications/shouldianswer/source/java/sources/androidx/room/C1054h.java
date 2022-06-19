package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC1042d;
import androidx.room.AbstractC1045e;
import androidx.room.C1049g;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.h */
/* loaded from: classes-dex2jar.jar:androidx/room/h.class */
public class C1054h {

    /* renamed from: a */
    final Context f3300a;

    /* renamed from: b */
    final String f3301b;

    /* renamed from: c */
    int f3302c;

    /* renamed from: d */
    final C1049g f3303d;

    /* renamed from: e */
    final C1049g.AbstractC1052b f3304e;

    /* renamed from: f */
    AbstractC1045e f3305f;

    /* renamed from: g */
    final Executor f3306g;

    /* renamed from: h */
    final AbstractC1042d f3307h = new AbstractC1042d.AbstractBinderC1043a() { // from class: androidx.room.h.1
        @Override // androidx.room.AbstractC1042d
        /* renamed from: a */
        public void mo4455a(final String[] strArr) {
            C1054h.this.f3306g.execute(new Runnable() { // from class: androidx.room.h.1.1
                @Override // java.lang.Runnable
                public void run() {
                    C1054h.this.f3303d.m4469a(strArr);
                }
            });
        }
    };

    /* renamed from: i */
    final AtomicBoolean f3308i = new AtomicBoolean(false);

    /* renamed from: j */
    final ServiceConnection f3309j = new ServiceConnection() { // from class: androidx.room.h.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1054h.this.f3305f = AbstractC1045e.AbstractBinderC1046a.m4479a(iBinder);
            C1054h.this.f3306g.execute(C1054h.this.f3310k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1054h.this.f3306g.execute(C1054h.this.f3311l);
            C1054h.this.f3305f = null;
        }
    };

    /* renamed from: k */
    final Runnable f3310k = new Runnable() { // from class: androidx.room.h.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                AbstractC1045e abstractC1045e = C1054h.this.f3305f;
                if (abstractC1045e == null) {
                    return;
                }
                C1054h.this.f3302c = abstractC1045e.mo4476a(C1054h.this.f3307h, C1054h.this.f3301b);
                C1054h.this.f3303d.m4471a(C1054h.this.f3304e);
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
            }
        }
    };

    /* renamed from: l */
    final Runnable f3311l = new Runnable() { // from class: androidx.room.h.4
        @Override // java.lang.Runnable
        public void run() {
            C1054h.this.f3303d.m4465b(C1054h.this.f3304e);
        }
    };

    /* renamed from: m */
    private final Runnable f3312m = new Runnable() { // from class: androidx.room.h.5
        @Override // java.lang.Runnable
        public void run() {
            C1054h.this.f3303d.m4465b(C1054h.this.f3304e);
            try {
                AbstractC1045e abstractC1045e = C1054h.this.f3305f;
                if (abstractC1045e != null) {
                    abstractC1045e.mo4477a(C1054h.this.f3307h, C1054h.this.f3302c);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e);
            }
            C1054h.this.f3300a.unbindService(C1054h.this.f3309j);
        }
    };

    public C1054h(Context context, String str, C1049g c1049g, Executor executor) {
        this.f3300a = context.getApplicationContext();
        this.f3301b = str;
        this.f3303d = c1049g;
        this.f3306g = executor;
        this.f3304e = new C1049g.AbstractC1052b(c1049g.f3278b) { // from class: androidx.room.h.6
            @Override // androidx.room.C1049g.AbstractC1052b
            /* renamed from: a */
            public void mo4453a(Set<String> set) {
                if (C1054h.this.f3308i.get()) {
                    return;
                }
                try {
                    AbstractC1045e abstractC1045e = C1054h.this.f3305f;
                    if (abstractC1045e == null) {
                        return;
                    }
                    abstractC1045e.mo4478a(C1054h.this.f3302c, (String[]) set.toArray(new String[0]));
                } catch (RemoteException e) {
                    Log.w("ROOM", "Cannot broadcast invalidation", e);
                }
            }

            @Override // androidx.room.C1049g.AbstractC1052b
            /* renamed from: a */
            boolean mo4454a() {
                return true;
            }
        };
        this.f3300a.bindService(new Intent(this.f3300a, MultiInstanceInvalidationService.class), this.f3309j, 1);
    }
}
