package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p204a.p206b.EnumC6495d;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6629d;
/* renamed from: h.i.a.b.j.y.j.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/g.class */
public abstract class AbstractC6634g {

    /* renamed from: h.i.a.b.j.y.j.g$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/g$a.class */
    public static class C6635a {

        /* renamed from: a */
        public AbstractC6550a f16469a;

        /* renamed from: b */
        public Map<EnumC6495d, AbstractC6636b> f16470b = new HashMap();

        /* renamed from: a */
        public C6635a m22200a(EnumC6495d dVar, AbstractC6636b bVar) {
            this.f16470b.put(dVar, bVar);
            return this;
        }

        /* renamed from: a */
        public C6635a m22199a(AbstractC6550a aVar) {
            this.f16469a = aVar;
            return this;
        }

        /* renamed from: a */
        public AbstractC6634g m22201a() {
            if (this.f16469a == null) {
                throw new NullPointerException("missing required property: clock");
            } else if (this.f16470b.keySet().size() >= EnumC6495d.values().length) {
                Map<EnumC6495d, AbstractC6636b> map = this.f16470b;
                this.f16470b = new HashMap();
                return AbstractC6634g.m22205a(this.f16469a, map);
            } else {
                throw new IllegalStateException("Not all priorities have been configured");
            }
        }
    }

    /* renamed from: h.i.a.b.j.y.j.g$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/g$b.class */
    public static abstract class AbstractC6636b {

        /* renamed from: h.i.a.b.j.y.j.g$b$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/g$b$a.class */
        public static abstract class AbstractC6637a {
            /* renamed from: a */
            public abstract AbstractC6637a mo22193a(long j);

            /* renamed from: a */
            public abstract AbstractC6637a mo22192a(Set<EnumC6638c> set);

            /* renamed from: a */
            public abstract AbstractC6636b mo22194a();

            /* renamed from: b */
            public abstract AbstractC6637a mo22191b(long j);
        }

        /* renamed from: d */
        public static AbstractC6637a m22195d() {
            C6629d.C6631b bVar = new C6629d.C6631b();
            bVar.mo22192a(Collections.emptySet());
            return bVar;
        }

        /* renamed from: a */
        public abstract long mo22198a();

        /* renamed from: b */
        public abstract Set<EnumC6638c> mo22197b();

        /* renamed from: c */
        public abstract long mo22196c();
    }

    /* renamed from: h.i.a.b.j.y.j.g$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/g$c.class */
    public enum EnumC6638c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* renamed from: a */
    public static AbstractC6634g m22206a(AbstractC6550a aVar) {
        C6635a c = m22202c();
        EnumC6495d dVar = EnumC6495d.DEFAULT;
        AbstractC6636b.AbstractC6637a d = AbstractC6636b.m22195d();
        d.mo22193a(30000L);
        d.mo22191b(AdUtils.ONE_DAY);
        c.m22200a(dVar, d.mo22194a());
        EnumC6495d dVar2 = EnumC6495d.HIGHEST;
        AbstractC6636b.AbstractC6637a d2 = AbstractC6636b.m22195d();
        d2.mo22193a(1000L);
        d2.mo22191b(AdUtils.ONE_DAY);
        c.m22200a(dVar2, d2.mo22194a());
        EnumC6495d dVar3 = EnumC6495d.VERY_LOW;
        AbstractC6636b.AbstractC6637a d3 = AbstractC6636b.m22195d();
        d3.mo22193a(AdUtils.ONE_DAY);
        d3.mo22191b(AdUtils.ONE_DAY);
        d3.mo22192a(m22204a(EnumC6638c.NETWORK_UNMETERED, EnumC6638c.DEVICE_IDLE));
        c.m22200a(dVar3, d3.mo22194a());
        c.m22199a(aVar);
        return c.m22201a();
    }

    /* renamed from: a */
    public static AbstractC6634g m22205a(AbstractC6550a aVar, Map<EnumC6495d, AbstractC6636b> map) {
        return new C6628c(aVar, map);
    }

    /* renamed from: a */
    public static <T> Set<T> m22204a(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    /* renamed from: c */
    public static C6635a m22202c() {
        return new C6635a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* renamed from: a */
    public final long m22210a(int i, long j) {
        int i2;
        return (long) (Math.pow(3.0d, i - 1) * j * Math.max(1.0d, Math.log(10000.0d) / Math.log((j > 1 ? j : 2) * i2)));
    }

    /* renamed from: a */
    public long m22207a(EnumC6495d dVar, long j, int i) {
        long a = mo22211a().mo22344a();
        AbstractC6636b bVar = mo22203b().get(dVar);
        return Math.min(Math.max(m22210a(i, bVar.mo22198a()), j - a), bVar.mo22196c());
    }

    @RequiresApi(api = 21)
    /* renamed from: a */
    public JobInfo.Builder m22209a(JobInfo.Builder builder, EnumC6495d dVar, long j, int i) {
        builder.setMinimumLatency(m22207a(dVar, j, i));
        m22208a(builder, mo22203b().get(dVar).mo22197b());
        return builder;
    }

    /* renamed from: a */
    public abstract AbstractC6550a mo22211a();

    @RequiresApi(api = 21)
    /* renamed from: a */
    public final void m22208a(JobInfo.Builder builder, Set<EnumC6638c> set) {
        if (set.contains(EnumC6638c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(EnumC6638c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(EnumC6638c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    /* renamed from: b */
    public abstract Map<EnumC6495d, AbstractC6636b> mo22203b();
}
