package p1727n3.p1909z;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import s1.w.d;
import s1.z.c.l;
/* renamed from: n3.z.v */
/* loaded from: classes-dex2jar.jar:n3/z/v.class */
public abstract class AbstractC27603v<Key, Value> {

    /* renamed from: a */
    public final CopyOnWriteArrayList<AbstractC27606c> f77808a = new CopyOnWriteArrayList<>();

    /* renamed from: b */
    public final AtomicBoolean f77809b = new AtomicBoolean(false);

    /* renamed from: c */
    public final EnumC27607d f77810c;

    /* renamed from: n3.z.v$a */
    /* loaded from: classes-dex2jar.jar:n3/z/v$a.class */
    public static final class C27604a<Value> {

        /* renamed from: a */
        public final List<Value> f77811a;

        /* renamed from: b */
        public final Object f77812b;

        /* renamed from: c */
        public final Object f77813c;

        /* renamed from: d */
        public final int f77814d;

        /* renamed from: e */
        public final int f77815e;

        /* JADX WARN: Multi-variable type inference failed */
        public C27604a(List<? extends Value> list, Object obj, Object obj2, int i, int i2) {
            l.e(list, RemoteMessageConst.DATA);
            this.f77811a = list;
            this.f77812b = obj;
            this.f77813c = obj2;
            this.f77814d = i;
            this.f77815e = i2;
            if (i >= 0 || i == Integer.MIN_VALUE) {
                if (list.isEmpty() && (i > 0 || i2 > 0)) {
                    throw new IllegalArgumentException("Initial result cannot be empty if items are present in data set.");
                }
                if (i2 < 0 && i2 != Integer.MIN_VALUE) {
                    throw new IllegalArgumentException("List size + position too large, last item in list beyond totalCount.");
                }
                return;
            }
            throw new IllegalArgumentException("Position must be non-negative");
        }

        public /* synthetic */ C27604a(List list, Object obj, Object obj2, int i, int i2, int i3) {
            this(list, obj, obj2, (i3 & 8) != 0 ? Integer.MIN_VALUE : i, (i3 & 16) != 0 ? Integer.MIN_VALUE : i2);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C27604a) {
                C27604a c27604a = (C27604a) obj;
                z = false;
                if (l.a(this.f77811a, c27604a.f77811a)) {
                    z = false;
                    if (l.a(this.f77812b, c27604a.f77812b)) {
                        z = false;
                        if (l.a(this.f77813c, c27604a.f77813c)) {
                            z = false;
                            if (this.f77814d == c27604a.f77814d) {
                                z = false;
                                if (this.f77815e == c27604a.f77815e) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: n3.z.v$b */
    /* loaded from: classes-dex2jar.jar:n3/z/v$b.class */
    public static abstract class AbstractC27605b<Key, Value> {
        /* renamed from: a */
        public abstract AbstractC27603v<Key, Value> mo20a();
    }

    /* renamed from: n3.z.v$c */
    /* loaded from: classes-dex2jar.jar:n3/z/v$c.class */
    public interface AbstractC27606c {
        /* renamed from: b */
        void m19b();
    }

    /* renamed from: n3.z.v$d */
    /* loaded from: classes-dex2jar.jar:n3/z/v$d.class */
    public enum EnumC27607d {
        POSITIONAL,
        PAGE_KEYED,
        ITEM_KEYED
    }

    /* renamed from: n3.z.v$e */
    /* loaded from: classes-dex2jar.jar:n3/z/v$e.class */
    public static final class C27608e<K> {

        /* renamed from: a */
        public final EnumC27601t0 f77820a;

        /* renamed from: b */
        public final K f77821b;

        /* renamed from: c */
        public final int f77822c;

        /* renamed from: d */
        public final boolean f77823d;

        /* renamed from: e */
        public final int f77824e;

        public C27608e(EnumC27601t0 enumC27601t0, K k, int i, boolean z, int i2) {
            l.e(enumC27601t0, "type");
            this.f77820a = enumC27601t0;
            this.f77821b = k;
            this.f77822c = i;
            this.f77823d = z;
            this.f77824e = i2;
            if (enumC27601t0 == EnumC27601t0.REFRESH || k != null) {
                return;
            }
            throw new IllegalArgumentException("Key must be non-null for prepend/append");
        }
    }

    public AbstractC27603v(EnumC27607d enumC27607d) {
        l.e(enumC27607d, "type");
        this.f77810c = enumC27607d;
    }

    /* renamed from: a */
    public abstract Key m24a(Value value);

    /* renamed from: b */
    public void m23b() {
        if (this.f77809b.compareAndSet(false, true)) {
            for (AbstractC27606c abstractC27606c : this.f77808a) {
                abstractC27606c.m19b();
            }
        }
    }

    /* renamed from: c */
    public boolean m22c() {
        return this.f77809b.get();
    }

    /* renamed from: d */
    public abstract Object m21d(C27608e<Key> c27608e, d<? super C27604a<Value>> dVar);
}
