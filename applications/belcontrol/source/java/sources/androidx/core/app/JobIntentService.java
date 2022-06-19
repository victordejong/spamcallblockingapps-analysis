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
    public static final HashMap<ComponentName, AbstractC0101h> f782h = new HashMap<>();

    /* renamed from: a */
    public AbstractC0099b f783a;

    /* renamed from: b */
    public AbstractC0101h f784b;

    /* renamed from: c */
    public AsyncTaskC0098a f785c;

    /* renamed from: d */
    public boolean f786d = false;

    /* renamed from: f */
    public boolean f787f = false;

    /* renamed from: g */
    public final ArrayList<d> f788g;

    /* renamed from: androidx.core.app.JobIntentService$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$a.class */
    public final class AsyncTaskC0098a extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC0098a() {
            JobIntentService.this = r4;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                AbstractC0100e m6810a = JobIntentService.this.m6810a();
                if (m6810a != null) {
                    JobIntentService.this.m6806e(m6810a.getIntent());
                    m6810a.m6798a();
                } else {
                    return null;
                }
            }
        }

        /* renamed from: b */
        public void onCancelled(Void r3) {
            JobIntentService.this.m6804g();
        }

        /* renamed from: c */
        public void onPostExecute(Void r3) {
            JobIntentService.this.m6804g();
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$b.class */
    public interface AbstractC0099b {
        /* renamed from: a */
        IBinder m6800a();

        /* renamed from: b */
        AbstractC0100e m6799b();
    }

    /* renamed from: androidx.core.app.JobIntentService$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$e.class */
    public interface AbstractC0100e {
        /* renamed from: a */
        void m6798a();

        Intent getIntent();
    }

    /* renamed from: androidx.core.app.JobIntentService$h */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$h.class */
    public static abstract class AbstractC0101h {

        /* renamed from: a */
        public final ComponentName f790a;

        /* renamed from: b */
        public boolean f791b;

        /* renamed from: c */
        public int f792c;

        public AbstractC0101h(ComponentName componentName) {
            this.f790a = componentName;
        }

        /* renamed from: a */
        public void m6797a(int i) {
            if (!this.f791b) {
                this.f791b = true;
                this.f792c = i;
            } else if (this.f792c == i) {
            } else {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.f792c);
            }
        }

        /* renamed from: b */
        public void m6796b() {
        }

        /* renamed from: c */
        public void m6795c() {
        }

        /* renamed from: d */
        public void m6794d() {
        }
    }

    public JobIntentService() {
        this.f788g = Build.VERSION.SDK_INT >= 26 ? null : new ArrayList<>();
    }

    /* renamed from: d */
    public static AbstractC0101h m6807d(Context context, ComponentName componentName, boolean z, int i) {
        AbstractC0101h abstractC0101h;
        HashMap<ComponentName, AbstractC0101h> hashMap = f782h;
        AbstractC0101h abstractC0101h2 = hashMap.get(componentName);
        AbstractC0101h abstractC0101h3 = abstractC0101h2;
        if (abstractC0101h2 == null) {
            if (Build.VERSION.SDK_INT < 26) {
                abstractC0101h = new c(context, componentName);
            } else if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            } else {
                abstractC0101h = new g(context, componentName, i);
            }
            hashMap.put(componentName, abstractC0101h);
            abstractC0101h3 = abstractC0101h;
        }
        return abstractC0101h3;
    }

    /* renamed from: a */
    public AbstractC0100e m6810a() {
        AbstractC0099b abstractC0099b = this.f783a;
        if (abstractC0099b != null) {
            return abstractC0099b.m6799b();
        }
        synchronized (this.f788g) {
            if (this.f788g.size() <= 0) {
                return null;
            }
            return this.f788g.remove(0);
        }
    }

    /* renamed from: b */
    public boolean m6809b() {
        AsyncTaskC0098a asyncTaskC0098a = this.f785c;
        if (asyncTaskC0098a != null) {
            asyncTaskC0098a.cancel(this.f786d);
        }
        return m6805f();
    }

    /* renamed from: c */
    public void m6808c(boolean z) {
        if (this.f785c == null) {
            this.f785c = new AsyncTaskC0098a();
            AbstractC0101h abstractC0101h = this.f784b;
            if (abstractC0101h != null && z) {
                abstractC0101h.m6795c();
            }
            this.f785c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: e */
    public abstract void m6806e(Intent intent);

    /* renamed from: f */
    public boolean m6805f() {
        return true;
    }

    /* renamed from: g */
    public void m6804g() {
        ArrayList<d> arrayList = this.f788g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f785c = null;
                ArrayList<d> arrayList2 = this.f788g;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    m6808c(false);
                } else if (!this.f787f) {
                    this.f784b.m6796b();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        AbstractC0099b abstractC0099b = this.f783a;
        if (abstractC0099b != null) {
            return abstractC0099b.m6800a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f783a = new f(this);
            this.f784b = null;
            return;
        }
        this.f783a = null;
        this.f784b = m6807d(this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.f788g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f787f = true;
                this.f784b.m6796b();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f788g != null) {
            this.f784b.m6794d();
            synchronized (this.f788g) {
                ArrayList<d> arrayList = this.f788g;
                if (intent == null) {
                    intent = new Intent();
                }
                arrayList.add(new d(this, intent, i2));
                m6808c(true);
            }
            return 3;
        }
        return 2;
    }
}
