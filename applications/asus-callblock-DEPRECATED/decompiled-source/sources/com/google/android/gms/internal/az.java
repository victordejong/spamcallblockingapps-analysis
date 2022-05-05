package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.as;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.bf;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/az.class */
public final class az implements Handler.Callback {
    private static final Object d = new Object();
    private static az e;

    /* renamed from: a  reason: collision with root package name */
    private long f4134a;

    /* renamed from: b  reason: collision with root package name */
    private long f4135b;
    private long c;
    private final Context f;
    private final com.google.android.gms.common.b g;
    private int h;
    private final SparseArray<c<?>> i;
    private final Map<at<?>, c<?>> j;
    private final Set<at<?>> k;
    private final Handler l;
    private final ReferenceQueue<l<?>> m;
    private final SparseArray<a> n;
    private b o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/az$a.class */
    public final class a extends PhantomReference<l<?>> {

        /* renamed from: a  reason: collision with root package name */
        final int f4136a;

        public a(l lVar, int i, ReferenceQueue<l<?>> referenceQueue) {
            super(lVar, referenceQueue);
            this.f4136a = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/az$b.class */
    private static final class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final ReferenceQueue<l<?>> f4138a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<a> f4139b;
        private final AtomicBoolean c = new AtomicBoolean();

        public b(ReferenceQueue<l<?>> referenceQueue, SparseArray<a> sparseArray) {
            super("GoogleApiCleanup");
            this.f4138a = referenceQueue;
            this.f4139b = sparseArray;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            this.c.set(true);
            Process.setThreadPriority(10);
            while (this.c.get()) {
                try {
                    a aVar = (a) this.f4138a.remove();
                    this.f4139b.remove(aVar.f4136a);
                    az.this.l.sendMessage(az.this.l.obtainMessage(2, aVar.f4136a, 2));
                } catch (InterruptedException e) {
                    return;
                } finally {
                    this.c.set(false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/az$c.class */
    public final class c<O extends a.AbstractC0110a> implements b.AbstractC0112b, b.c {

        /* renamed from: b  reason: collision with root package name */
        final a.f f4141b;
        final at<O> c;
        boolean g;
        private final a.c j;

        /* renamed from: a  reason: collision with root package name */
        final Queue<as> f4140a = new LinkedList();
        final SparseArray<bf> d = new SparseArray<>();
        final Set<au> e = new HashSet();
        final SparseArray<Map<Object, av.a>> f = new SparseArray<>();
        ConnectionResult h = null;

        public c(l<O> lVar) {
            com.google.android.gms.common.api.a<O> aVar = lVar.f3956b;
            com.google.android.gms.common.internal.b.a(aVar.f3947a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
            a.b<?, O> bVar = aVar.f3947a;
            Context context = lVar.f3955a;
            Looper looper = az.this.l.getLooper();
            b.a aVar2 = new b.a(lVar.f3955a);
            this.f4141b = bVar.a(context, looper, new n(aVar2.f3950a, aVar2.f3951b, aVar2.g, aVar2.c, aVar2.d, aVar2.e, aVar2.f, aVar2.h.containsKey(bm.g) ? (bo) aVar2.h.get(bm.g) : bo.f4167a), lVar.c, this, this);
            if (this.f4141b instanceof g) {
                this.j = ((g) this.f4141b).f4005a;
            } else {
                this.j = this.f4141b;
            }
            this.c = lVar.d;
        }

        private void b(ConnectionResult connectionResult) {
            for (au auVar : this.e) {
                auVar.a(this.c, connectionResult);
            }
            this.e.clear();
        }

        @Override // com.google.android.gms.common.api.b.AbstractC0112b
        public final void a() {
            this.h = null;
            b(ConnectionResult.f3922a);
            c();
            for (int i = 0; i < this.f.size(); i++) {
                Iterator<av.a> it = this.f.get(this.f.keyAt(i)).values().iterator();
                while (it.hasNext()) {
                    it.next();
                    try {
                        av.a.a();
                    } catch (DeadObjectException e) {
                        this.f4141b.a();
                        b();
                    }
                }
            }
            while (this.f4141b.b() && !this.f4140a.isEmpty()) {
                a(this.f4140a.remove());
            }
            d();
        }

        @Override // com.google.android.gms.common.api.b.c
        public final void a(ConnectionResult connectionResult) {
            this.h = null;
            az.this.h = -1;
            b(connectionResult);
            int keyAt = this.d.keyAt(0);
            if (this.f4140a.isEmpty()) {
                this.h = connectionResult;
                return;
            }
            synchronized (az.d) {
                az.d();
            }
            if (!az.this.a(connectionResult, keyAt)) {
                if (connectionResult.c == 18) {
                    this.g = true;
                }
                if (this.g) {
                    az.this.l.sendMessageDelayed(Message.obtain(az.this.l, 8, this.c), az.this.f4134a);
                    return;
                }
                String valueOf = String.valueOf(this.c.f4127a.c);
                a(new Status(17, new StringBuilder(String.valueOf(valueOf).length() + 38).append("API: ").append(valueOf).append(" is not available on this device.").toString()));
            }
        }

        final void a(Status status) {
            for (as asVar : this.f4140a) {
                asVar.a(status);
            }
            this.f4140a.clear();
        }

        final void a(as asVar) {
            asVar.a(this.d);
            if (asVar.f4126b == 3) {
                try {
                    Map<Object, av.a> map = this.f.get(asVar.f4125a);
                    if (map == null) {
                        map = new android.support.v4.b.a<>((byte) 0);
                        this.f.put(asVar.f4125a, map);
                    }
                    av.a<? extends e, a.c> aVar = ((as.a) asVar).c;
                    map.put(((bb) aVar).a(), aVar);
                } catch (ClassCastException e) {
                    throw new IllegalStateException("Listener registration methods must implement ListenerApiMethod");
                }
            } else if (asVar.f4126b == 4) {
                try {
                    Map<Object, av.a> map2 = this.f.get(asVar.f4125a);
                    bb bbVar = (bb) ((as.a) asVar).c;
                    if (map2 != null) {
                        map2.remove(bbVar.a());
                    } else {
                        Log.w("GoogleApiManager", "Received call to unregister a listener without a matching registration call.");
                    }
                } catch (ClassCastException e2) {
                    throw new IllegalStateException("Listener unregistration methods must implement ListenerApiMethod");
                }
            }
            try {
                asVar.a();
            } catch (DeadObjectException e3) {
                this.f4141b.a();
                b();
            }
        }

        @Override // com.google.android.gms.common.api.b.AbstractC0112b
        public final void b() {
            this.h = null;
            this.g = true;
            az.this.l.sendMessageDelayed(Message.obtain(az.this.l, 8, this.c), az.this.f4134a);
            az.this.l.sendMessageDelayed(Message.obtain(az.this.l, 9, this.c), az.this.f4135b);
            az.this.h = -1;
        }

        final void c() {
            if (this.g) {
                az.this.l.removeMessages(9, this.c);
                az.this.l.removeMessages(8, this.c);
                this.g = false;
            }
        }

        final void d() {
            az.this.l.removeMessages(10, this.c);
            az.this.l.sendMessageDelayed(az.this.l.obtainMessage(10, this.c), az.this.c);
        }

        final void e() {
            boolean z;
            if (this.f4141b.b() && this.f.size() == 0) {
                for (int i = 0; i < this.d.size(); i++) {
                    av.a[] aVarArr = (av.a[]) this.d.get(this.d.keyAt(i)).f4154b.toArray(bf.f4153a);
                    int length = aVarArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            z = false;
                            break;
                        } else if (!aVarArr[i2].b()) {
                            z = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (z) {
                        d();
                        return;
                    }
                }
                this.f4141b.a();
            }
        }

        final void f() {
            if (!this.f4141b.b() && !this.f4141b.c()) {
                if (az.this.h != 0) {
                    az.this.h = az.this.g.a(az.this.f);
                    if (az.this.h != 0) {
                        a(new ConnectionResult(az.this.h, null));
                        return;
                    }
                }
                this.f4141b.a(new d(this.f4141b, this.c));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/az$d.class */
    public final class d implements k.f {

        /* renamed from: b  reason: collision with root package name */
        private final a.f f4143b;
        private final at<?> c;

        public d(a.f fVar, at<?> atVar) {
            this.f4143b = fVar;
            this.c = atVar;
        }

        @Override // com.google.android.gms.common.internal.k.f
        public final void a(ConnectionResult connectionResult) {
            if (connectionResult.b()) {
                this.f4143b.a(Collections.emptySet());
            } else {
                ((c) az.this.j.get(this.c)).a(connectionResult);
            }
        }
    }

    public static az a() {
        az azVar;
        synchronized (d) {
            azVar = e;
        }
        return azVar;
    }

    private void a(int i, boolean z) {
        av.a[] aVarArr;
        c<?> cVar = this.i.get(i);
        if (cVar != null) {
            if (!z) {
                this.i.delete(i);
            }
            Iterator<as> it = cVar.f4140a.iterator();
            while (it.hasNext()) {
                as next = it.next();
                if (next.f4125a == i && next.f4126b != 1 && next.b()) {
                    it.remove();
                }
            }
            bf bfVar = cVar.d.get(i);
            for (av.a aVar : (av.a[]) bfVar.f4154b.toArray(bf.f4153a)) {
                aVar.a((bf.a) null);
                if (aVar.d()) {
                    bfVar.f4154b.remove(aVar);
                }
            }
            cVar.f.delete(i);
            if (!z) {
                cVar.d.remove(i);
                az.this.n.remove(i);
                if (cVar.d.size() == 0 && cVar.f4140a.isEmpty()) {
                    cVar.c();
                    cVar.f4141b.a();
                    az.this.j.remove(cVar.c);
                    synchronized (d) {
                        az.this.k.remove(cVar.c);
                    }
                    return;
                }
                return;
            }
            return;
        }
        Log.wtf("GoogleApiManager", new StringBuilder(52).append("onRelease received for unknown instance: ").append(i).toString(), new Exception());
    }

    static /* synthetic */ ay d() {
        return null;
    }

    private void e() {
        for (c<?> cVar : this.j.values()) {
            cVar.h = null;
            cVar.f();
        }
    }

    final boolean a(ConnectionResult connectionResult, int i) {
        boolean z;
        if (connectionResult.a() || this.g.a(connectionResult.c)) {
            this.g.a(this.f, connectionResult, i);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public final void b() {
        this.l.sendMessage(this.l.obtainMessage(3));
    }

    public final void b(ConnectionResult connectionResult, int i) {
        if (!a(connectionResult, i)) {
            this.l.sendMessage(this.l.obtainMessage(5, i, 0));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z = false;
        boolean z2 = false;
        switch (message.what) {
            case 1:
                au auVar = (au) message.obj;
                throw new NullPointerException();
            case 2:
            case 7:
                int i = message.arg1;
                if (message.arg2 == 1) {
                    z = true;
                }
                a(i, z);
                z2 = true;
                break;
            case 3:
                e();
                z2 = true;
                break;
            case 4:
                as asVar = (as) message.obj;
                c<?> cVar = this.i.get(asVar.f4125a);
                if (cVar.f4141b.b()) {
                    cVar.a(asVar);
                    cVar.d();
                } else {
                    cVar.f4140a.add(asVar);
                    if (cVar.h == null || !cVar.h.a()) {
                        cVar.f();
                    } else {
                        cVar.a(cVar.h);
                    }
                }
                z2 = true;
                break;
            case 5:
                if (this.i.get(message.arg1) != null) {
                    this.i.get(message.arg1).a(new Status(17, "Error resolution was canceled by the user."));
                }
                z2 = true;
                break;
            case 6:
                l lVar = (l) message.obj;
                int i2 = message.arg1;
                Object obj = lVar.d;
                if (!this.j.containsKey(obj)) {
                    this.j.put(obj, new c(lVar));
                }
                c<?> cVar2 = this.j.get(obj);
                SparseArray<bf> sparseArray = cVar2.d;
                com.google.android.gms.common.api.a<?> aVar = cVar2.c.f4127a;
                if (aVar.f3948b != null) {
                    sparseArray.put(i2, new bf(aVar.f3948b, cVar2.f4141b));
                    this.i.put(i2, cVar2);
                    cVar2.f();
                    this.n.put(i2, new a(lVar, i2, this.m));
                    if (this.o == null || !this.o.c.get()) {
                        this.o = new b(this.m, this.n);
                        this.o.start();
                    }
                    z2 = true;
                    break;
                } else {
                    throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
                }
            case 8:
                if (this.j.containsKey(message.obj)) {
                    c<?> cVar3 = this.j.get(message.obj);
                    if (cVar3.g) {
                        cVar3.f();
                    }
                }
                z2 = true;
                break;
            case 9:
                if (this.j.containsKey(message.obj)) {
                    c<?> cVar4 = this.j.get(message.obj);
                    if (cVar4.g) {
                        cVar4.c();
                        cVar4.a(az.this.g.a(az.this.f) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                        cVar4.f4141b.a();
                    }
                }
                z2 = true;
                break;
            case 10:
                if (this.j.containsKey(message.obj)) {
                    this.j.get(message.obj).e();
                }
                z2 = true;
                break;
            default:
                Log.w("GoogleApiManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                break;
        }
        return z2;
    }
}
