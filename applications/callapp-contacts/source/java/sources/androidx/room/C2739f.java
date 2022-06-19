package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC2716b;
import androidx.room.AbstractC2729c;
import androidx.room.C2733e;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.f */
/* loaded from: classes-dex2jar.jar:androidx/room/f.class */
public final class C2739f {

    /* renamed from: a */
    final Context f10394a;

    /* renamed from: b */
    final String f10395b;

    /* renamed from: c */
    int f10396c;

    /* renamed from: d */
    final C2733e f10397d;

    /* renamed from: e */
    final C2733e.AbstractC2736b f10398e;

    /* renamed from: f */
    AbstractC2729c f10399f;

    /* renamed from: g */
    final Executor f10400g;

    /* renamed from: j */
    final ServiceConnection f10403j;

    /* renamed from: h */
    final AbstractC2716b f10401h = new AbstractC2716b.AbstractBinderC2717a() { // from class: androidx.room.f.1
        @Override // androidx.room.AbstractC2716b
        /* renamed from: a */
        public final void mo39969a(final String[] strArr) {
            C2739f.this.f10400g.execute(new Runnable() { // from class: androidx.room.f.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    HashSet hashSet;
                    C2733e c2733e = C2739f.this.f10397d;
                    String[] strArr2 = strArr;
                    synchronized (c2733e.f10375g) {
                        Iterator<Map.Entry<C2733e.AbstractC2736b, C2733e.C2737c>> it2 = c2733e.f10375g.iterator();
                        while (it2.hasNext()) {
                            Map.Entry<C2733e.AbstractC2736b, C2733e.C2737c> next = it2.next();
                            if (!next.getKey().mo39968a()) {
                                C2733e.C2737c value = next.getValue();
                                if (value.f10389b.length == 1) {
                                    int length = strArr2.length;
                                    int i = 0;
                                    while (true) {
                                        hashSet = null;
                                        if (i >= length) {
                                            break;
                                        } else if (strArr2[i].equalsIgnoreCase(value.f10389b[0])) {
                                            hashSet = value.f10391d;
                                            break;
                                        } else {
                                            i++;
                                        }
                                    }
                                } else {
                                    HashSet hashSet2 = new HashSet();
                                    for (String str : strArr2) {
                                        String[] strArr3 = value.f10389b;
                                        int length2 = strArr3.length;
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 < length2) {
                                                String str2 = strArr3[i2];
                                                if (str2.equalsIgnoreCase(str)) {
                                                    hashSet2.add(str2);
                                                    break;
                                                }
                                                i2++;
                                            }
                                        }
                                    }
                                    hashSet = null;
                                    if (hashSet2.size() > 0) {
                                        hashSet = hashSet2;
                                    }
                                }
                                if (hashSet != null) {
                                    value.f10390c.mo39941a(hashSet);
                                }
                            }
                        }
                    }
                }
            });
        }
    };

    /* renamed from: i */
    final AtomicBoolean f10402i = new AtomicBoolean(false);

    /* renamed from: k */
    final Runnable f10404k = new Runnable() { // from class: androidx.room.f.3
        @Override // java.lang.Runnable
        public final void run() {
            try {
                AbstractC2729c abstractC2729c = C2739f.this.f10399f;
                if (abstractC2729c == null) {
                    return;
                }
                C2739f c2739f = C2739f.this;
                c2739f.f10396c = abstractC2729c.mo39982a(c2739f.f10401h, C2739f.this.f10395b);
                C2739f.this.f10397d.m39980a(C2739f.this.f10398e);
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
            }
        }
    };

    /* renamed from: l */
    final Runnable f10405l = new Runnable() { // from class: androidx.room.f.4
        @Override // java.lang.Runnable
        public final void run() {
            C2739f.this.f10397d.m39974b(C2739f.this.f10398e);
        }
    };

    /* renamed from: m */
    private final Runnable f10406m = new Runnable() { // from class: androidx.room.f.5
        @Override // java.lang.Runnable
        public final void run() {
            C2739f.this.f10397d.m39974b(C2739f.this.f10398e);
            try {
                AbstractC2729c abstractC2729c = C2739f.this.f10399f;
                if (abstractC2729c != null) {
                    abstractC2729c.mo39983a(C2739f.this.f10401h, C2739f.this.f10396c);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e);
            }
            C2739f.this.f10394a.unbindService(C2739f.this.f10403j);
        }
    };

    public C2739f(Context context, String str, C2733e c2733e, Executor executor) {
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: androidx.room.f.2
            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                C2739f.this.f10399f = AbstractC2729c.AbstractBinderC2730a.m39985a(iBinder);
                C2739f.this.f10400g.execute(C2739f.this.f10404k);
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                C2739f.this.f10400g.execute(C2739f.this.f10405l);
                C2739f.this.f10399f = null;
            }
        };
        this.f10403j = serviceConnection;
        Context applicationContext = context.getApplicationContext();
        this.f10394a = applicationContext;
        this.f10395b = str;
        this.f10397d = c2733e;
        this.f10400g = executor;
        this.f10398e = new C2733e.AbstractC2736b((String[]) c2733e.f10369a.keySet().toArray(new String[0])) { // from class: androidx.room.f.6
            @Override // androidx.room.C2733e.AbstractC2736b
            /* renamed from: a */
            public final void mo39941a(Set<String> set) {
                if (C2739f.this.f10402i.get()) {
                    return;
                }
                try {
                    AbstractC2729c abstractC2729c = C2739f.this.f10399f;
                    if (abstractC2729c == null) {
                        return;
                    }
                    abstractC2729c.mo39984a(C2739f.this.f10396c, (String[]) set.toArray(new String[0]));
                } catch (RemoteException e) {
                    Log.w("ROOM", "Cannot broadcast invalidation", e);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.room.C2733e.AbstractC2736b
            /* renamed from: a */
            public final boolean mo39968a() {
                return true;
            }
        };
        applicationContext.bindService(new Intent(applicationContext, MultiInstanceInvalidationService.class), serviceConnection, 1);
    }
}
