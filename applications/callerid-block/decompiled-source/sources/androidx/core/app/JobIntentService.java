package androidx.core.app;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService.class */
public abstract class JobIntentService extends Service {

    /* renamed from: h */
    static final HashMap<ComponentName, AbstractC0239h> f1561h = new HashMap<>();

    /* renamed from: b */
    AbstractC0237b f1562b;

    /* renamed from: c */
    AbstractC0239h f1563c;

    /* renamed from: d */
    AsyncTaskC0236a f1564d;

    /* renamed from: e */
    boolean f1565e = false;

    /* renamed from: f */
    boolean f1566f = false;

    /* renamed from: g */
    final ArrayList<d> f1567g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.JobIntentService$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$a.class */
    public final class AsyncTaskC0236a extends AsyncTask<Void, Void, Void> {
        AsyncTaskC0236a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                AbstractC0238e a = JobIntentService.this.m13687a();
                if (a == null) {
                    return null;
                }
                JobIntentService.this.m13683e(a.getIntent());
                a.m13675a();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onCancelled(Void r3) {
            JobIntentService.this.m13681g();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: c */
        public void onPostExecute(Void r3) {
            JobIntentService.this.m13681g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.JobIntentService$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$b.class */
    public interface AbstractC0237b {
        /* renamed from: a */
        AbstractC0238e m13677a();

        /* renamed from: b */
        IBinder m13676b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.JobIntentService$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$e.class */
    public interface AbstractC0238e {
        /* renamed from: a */
        void m13675a();

        Intent getIntent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.JobIntentService$h */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$h.class */
    public static abstract class AbstractC0239h {

        /* renamed from: a */
        final ComponentName f1569a;

        /* renamed from: b */
        boolean f1570b;

        /* renamed from: c */
        int f1571c;

        AbstractC0239h(ComponentName componentName) {
            this.f1569a = componentName;
        }

        /* renamed from: a */
        void m13674a(int i) {
            if (!this.f1570b) {
                this.f1570b = true;
                this.f1571c = i;
            } else if (this.f1571c != i) {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.f1571c);
            }
        }

        /* renamed from: b */
        public void m13673b() {
        }

        /* renamed from: c */
        public void m13672c() {
        }

        /* renamed from: d */
        public void m13671d() {
        }
    }

    public JobIntentService() {
        this.f1567g = Build.VERSION.SDK_INT >= 26 ? null : new ArrayList<>();
    }

    /* renamed from: d */
    static AbstractC0239h m13684d(Context context, ComponentName componentName, boolean z, int i) {
        g gVar;
        HashMap<ComponentName, AbstractC0239h> hashMap = f1561h;
        g gVar2 = (AbstractC0239h) hashMap.get(componentName);
        g gVar3 = gVar2;
        if (gVar2 == null) {
            if (Build.VERSION.SDK_INT < 26) {
                gVar = new c(context, componentName);
            } else if (z) {
                gVar = new g(context, componentName, i);
            } else {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            hashMap.put(componentName, gVar);
            gVar3 = gVar;
        }
        return gVar3;
    }

    /* renamed from: a */
    AbstractC0238e m13687a() {
        AbstractC0237b bVar = this.f1562b;
        if (bVar != null) {
            return bVar.m13677a();
        }
        synchronized (this.f1567g) {
            if (this.f1567g.size() <= 0) {
                return null;
            }
            return this.f1567g.remove(0);
        }
    }

    /* renamed from: b */
    boolean m13686b() {
        AsyncTaskC0236a aVar = this.f1564d;
        if (aVar != null) {
            aVar.cancel(this.f1565e);
        }
        return m13682f();
    }

    /* renamed from: c */
    void m13685c(boolean z) {
        if (this.f1564d == null) {
            this.f1564d = new AsyncTaskC0236a();
            AbstractC0239h hVar = this.f1563c;
            if (hVar != null && z) {
                hVar.m13672c();
            }
            this.f1564d.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: e */
    protected abstract void m13683e(Intent intent);

    /* renamed from: f */
    public boolean m13682f() {
        return true;
    }

    /* renamed from: g */
    void m13681g() {
        ArrayList<d> arrayList = this.f1567g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1564d = null;
                ArrayList<d> arrayList2 = this.f1567g;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    m13685c(false);
                } else if (!this.f1566f) {
                    this.f1563c.m13673b();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        AbstractC0237b bVar = this.f1562b;
        if (bVar != null) {
            return bVar.m13676b();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1562b = new f(this);
            this.f1563c = null;
            return;
        }
        this.f1562b = null;
        this.f1563c = m13684d(this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.f1567g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1566f = true;
                this.f1563c.m13673b();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f1567g == null) {
            return 2;
        }
        this.f1563c.m13671d();
        synchronized (this.f1567g) {
            ArrayList<d> arrayList = this.f1567g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(this, intent, i2));
            m13685c(true);
        }
        return 3;
    }
}
