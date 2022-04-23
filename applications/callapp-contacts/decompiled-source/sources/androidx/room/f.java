package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.b;
import androidx.room.c;
import androidx.room.e;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/room/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final Context f5559a;

    /* renamed from: b  reason: collision with root package name */
    final String f5560b;

    /* renamed from: c  reason: collision with root package name */
    int f5561c;

    /* renamed from: d  reason: collision with root package name */
    final e f5562d;
    final e.b e;
    c f;
    final Executor g;
    final ServiceConnection j;
    final b h = new b.a() { // from class: androidx.room.f.1
        @Override // androidx.room.b
        public final void a(final String[] strArr) {
            f.this.g.execute(new Runnable() { // from class: androidx.room.f.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    Set<String> set;
                    e eVar = f.this.f5562d;
                    String[] strArr2 = strArr;
                    synchronized (eVar.g) {
                        Iterator<Map.Entry<e.b, e.c>> it2 = eVar.g.iterator();
                        while (it2.hasNext()) {
                            Map.Entry<e.b, e.c> next = it2.next();
                            if (!next.getKey().a()) {
                                e.c value = next.getValue();
                                if (value.f5554b.length == 1) {
                                    int length = strArr2.length;
                                    int i = 0;
                                    while (true) {
                                        set = null;
                                        if (i >= length) {
                                            break;
                                        } else if (strArr2[i].equalsIgnoreCase(value.f5554b[0])) {
                                            set = value.f5556d;
                                            break;
                                        } else {
                                            i++;
                                        }
                                    }
                                } else {
                                    HashSet hashSet = new HashSet();
                                    for (String str : strArr2) {
                                        String[] strArr3 = value.f5554b;
                                        int length2 = strArr3.length;
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 < length2) {
                                                String str2 = strArr3[i2];
                                                if (str2.equalsIgnoreCase(str)) {
                                                    hashSet.add(str2);
                                                    break;
                                                }
                                                i2++;
                                            }
                                        }
                                    }
                                    set = null;
                                    if (hashSet.size() > 0) {
                                        set = hashSet;
                                    }
                                }
                                if (set != null) {
                                    value.f5555c.a(set);
                                }
                            }
                        }
                    }
                }
            });
        }
    };
    final AtomicBoolean i = new AtomicBoolean(false);
    final Runnable k = new Runnable() { // from class: androidx.room.f.3
        @Override // java.lang.Runnable
        public final void run() {
            try {
                c cVar = f.this.f;
                if (cVar != null) {
                    f fVar = f.this;
                    fVar.f5561c = cVar.a(fVar.h, f.this.f5560b);
                    f.this.f5562d.a(f.this.e);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
            }
        }
    };
    final Runnable l = new Runnable() { // from class: androidx.room.f.4
        @Override // java.lang.Runnable
        public final void run() {
            f.this.f5562d.b(f.this.e);
        }
    };
    private final Runnable m = new Runnable() { // from class: androidx.room.f.5
        @Override // java.lang.Runnable
        public final void run() {
            f.this.f5562d.b(f.this.e);
            try {
                c cVar = f.this.f;
                if (cVar != null) {
                    cVar.a(f.this.h, f.this.f5561c);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e);
            }
            f.this.f5559a.unbindService(f.this.j);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context, String str, e eVar, Executor executor) {
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: androidx.room.f.2
            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                f.this.f = c.a.a(iBinder);
                f.this.g.execute(f.this.k);
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                f.this.g.execute(f.this.l);
                f.this.f = null;
            }
        };
        this.j = serviceConnection;
        Context applicationContext = context.getApplicationContext();
        this.f5559a = applicationContext;
        this.f5560b = str;
        this.f5562d = eVar;
        this.g = executor;
        this.e = new e.b((String[]) eVar.f5543a.keySet().toArray(new String[0])) { // from class: androidx.room.f.6
            @Override // androidx.room.e.b
            public final void a(Set<String> set) {
                if (!f.this.i.get()) {
                    try {
                        c cVar = f.this.f;
                        if (cVar != null) {
                            cVar.a(f.this.f5561c, (String[]) set.toArray(new String[0]));
                        }
                    } catch (RemoteException e) {
                        Log.w("ROOM", "Cannot broadcast invalidation", e);
                    }
                }
            }

            @Override // androidx.room.e.b
            final boolean a() {
                return true;
            }
        };
        applicationContext.bindService(new Intent(applicationContext, MultiInstanceInvalidationService.class), serviceConnection, 1);
    }
}
