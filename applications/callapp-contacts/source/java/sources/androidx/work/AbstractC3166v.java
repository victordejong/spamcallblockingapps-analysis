package androidx.work;

import androidx.work.impl.model.WorkSpec;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.v */
/* loaded from: classes-dex2jar.jar:androidx/work/v.class */
public abstract class AbstractC3166v {

    /* renamed from: a */
    public UUID f11519a;

    /* renamed from: b */
    public WorkSpec f11520b;

    /* renamed from: c */
    public Set<String> f11521c;

    /* renamed from: androidx.work.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/v$a.class */
    public static abstract class AbstractC3167a<B extends AbstractC3167a<?, ?>, W extends AbstractC3166v> {

        /* renamed from: c */
        WorkSpec f11524c;

        /* renamed from: e */
        Class<? extends ListenableWorker> f11526e;

        /* renamed from: a */
        boolean f11522a = false;

        /* renamed from: d */
        Set<String> f11525d = new HashSet();

        /* renamed from: b */
        UUID f11523b = UUID.randomUUID();

        public AbstractC3167a(Class<? extends ListenableWorker> cls) {
            this.f11526e = cls;
            this.f11524c = new WorkSpec(this.f11523b.toString(), cls.getName());
            m39256a(cls.getName());
        }

        /* renamed from: a */
        abstract B mo39260a();

        /* renamed from: a */
        public final B m39259a(long j, TimeUnit timeUnit) {
            this.f11524c.initialDelay = timeUnit.toMillis(j);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.f11524c.initialDelay) {
                return mo39260a();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!");
        }

        /* renamed from: a */
        public final B m39258a(C2988b c2988b) {
            this.f11524c.constraints = c2988b;
            return mo39260a();
        }

        /* renamed from: a */
        public final B m39257a(C2992d c2992d) {
            this.f11524c.input = c2992d;
            return mo39260a();
        }

        /* renamed from: a */
        public final B m39256a(String str) {
            this.f11525d.add(str);
            return mo39260a();
        }

        /* renamed from: b */
        abstract W mo39255b();

        /* renamed from: c */
        public final W m39254c() {
            W mo39255b = mo39255b();
            this.f11523b = UUID.randomUUID();
            WorkSpec workSpec = new WorkSpec(this.f11524c);
            this.f11524c = workSpec;
            workSpec.f11397id = this.f11523b.toString();
            return mo39255b;
        }
    }

    public AbstractC3166v(UUID uuid, WorkSpec workSpec, Set<String> set) {
        this.f11519a = uuid;
        this.f11520b = workSpec;
        this.f11521c = set;
    }
}
