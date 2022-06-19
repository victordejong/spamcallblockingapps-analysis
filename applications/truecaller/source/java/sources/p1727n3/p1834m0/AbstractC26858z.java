package p1727n3.p1834m0;

import android.os.Build;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.ListenableWorker;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
/* renamed from: n3.m0.z */
/* loaded from: classes-dex2jar.jar:n3/m0/z.class */
public abstract class AbstractC26858z {

    /* renamed from: a */
    public UUID f75122a;

    /* renamed from: b */
    public C26760p f75123b;

    /* renamed from: c */
    public Set<String> f75124c;

    /* renamed from: n3.m0.z$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/z$a.class */
    public static abstract class AbstractC26859a<B extends AbstractC26859a<?, ?>, W extends AbstractC26858z> {

        /* renamed from: c */
        public C26760p f75127c;

        /* renamed from: a */
        public boolean f75125a = false;

        /* renamed from: d */
        public Set<String> f75128d = new HashSet();

        /* renamed from: b */
        public UUID f75126b = UUID.randomUUID();

        public AbstractC26859a(Class<? extends ListenableWorker> cls) {
            this.f75127c = new C26760p(this.f75126b.toString(), cls.getName());
            this.f75128d.add(cls.getName());
            mo1270d();
        }

        /* renamed from: a */
        public final B m1273a(String str) {
            this.f75128d.add(str);
            return mo1270d();
        }

        /* renamed from: b */
        public final W m1272b() {
            W mo1271c = mo1271c();
            C26825d c26825d = this.f75127c.f74911j;
            boolean z = (Build.VERSION.SDK_INT >= 24 && c26825d.m1308a()) || c26825d.f75061d || c26825d.f75059b || c26825d.f75060c;
            C26760p c26760p = this.f75127c;
            if (c26760p.f74918q) {
                if (z) {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
                }
                if (c26760p.f74908g > 0) {
                    throw new IllegalArgumentException("Expedited jobs cannot be delayed");
                }
            }
            this.f75126b = UUID.randomUUID();
            C26760p c26760p2 = new C26760p(this.f75127c);
            this.f75127c = c26760p2;
            c26760p2.f74902a = this.f75126b.toString();
            return mo1271c;
        }

        /* renamed from: c */
        public abstract W mo1271c();

        /* renamed from: d */
        public abstract B mo1270d();

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* renamed from: e */
        public final B m1269e(EnumC26674a enumC26674a, long j, TimeUnit timeUnit) {
            this.f75125a = true;
            C26760p c26760p = this.f75127c;
            c26760p.f74913l = enumC26674a;
            ?? millis = timeUnit.toMillis(j);
            Objects.requireNonNull(c26760p);
            char c = millis;
            if (millis > 18000000) {
                AbstractC26839p.m1296c().mo1291f(C26760p.f74900s, "Backoff delay duration exceeds maximum value", new Throwable[0]);
                c = 43136;
            }
            char c2 = c;
            if (c < 10000) {
                AbstractC26839p.m1296c().mo1291f(C26760p.f74900s, "Backoff delay duration less than minimum value", new Throwable[0]);
                c2 = 10000;
            }
            c26760p.f74914m = c2;
            return mo1270d();
        }

        /* renamed from: f */
        public B m1268f(long j, TimeUnit timeUnit) {
            this.f75127c.f74908g = timeUnit.toMillis(j);
            if (RecyclerView.FOREVER_NS - System.currentTimeMillis() > this.f75127c.f74908g) {
                return mo1270d();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!");
        }

        /* renamed from: g */
        public final B m1267g(C26829f c26829f) {
            this.f75127c.f74906e = c26829f;
            return mo1270d();
        }
    }

    public AbstractC26858z(UUID uuid, C26760p c26760p, Set<String> set) {
        this.f75122a = uuid;
        this.f75123b = c26760p;
        this.f75124c = set;
    }

    /* renamed from: a */
    public String m1274a() {
        return this.f75122a.toString();
    }
}
