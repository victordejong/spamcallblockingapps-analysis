package com.applovin.impl.sdk.p057e;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.C1489e;
import com.applovin.impl.sdk.utils.C1492g;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.applovin.impl.sdk.e.o */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/o.class */
public class C1362o {

    /* renamed from: b */
    private final C1408l f5160b;

    /* renamed from: c */
    private final C1479t f5161c;

    /* renamed from: h */
    private boolean f5166h;

    /* renamed from: a */
    private final String f5159a = "TaskManager";

    /* renamed from: f */
    private final List<RunnableC1366c> f5164f = new ArrayList(5);

    /* renamed from: g */
    private final Object f5165g = new Object();

    /* renamed from: d */
    private final Executor f5162d = AsyncTask.THREAD_POOL_EXECUTOR;

    /* renamed from: e */
    private final Handler f5163e = new Handler(Looper.getMainLooper());

    /* renamed from: com.applovin.impl.sdk.e.o$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/o$a.class */
    public enum EnumC1364a {
        MAIN,
        TIMEOUT,
        BACKGROUND,
        ADVERTISING_INFO_COLLECTION,
        POSTBACKS,
        CACHING_INTERSTITIAL,
        CACHING_INCENTIVIZED,
        CACHING_OTHER,
        REWARD,
        MEDIATION_MAIN,
        MEDIATION_TIMEOUT,
        MEDIATION_BACKGROUND,
        MEDIATION_POSTBACKS,
        MEDIATION_BANNER,
        MEDIATION_INTERSTITIAL,
        MEDIATION_INCENTIVIZED,
        MEDIATION_REWARDED_INTERSTITIAL,
        MEDIATION_REWARD
    }

    /* renamed from: com.applovin.impl.sdk.e.o$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/o$b.class */
    public static class RunnableC1365b implements Runnable {

        /* renamed from: a */
        private final Runnable f5186a;

        /* renamed from: b */
        private final Executor f5187b;

        private RunnableC1365b(Runnable runnable, Executor executor) {
            this.f5186a = runnable;
            this.f5187b = executor;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5187b.execute(this.f5186a);
        }
    }

    /* renamed from: com.applovin.impl.sdk.e.o$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/o$c.class */
    public static class RunnableC1366c implements Runnable {

        /* renamed from: a */
        private final C1408l f5188a;

        /* renamed from: b */
        private final String f5189b;

        /* renamed from: c */
        private final C1479t f5190c;

        /* renamed from: d */
        private final AbstractRunnableC1331a f5191d;

        /* renamed from: e */
        private final EnumC1364a f5192e;

        public RunnableC1366c(C1408l c1408l, AbstractRunnableC1331a abstractRunnableC1331a, EnumC1364a enumC1364a) {
            this.f5188a = c1408l;
            this.f5190c = c1408l.m5542A();
            this.f5189b = abstractRunnableC1331a.m5727e();
            this.f5191d = abstractRunnableC1331a;
            this.f5192e = enumC1364a;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sb;
            String str;
            C1479t c1479t;
            try {
                C1492g.m5076a();
            } catch (Throwable th) {
                try {
                    this.f5190c.m5115b(this.f5189b, "Task failed execution", th);
                    c1479t = this.f5190c;
                    str = this.f5189b;
                    sb = new StringBuilder();
                } catch (Throwable th2) {
                    C1479t c1479t2 = this.f5190c;
                    String str2 = this.f5189b;
                    c1479t2.m5114c(str2, this.f5192e + " queue finished task " + this.f5191d.m5727e());
                    throw th2;
                }
            }
            if (this.f5188a.m5473c() && !this.f5191d.m5725g()) {
                this.f5190c.m5114c(this.f5189b, "Task re-scheduled...");
                this.f5188a.m5525R().m5652a(this.f5191d, this.f5192e, 2000L);
                c1479t = this.f5190c;
                str = this.f5189b;
                sb = new StringBuilder();
                sb.append(this.f5192e);
                sb.append(" queue finished task ");
                sb.append(this.f5191d.m5727e());
                c1479t.m5114c(str, sb.toString());
            }
            this.f5191d.run();
            c1479t = this.f5190c;
            str = this.f5189b;
            sb = new StringBuilder();
            sb.append(this.f5192e);
            sb.append(" queue finished task ");
            sb.append(this.f5191d.m5727e());
            c1479t.m5114c(str, sb.toString());
        }
    }

    public C1362o(C1408l c1408l) {
        this.f5160b = c1408l;
        this.f5161c = c1408l.m5542A();
    }

    /* renamed from: a */
    private void m5649a(Runnable runnable, long j, boolean z) {
        if (j <= 0) {
            this.f5162d.execute(runnable);
            return;
        }
        RunnableC1365b runnableC1365b = new RunnableC1365b(runnable, this.f5162d);
        if (z) {
            C1489e.m5079a(j, this.f5160b, runnableC1365b);
        } else {
            this.f5163e.postDelayed(runnableC1365b, j);
        }
    }

    /* renamed from: a */
    private boolean m5650a(RunnableC1366c runnableC1366c) {
        if (runnableC1366c.f5191d.m5725g()) {
            return false;
        }
        synchronized (this.f5165g) {
            if (this.f5166h) {
                return false;
            }
            this.f5164f.add(runnableC1366c);
            return true;
        }
    }

    /* renamed from: a */
    public void m5654a(AbstractRunnableC1331a abstractRunnableC1331a) {
        if (abstractRunnableC1331a == null) {
            this.f5161c.m5111e("TaskManager", "Attempted to execute null task immediately");
            return;
        }
        try {
            abstractRunnableC1331a.run();
        } catch (Throwable th) {
            this.f5161c.m5115b(abstractRunnableC1331a.m5727e(), "Task failed execution", th);
        }
    }

    /* renamed from: a */
    public void m5653a(AbstractRunnableC1331a abstractRunnableC1331a, EnumC1364a enumC1364a) {
        m5652a(abstractRunnableC1331a, enumC1364a, 0L);
    }

    /* renamed from: a */
    public void m5652a(AbstractRunnableC1331a abstractRunnableC1331a, EnumC1364a enumC1364a, long j) {
        m5651a(abstractRunnableC1331a, enumC1364a, j, false);
    }

    /* renamed from: a */
    public void m5651a(AbstractRunnableC1331a abstractRunnableC1331a, EnumC1364a enumC1364a, long j, boolean z) {
        if (abstractRunnableC1331a != null) {
            if (j < 0) {
                throw new IllegalArgumentException("Invalid delay (millis) specified: " + j);
            } else if (!m5650a(new RunnableC1366c(this.f5160b, abstractRunnableC1331a, enumC1364a))) {
                m5649a(abstractRunnableC1331a, j, z);
                return;
            } else {
                this.f5161c.m5114c(abstractRunnableC1331a.m5727e(), "Task execution delayed until after init");
                return;
            }
        }
        throw new IllegalArgumentException("No task specified");
    }

    /* renamed from: a */
    public boolean m5655a() {
        return this.f5166h;
    }

    /* renamed from: b */
    public Executor m5648b() {
        return this.f5162d;
    }

    /* renamed from: c */
    public void m5647c() {
        synchronized (this.f5165g) {
            this.f5166h = false;
        }
    }

    /* renamed from: d */
    public void m5646d() {
        synchronized (this.f5165g) {
            this.f5166h = true;
            for (RunnableC1366c runnableC1366c : this.f5164f) {
                m5653a(runnableC1366c.f5191d, runnableC1366c.f5192e);
            }
            this.f5164f.clear();
        }
    }
}
