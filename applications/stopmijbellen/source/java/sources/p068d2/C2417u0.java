package p068d2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
@SuppressLint({"UseSparseArrays"})
/* renamed from: d2.u0 */
/* loaded from: classes-dex2jar.jar:d2/u0.class */
public class C2417u0 {

    /* renamed from: a */
    public final ArrayList<AbstractC2463z0> f8565a = new ArrayList<>();

    /* renamed from: b */
    public final HashMap<Integer, AbstractC2463z0> f8566b = new HashMap<>();

    /* renamed from: c */
    public int f8567c = 2;

    /* renamed from: d */
    public final HashMap<String, ArrayList<AbstractC2458y0>> f8568d = new HashMap<>();

    /* renamed from: e */
    public int f8569e = 1;

    /* renamed from: f */
    public final LinkedBlockingQueue<C2267f4> f8570f = new LinkedBlockingQueue<>();

    /* renamed from: g */
    public boolean f8571g = false;

    /* renamed from: h */
    public final ScheduledExecutorService f8572h = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: i */
    public final ExecutorService f8573i = Executors.newSingleThreadExecutor();

    /* renamed from: j */
    public ScheduledFuture<?> f8574j;

    /* renamed from: d2.u0$a */
    /* loaded from: classes-dex2jar.jar:d2/u0$a.class */
    public class RunnableC2418a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f8575a;

