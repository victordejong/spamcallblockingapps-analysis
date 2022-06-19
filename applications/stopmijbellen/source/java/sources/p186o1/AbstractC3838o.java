package p186o1;

import android.os.Build;
import androidx.work.ListenableWorker;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import p186o1.C3827j;
import p282x1.C4832p;
/* renamed from: o1.o */
/* loaded from: classes-dex2jar.jar:o1/o.class */
public abstract class AbstractC3838o {

    /* renamed from: a */
    public UUID f12330a;

    /* renamed from: b */
    public C4832p f12331b;

    /* renamed from: c */
    public Set<String> f12332c;

    /* renamed from: o1.o$a */
    /* loaded from: classes-dex2jar.jar:o1/o$a.class */
    public static abstract class AbstractC3839a<B extends AbstractC3839a<?, ?>, W extends AbstractC3838o> {

        /* renamed from: b */
        public C4832p f12334b;

        /* renamed from: c */
        public Set<String> f12335c = new HashSet();

        /* renamed from: a */
        public UUID f12333a = UUID.randomUUID();

        public AbstractC3839a(Class<? extends ListenableWorker> cls) {
            this.f12334b = new C4832p(this.f12333a.toString(), cls.getName());
            this.f12335c.add(cls.getName());
        }

        /* renamed from: a */
        public final W m1765a() {
            C3827j c3827j = new C3827j((C3827j.C3828a) this);
            C3816b c3816b = this.f12334b.f14840j;
            int i = Build.VERSION.SDK_INT;
            boolean z = (i >= 24 && c3816b.m1777a()) || c3816b.f12297d || c3816b.f12295b || (i >= 23 && c3816b.f12296c);
            if (!this.f12334b.f14847q || !z) {
                this.f12333a = UUID.randomUUID();
                C4832p c4832p = new C4832p(this.f12334b);
                this.f12334b = c4832p;
                c4832p.f14831a = this.f12333a.toString();
                return c3827j;
            }
            throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
        }
    }

    public AbstractC3838o(UUID uuid, C4832p c4832p, Set<String> set) {
        this.f12330a = uuid;
        this.f12331b = c4832p;
        this.f12332c = set;
    }

    /* renamed from: a */
    public String m1766a() {
        return this.f12330a.toString();
    }
}
