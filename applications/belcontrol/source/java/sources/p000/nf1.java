package p000;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.asn1.x509.DisplayText;
import p000.mf1;
/* renamed from: nf1 */
/* loaded from: classes3-dex2jar.jar:nf1.class */
public class nf1 implements mf1 {

    /* renamed from: a */
    public static final AtomicReference<ExecutorService> f7132a = new AtomicReference<>();

    /* renamed from: b */
    public static final Queue<mf1.AbstractC1479a> f7133b = new ConcurrentLinkedQueue();

    /* renamed from: c */
    public static volatile mf1.EnumC1480b f7134c = mf1.EnumC1480b.OFF;

    /* renamed from: d */
    public static volatile boolean f7135d = ue1.f8318a.booleanValue();

    /* renamed from: e */
    public static volatile int f7136e = DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE;

    /* renamed from: nf1$a */
    /* loaded from: classes3-dex2jar.jar:nf1$a.class */
    public class ThreadFactoryC1500a implements ThreadFactory {
        public ThreadFactoryC1500a(nf1 nf1Var) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "MoatStatus");
            thread.setDaemon(true);
            return thread;
        }
    }

    /* renamed from: nf1$b */
    /* loaded from: classes3-dex2jar.jar:nf1$b.class */
    public class C1501b implements RunnableC1502c.AbstractC1504b {
        public C1501b() {
            nf1.this = r4;
        }

        @Override // p000.nf1.RunnableC1502c.AbstractC1504b
        /* renamed from: a */
        public void mo1166a(mf1.EnumC1480b enumC1480b) {
            if (nf1.f7134c != enumC1480b) {
                synchronized (nf1.f7133b) {
                    if (enumC1480b == mf1.EnumC1480b.ON && nf1.f7135d) {
                        Log.d("MoatOnOff", "Moat enabled - Version 1.7.11");
                    }
                    mf1.EnumC1480b unused = nf1.f7134c = enumC1480b;
                    Iterator it = nf1.f7133b.iterator();
                    while (it.hasNext()) {
                        mf1.AbstractC1479a abstractC1479a = (mf1.AbstractC1479a) it.next();
                        if (enumC1480b == mf1.EnumC1480b.ON) {
                            abstractC1479a.mo1033d();
                        } else {
                            abstractC1479a.mo1035b();
                        }
                        it.remove();
                    }
                }
            }
            nf1.this.m1170k();
        }
    }

    /* renamed from: nf1$c */
    /* loaded from: classes3-dex2jar.jar:nf1$c.class */
    public static class RunnableC1502c implements Runnable {

        /* renamed from: f */
        public static final long f7138f;

        /* renamed from: a */
        public final df1 f7139a;

        /* renamed from: b */
        public final String f7140b;

        /* renamed from: c */
        public final AbstractC1504b f7141c;

        /* renamed from: d */
        public mf1.EnumC1480b f7142d;

        /* renamed from: nf1$c$a */
        /* loaded from: classes3-dex2jar.jar:nf1$c$a.class */
        public class RunnableC1503a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ mf1.EnumC1480b f7143a;

            public RunnableC1503a(mf1.EnumC1480b enumC1480b) {
                RunnableC1502c.this = r4;
                this.f7143a = enumC1480b;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    RunnableC1502c.this.f7141c.mo1166a(this.f7143a);
                } catch (Exception e) {
                    uf1.m397a(e);
                }
            }
        }

        /* renamed from: nf1$c$b */
        /* loaded from: classes3-dex2jar.jar:nf1$c$b.class */
        public interface AbstractC1504b {
            /* renamed from: a */
            void mo1166a(mf1.EnumC1480b enumC1480b);
        }

        static {
            f7138f = ue1.f8318a.booleanValue() ? (char) 2000 : (char) 24464;
        }

        public RunnableC1502c(String str, df1 df1Var, AbstractC1504b abstractC1504b) {
            this.f7142d = mf1.EnumC1480b.OFF;
            this.f7139a = df1Var;
            this.f7141c = abstractC1504b;
            this.f7140b = "https://z.moatads.com/" + str + "/android/4724e28/status.json";
        }

        public /* synthetic */ RunnableC1502c(String str, df1 df1Var, AbstractC1504b abstractC1504b, ThreadFactoryC1500a threadFactoryC1500a) {
            this(str, df1Var, abstractC1504b);
        }

        /* renamed from: b */
        public final mf1.EnumC1480b m1168b() {
            vf1<String> mo2167a = this.f7139a.mo2167a(this.f7140b + "?ts=" + System.currentTimeMillis() + "&v=1.7.11");
            if (!mo2167a.m327c()) {
                return mf1.EnumC1480b.OFF;
            }
            af1 af1Var = new af1(mo2167a.m328b());
            boolean unused = nf1.f7135d = af1Var.m7220b();
            int unused2 = nf1.f7136e = af1Var.m7221a();
            return af1Var.m7218d() ? mf1.EnumC1480b.ON : mf1.EnumC1480b.OFF;
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* renamed from: c */
        public final void m1167c() {
            char c = 0;
            while (true) {
                long currentTimeMillis = System.currentTimeMillis() - c;
                long j = f7138f;
                if (currentTimeMillis < j) {
                    try {
                        Thread.sleep((j + 10) - currentTimeMillis);
                    } catch (InterruptedException e) {
                        if (ue1.f8318a.booleanValue()) {
                            Log.e("MoatOnOffLoop", "Interruption attempted (and ignored): " + Log.getStackTraceString(e));
                        }
                    }
                }
                c = System.currentTimeMillis();
                mf1.EnumC1480b m1168b = m1168b();
                Handler handler = new Handler(Looper.getMainLooper());
                if (!m1168b.equals(this.f7142d) && ue1.f8318a.booleanValue()) {
                    Log.i("MoatOnOffLoop", "Moat is now " + this.f7142d);
                }
                this.f7142d = m1168b;
                handler.post(new RunnableC1503a(m1168b));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m1167c();
                throw null;
            } catch (Exception e) {
                this.f7142d = mf1.EnumC1480b.OFF;
                uf1.m397a(e);
            }
        }
    }

    public nf1(df1 df1Var) {
        AtomicReference<ExecutorService> atomicReference = f7132a;
        if (atomicReference.get() != null || !atomicReference.compareAndSet(null, Executors.newSingleThreadExecutor(new ThreadFactoryC1500a(this)))) {
            return;
        }
        atomicReference.get().submit(new RunnableC1502c("AOL", df1Var, new C1501b(), null));
    }

    @Override // p000.mf1
    /* renamed from: a */
    public void mo1180a(mf1.AbstractC1479a abstractC1479a) {
        m1170k();
        f7133b.add(abstractC1479a);
    }

    @Override // p000.mf1
    /* renamed from: b */
    public boolean mo1179b() {
        return f7135d;
    }

    @Override // p000.mf1
    /* renamed from: c */
    public int mo1178c() {
        return f7136e;
    }

    @Override // p000.mf1
    public mf1.EnumC1480b getStatus() {
        return f7134c;
    }

    /* renamed from: k */
    public final void m1170k() {
        Queue<mf1.AbstractC1479a> queue = f7133b;
        synchronized (queue) {
            long currentTimeMillis = System.currentTimeMillis();
            Iterator<mf1.AbstractC1479a> it = queue.iterator();
            while (it.hasNext()) {
                mf1.AbstractC1479a next = it.next();
                if (!next.mo1036a() && currentTimeMillis - next.mo1034c() < 300000) {
                }
                it.remove();
            }
            if (f7133b.size() >= 15) {
                for (int i = 0; i < 5; i++) {
                    f7133b.remove();
                }
            }
        }
    }
}
