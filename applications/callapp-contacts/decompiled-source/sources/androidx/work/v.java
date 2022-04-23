package androidx.work;

import androidx.work.impl.model.WorkSpec;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/v.class */
public abstract class v {

    /* renamed from: a  reason: collision with root package name */
    public UUID f6239a;

    /* renamed from: b  reason: collision with root package name */
    public WorkSpec f6240b;

    /* renamed from: c  reason: collision with root package name */
    public Set<String> f6241c;

    /* loaded from: classes-dex2jar.jar:androidx/work/v$a.class */
    public static abstract class a<B extends a<?, ?>, W extends v> {

        /* renamed from: c  reason: collision with root package name */
        WorkSpec f6244c;
        Class<? extends ListenableWorker> e;

        /* renamed from: a  reason: collision with root package name */
        boolean f6242a = false;

        /* renamed from: d  reason: collision with root package name */
        Set<String> f6245d = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        UUID f6243b = UUID.randomUUID();

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Class<? extends ListenableWorker> cls) {
            this.e = cls;
            this.f6244c = new WorkSpec(this.f6243b.toString(), cls.getName());
            a(cls.getName());
        }

        abstract B a();

        public final B a(long j, TimeUnit timeUnit) {
            this.f6244c.initialDelay = timeUnit.toMillis(j);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.f6244c.initialDelay) {
                return a();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!");
        }

        public final B a(b bVar) {
            this.f6244c.constraints = bVar;
            return a();
        }

        public final B a(d dVar) {
            this.f6244c.input = dVar;
            return a();
        }

        public final B a(String str) {
            this.f6245d.add(str);
            return a();
        }

        abstract W b();

        public final W c() {
            W b2 = b();
            this.f6243b = UUID.randomUUID();
            WorkSpec workSpec = new WorkSpec(this.f6244c);
            this.f6244c = workSpec;
            workSpec.id = this.f6243b.toString();
            return b2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public v(UUID uuid, WorkSpec workSpec, Set<String> set) {
        this.f6239a = uuid;
        this.f6240b = workSpec;
        this.f6241c = set;
    }
}