        public RunnableC2418a(Context context) {
            C2417u0.this = r4;
            this.f8575a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2267f4 c2267f4 = C2408t.m3591d().m3715s().f8370d;
            C2267f4 c2267f42 = new C2267f4();
            C2227e4.m3744i(c2267f4, "os_name", "android");
            C2227e4.m3744i(c2267f42, "filepath", C2408t.m3591d().m3732b().f8414a + "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5");
            C2227e4.m3745h(c2267f42, "info", c2267f4);
            C2227e4.m3740m(c2267f42, "m_origin", 0);
            C2417u0 c2417u0 = C2417u0.this;
            int i = c2417u0.f8569e;
            c2417u0.f8569e = i + 1;
            C2227e4.m3740m(c2267f42, "m_id", i);
            C2227e4.m3744i(c2267f42, "m_type", "Controller.create");
            try {
                new C2441x3(this.f8575a, 1, false).m3547m(true, new C2410t0(c2267f42));
            } catch (RuntimeException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(e.toString() + ": during WebView initialization.");
                sb.append(" Disabling AdColony.");
                C2408t.m3591d().m3718p().m3686e(0, 0, sb.toString(), false);
                C2168b.m3789i();
            }
        }
    }

    /* renamed from: d2.u0$b */
    /* loaded from: classes-dex2jar.jar:d2/u0$b.class */
    public class RunnableC2419b implements Runnable {
        public RunnableC2419b() {
            C2417u0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    C2267f4 poll = C2417u0.this.f8570f.poll(60L, TimeUnit.SECONDS);
                    if (poll != null) {
                        C2417u0.m3577c(C2417u0.this, poll);
                    } else {
                        synchronized (C2417u0.this.f8570f) {
                            if (C2417u0.this.f8570f.peek() == null) {
                                C2417u0.this.f8571g = false;
                                return;
                            }
                        }
                    }
                } catch (InterruptedException e) {
                    StringBuilder m8752j = C0082b.m8752j("Native messages thread was interrupted: ");
                    m8752j.append(e.toString());
                    C0082b.m8750l(0, 0, m8752j.toString(), true);
                }
            }
        }
    }

    /* renamed from: c */
    public static void m3577c(C2417u0 c2417u0, C2267f4 c2267f4) {
        Objects.requireNonNull(c2417u0);
        try {
            String m3703i = c2267f4.m3703i("m_type");
            int m3706f = c2267f4.m3706f("m_origin");
            RunnableC2431w0 runnableC2431w0 = new RunnableC2431w0(c2417u0, m3703i, c2267f4);
            if (m3706f >= 2) {
                C2315i3.m3652s(runnableC2431w0);
            } else {
                c2417u0.f8573i.execute(runnableC2431w0);
            }
        } catch (RejectedExecutionException e) {
            StringBuilder m8752j = C0082b.m8752j("RejectedExecutionException from message dispatcher's dispatchNativeMessage(): ");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
        } catch (JSONException e2) {
            StringBuilder m8752j2 = C0082b.m8752j("JSON error from message dispatcher's dispatchNativeMessage(): ");
            m8752j2.append(e2.toString());
            C0082b.m8750l(0, 0, m8752j2.toString(), true);
        }
    }

    /* renamed from: a */
    public AbstractC2463z0 m3579a(int i) {
        synchronized (this.f8565a) {
            AbstractC2463z0 abstractC2463z0 = this.f8566b.get(Integer.valueOf(i));
            if (abstractC2463z0 == null) {
                return null;
            }
            this.f8565a.remove(abstractC2463z0);
            this.f8566b.remove(Integer.valueOf(i));
            abstractC2463z0.mo3530c();
            return abstractC2463z0;
        }
    }

    /* renamed from: b */
    public void m3578b() {
        Context context;
        C2230f1 m3591d = C2408t.m3591d();
        if (m3591d.f8064B || m3591d.f8065C || (context = C2408t.f8531a) == null) {
            return;
        }
        m3575e();
        C2315i3.m3652s(new RunnableC2418a(context));
    }

    /* renamed from: d */
    public void m3576d(String str, AbstractC2458y0 abstractC2458y0) {
        ArrayList<AbstractC2458y0> arrayList = this.f8568d.get(str);
        ArrayList<AbstractC2458y0> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
            this.f8568d.put(str, arrayList2);
        }
        arrayList2.add(abstractC2458y0);
    }

    /* renamed from: e */
    public final void m3575e() {
        if (!this.f8571g) {
            synchronized (this.f8570f) {
                if (this.f8571g) {
                    return;
                }
                this.f8571g = true;
                new Thread(new RunnableC2419b()).start();
            }
        }
    }

    /* renamed from: f */
    public void m3574f(C2267f4 c2267f4) {
        try {
            if (c2267f4.m3705g("m_id", this.f8569e)) {
                this.f8569e++;
            }
            c2267f4.m3705g("m_origin", 0);
            int m3706f = c2267f4.m3706f("m_target");
            if (m3706f == 0) {
                m3575e();
                this.f8570f.add(c2267f4);
                return;
            }
            AbstractC2463z0 abstractC2463z0 = this.f8566b.get(Integer.valueOf(m3706f));
            if (abstractC2463z0 == null) {
                return;
            }
            abstractC2463z0.mo3528e(c2267f4);
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON error in ADCMessageDispatcher's sendMessage(): ");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
        }
    }

    /* renamed from: g */
    public int m3573g() {
        int i = this.f8567c;
        this.f8567c = i + 1;
        return i;
    }

    /* renamed from: h */
    public boolean m3572h() {
        Iterator<AbstractC2463z0> it2 = this.f8565a.iterator();
        while (it2.hasNext()) {
            if (it2.next().mo3532a()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public void m3571i() {
        if (!m3572h() || this.f8574j != null) {
            return;
        }
        try {
            this.f8574j = this.f8572h.scheduleAtFixedRate(new RunnableC2425v0(this), 0L, 17L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            StringBuilder m8752j = C0082b.m8752j("Error when scheduling message pumping");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
        }
    }

    /* renamed from: j */
    public void m3570j() {
        ScheduledFuture<?> scheduledFuture = this.f8574j;
        if (scheduledFuture != null) {
            if (!scheduledFuture.isCancelled()) {
                this.f8574j.cancel(false);
            }
            this.f8574j = null;
        }
    }
}
