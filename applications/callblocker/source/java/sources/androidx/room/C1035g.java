package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC1023c;
import androidx.room.AbstractC1026d;
import androidx.room.C1030f;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.g */
/* loaded from: classes-dex2jar.jar:androidx/room/g.class */
public class C1035g {

    /* renamed from: a */
    final Context f3510a;

    /* renamed from: b */
    final String f3511b;

    /* renamed from: c */
    int f3512c;

    /* renamed from: d */
    final C1030f f3513d;

    /* renamed from: e */
    final C1030f.AbstractC1033b f3514e;

    /* renamed from: f */
    AbstractC1026d f3515f;

    /* renamed from: g */
    final Executor f3516g;

    /* renamed from: h */
    final AbstractC1023c f3517h = new AbstractC1023c.AbstractBinderC1024a() { // from class: androidx.room.g.1
        @Override // androidx.room.AbstractC1023c
        /* renamed from: a */
        public void mo18307a(final String[] strArr) {
            C1035g.this.f3516g.execute(new Runnable() { // from class: androidx.room.g.1.1
                @Override // java.lang.Runnable
                public void run() {
                    C1035g.this.f3513d.m18321a(strArr);
                }
            });
        }
    };

    /* renamed from: i */
    final AtomicBoolean f3518i = new AtomicBoolean(false);

    /* renamed from: j */
    final ServiceConnection f3519j = new ServiceConnection() { // from class: androidx.room.g.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1035g.this.f3515f = AbstractC1026d.AbstractBinderC1027a.m18331a(iBinder);
            C1035g.this.f3516g.execute(C1035g.this.f3520k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1035g.this.f3516g.execute(C1035g.this.f3521l);
            C1035g.this.f3515f = null;
        }
    };

    /* renamed from: k */
    final Runnable f3520k = new Runnable() { // from class: androidx.room.g.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                AbstractC1026d abstractC1026d = C1035g.this.f3515f;
                if (abstractC1026d == null) {
                    return;
                }
                C1035g.this.f3512c = abstractC1026d.mo18328a(C1035g.this.f3517h, C1035g.this.f3511b);
                C1035g.this.f3513d.m18323a(C1035g.this.f3514e);
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
            }
        }
    };

    /* renamed from: l */
    final Runnable f3521l = new Runnable() { // from class: androidx.room.g.4
        @Override // java.lang.Runnable
        public void run() {
            C1035g.this.f3513d.m18317b(C1035g.this.f3514e);
        }
    };

    /* renamed from: m */
    private final Runnable f3522m = new Runnable() { // from class: androidx.room.g.5
        @Override // java.lang.Runnable
        public void run() {
            C1035g.this.f3513d.m18317b(C1035g.this.f3514e);
            try {
                AbstractC1026d abstractC1026d = C1035g.this.f3515f;
                if (abstractC1026d != null) {
                    abstractC1026d.mo18329a(C1035g.this.f3517h, C1035g.this.f3512c);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e);
            }
            C1035g.this.f3510a.unbindService(C1035g.this.f3519j);
        }
    };

    public C1035g(Context context, String str, C1030f c1030f, Executor executor) {
        this.f3510a = context.getApplicationContext();
        this.f3511b = str;
        this.f3513d = c1030f;
        this.f3516g = executor;
        this.f3514e = new C1030f.AbstractC1033b(c1030f.f3488b) { // from class: androidx.room.g.6
            @Override // androidx.room.C1030f.AbstractC1033b
            /* renamed from: a */
            public void mo18305a(Set<String> set) {
                if (C1035g.this.f3518i.get()) {
                    return;
                }
                try {
                    AbstractC1026d abstractC1026d = C1035g.this.f3515f;
                    if (abstractC1026d == null) {
                        return;
                    }
                    abstractC1026d.mo18330a(C1035g.this.f3512c, (String[]) set.toArray(new String[0]));
                } catch (RemoteException e) {
                    Log.w("ROOM", "Cannot broadcast invalidation", e);
                }
            }

            @Override // androidx.room.C1030f.AbstractC1033b
            /* renamed from: a */
            boolean mo18306a() {
                return true;
            }
        };
        this.f3510a.bindService(new Intent(this.f3510a, MultiInstanceInvalidationService.class), this.f3519j, 1);
    }
}
