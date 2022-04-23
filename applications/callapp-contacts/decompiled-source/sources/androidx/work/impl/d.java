package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.Configuration;
import androidx.work.WorkerParameters;
import androidx.work.f;
import androidx.work.impl.foreground.b;
import androidx.work.impl.k;
import androidx.work.impl.utils.a.c;
import androidx.work.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/d.class */
public final class d implements b, androidx.work.impl.foreground.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6075a = k.a("Processor");

    /* renamed from: c  reason: collision with root package name */
    private Context f6077c;

    /* renamed from: d  reason: collision with root package name */
    private Configuration f6078d;
    private androidx.work.impl.utils.b.a e;
    private WorkDatabase f;
    private List<e> i;
    private Map<String, k> h = new HashMap();
    private Map<String, k> g = new HashMap();
    private Set<String> j = new HashSet();
    private final List<b> k = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private PowerManager.WakeLock f6076b = null;
    private final Object l = new Object();

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/d$a.class */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private b f6079a;

        /* renamed from: b  reason: collision with root package name */
        private String f6080b;

        /* renamed from: c  reason: collision with root package name */
        private com.google.common.util.concurrent.a<Boolean> f6081c;

        a(b bVar, String str, com.google.common.util.concurrent.a<Boolean> aVar) {
            this.f6079a = bVar;
            this.f6080b = str;
            this.f6081c = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            try {
                z = this.f6081c.get().booleanValue();
            } catch (InterruptedException | ExecutionException e) {
                z = true;
            }
            this.f6079a.a(this.f6080b, z);
        }
    }

    public d(Context context, Configuration configuration, androidx.work.impl.utils.b.a aVar, WorkDatabase workDatabase, List<e> list) {
        this.f6077c = context;
        this.f6078d = configuration;
        this.e = aVar;
        this.f = workDatabase;
        this.i = list;
    }

    private void a() {
        synchronized (this.l) {
            if (!(!this.g.isEmpty())) {
                this.f6077c.startService(b.a(this.f6077c));
                PowerManager.WakeLock wakeLock = this.f6076b;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f6076b = null;
                }
            }
        }
    }

    private static boolean a(String str, k kVar) {
        if (kVar != null) {
            kVar.b();
            k.a();
            String.format("WorkerWrapper interrupted for %s", str);
            return true;
        }
        k.a();
        String.format("WorkerWrapper could not be found for %s", str);
        return false;
    }

    public final void a(b bVar) {
        synchronized (this.l) {
            this.k.add(bVar);
        }
    }

    @Override // androidx.work.impl.foreground.a
    public final void a(String str, f fVar) {
        synchronized (this.l) {
            k.a();
            String.format("Moving WorkSpec (%s) to the foreground", str);
            k remove = this.h.remove(str);
            if (remove != null) {
                if (this.f6076b == null) {
                    PowerManager.WakeLock a2 = androidx.work.impl.utils.k.a(this.f6077c, "ProcessorForegroundLck");
                    this.f6076b = a2;
                    a2.acquire();
                }
                this.g.put(str, remove);
                androidx.core.content.b.a(this.f6077c, b.a(this.f6077c, str, fVar));
            }
        }
    }

    @Override // androidx.work.impl.b
    public final void a(String str, boolean z) {
        synchronized (this.l) {
            this.h.remove(str);
            k.a();
            String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z));
            for (b bVar : this.k) {
                bVar.a(str, z);
            }
        }
    }

    public final boolean a(String str) {
        boolean a2;
        synchronized (this.l) {
            k.a();
            String.format("Processor stopping foreground work %s", str);
            a2 = a(str, this.g.remove(str));
        }
        return a2;
    }

    public final boolean a(String str, WorkerParameters.a aVar) {
        synchronized (this.l) {
            if (f(str)) {
                k.a();
                String.format("Work %s is already enqueued for processing", str);
                return false;
            }
            k.a aVar2 = new k.a(this.f6077c, this.f6078d, this.e, this, this.f, str);
            aVar2.h = this.i;
            if (aVar != null) {
                aVar2.i = aVar;
            }
            k kVar = new k(aVar2);
            c<Boolean> cVar = kVar.f;
            cVar.a(new a(this, str, cVar), this.e.a());
            this.h.put(str, kVar);
            this.e.b().execute(kVar);
            androidx.work.k.a();
            String.format("%s: processing %s", getClass().getSimpleName(), str);
            return true;
        }
    }

    public final void b(b bVar) {
        synchronized (this.l) {
            this.k.remove(bVar);
        }
    }

    public final boolean b(String str) {
        boolean a2;
        synchronized (this.l) {
            androidx.work.k.a();
            String.format("Processor stopping background work %s", str);
            a2 = a(str, this.h.remove(str));
        }
        return a2;
    }

    public final boolean c(String str) {
        boolean a2;
        synchronized (this.l) {
            androidx.work.k.a();
            boolean z = true;
            String.format("Processor cancelling %s", str);
            this.j.add(str);
            k remove = this.g.remove(str);
            if (remove == null) {
                z = false;
            }
            k kVar = remove;
            if (remove == null) {
                kVar = this.h.remove(str);
            }
            a2 = a(str, kVar);
            if (z) {
                a();
            }
        }
        return a2;
    }

    @Override // androidx.work.impl.foreground.a
    public final void d(String str) {
        synchronized (this.l) {
            this.g.remove(str);
            a();
        }
    }

    public final boolean e(String str) {
        boolean contains;
        synchronized (this.l) {
            contains = this.j.contains(str);
        }
        return contains;
    }

    public final boolean f(String str) {
        boolean z;
        synchronized (this.l) {
            if (!this.h.containsKey(str) && !this.g.containsKey(str)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    public final boolean g(String str) {
        boolean containsKey;
        synchronized (this.l) {
            containsKey = this.g.containsKey(str);
        }
        return containsKey;
    }
}
