package kotlin.reflect.jvm.internal.impl.utils;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;
import kotlin.jvm.functions.Function1;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b.class */
public final class C20000b {

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$a.class */
    public static abstract class AbstractC20002a<N, R> implements AbstractC20005d<N, R> {
        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
        public void afterChildren(N n) {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
        public boolean beforeChildren(N n) {
            return true;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.b$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$b.class */
    public static abstract class AbstractC20003b<N, R, C extends Iterable<R>> extends AbstractC20002a<N, C> {
        protected final C result;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 1 ? 3 : 2];
            if (i != 1) {
                objArr[0] = "result";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/DFS$CollectingNodeHandler";
            }
            if (i != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS$CollectingNodeHandler";
            } else {
                objArr[1] = "result";
            }
            if (i != 1) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw (i != 1 ? new IllegalArgumentException(format) : new IllegalStateException(format));
        }

        protected AbstractC20003b(C c) {
            if (c == null) {
                $$$reportNull$$$0(0);
            }
            this.result = c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
        public C result() {
            C c = this.result;
            if (c == null) {
                $$$reportNull$$$0(1);
            }
            return c;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.b$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$c.class */
    public interface AbstractC20004c<N> {
        Iterable<? extends N> getNeighbors(N n);
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.b$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$d.class */
    public interface AbstractC20005d<N, R> {
        void afterChildren(N n);

        boolean beforeChildren(N n);

        R result();
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.b$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$e.class */
    public static abstract class AbstractC20006e<N, R> extends AbstractC20003b<N, R, LinkedList<R>> {
        public AbstractC20006e() {
            super(new LinkedList());
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.b$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$f.class */
    public interface AbstractC20007f<N> {
        /* renamed from: a */
        boolean mo1200a(N n);
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.b$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$g.class */
    public static final class C20008g<N> implements AbstractC20007f<N> {

        /* renamed from: a */
        private final Set<N> f66349a;

        public C20008g() {
            this(new HashSet());
        }

        public C20008g(Set<N> set) {
            if (set != null) {
                this.f66349a = set;
                return;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "visited", "kotlin/reflect/jvm/internal/impl/utils/DFS$VisitedWithSet", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20007f
        /* renamed from: a */
        public final boolean mo1200a(N n) {
            return this.f66349a.add(n);
        }
    }

    /* renamed from: a */
    public static <N> Boolean m1203a(Collection<N> collection, AbstractC20004c<N> abstractC20004c, final Function1<N, Boolean> function1) {
        if (collection == null) {
            m1205a(7);
        }
        if (abstractC20004c == null) {
            m1205a(8);
        }
        if (function1 == null) {
            m1205a(9);
        }
        final boolean[] zArr = new boolean[1];
        return (Boolean) m1202a(collection, abstractC20004c, new AbstractC20002a<N, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.utils.b.1
            @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20002a, kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
            public final boolean beforeChildren(N n) {
                if (((Boolean) function1.invoke(n)).booleanValue()) {
                    zArr[0] = true;
                }
                return !zArr[0];
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
            public final /* synthetic */ Object result() {
                return Boolean.valueOf(zArr[0]);
            }
        });
    }

    /* renamed from: a */
    public static <N, R> R m1202a(Collection<N> collection, AbstractC20004c<N> abstractC20004c, AbstractC20005d<N, R> abstractC20005d) {
        if (collection == null) {
            m1205a(4);
        }
        if (abstractC20004c == null) {
            m1205a(5);
        }
        return (R) m1201a((Collection) collection, (AbstractC20004c) abstractC20004c, (AbstractC20007f) new C20008g(), (AbstractC20005d<N, Object>) abstractC20005d);
    }

    /* renamed from: a */
    private static <N, R> R m1201a(Collection<N> collection, AbstractC20004c<N> abstractC20004c, AbstractC20007f<N> abstractC20007f, AbstractC20005d<N, R> abstractC20005d) {
        if (collection == null) {
            m1205a(0);
        }
        if (abstractC20004c == null) {
            m1205a(1);
        }
        if (abstractC20005d == null) {
            m1205a(3);
        }
        for (N n : collection) {
            m1204a(n, abstractC20004c, abstractC20007f, abstractC20005d);
        }
        return abstractC20005d.result();
    }

    /* renamed from: a */
    private static /* synthetic */ void m1205a(int i) {
        Object[] objArr = new Object[3];
        switch (i) {
            case 1:
            case 5:
            case 8:
            case 11:
            case 15:
            case 18:
            case 21:
            case 23:
                objArr[0] = "neighbors";
                break;
            case 2:
            case 12:
            case 16:
            case 19:
            case 24:
                objArr[0] = "visited";
                break;
            case 3:
            case 6:
            case 13:
            case 25:
                objArr[0] = "handler";
                break;
            case 4:
            case 7:
            case 17:
            case 20:
            default:
                objArr[0] = "nodes";
                break;
            case 9:
                objArr[0] = "predicate";
                break;
            case 10:
            case 14:
                objArr[0] = "node";
                break;
            case 22:
                objArr[0] = "current";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS";
        switch (i) {
            case 7:
            case 8:
            case 9:
                objArr[2] = "ifAny";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "dfsFromNode";
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                objArr[2] = "topologicalOrder";
                break;
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "doDfs";
                break;
            default:
                objArr[2] = "dfs";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    /* renamed from: a */
    private static <N> void m1204a(N n, AbstractC20004c<N> abstractC20004c, AbstractC20007f<N> abstractC20007f, AbstractC20005d<N, ?> abstractC20005d) {
        if (n == null) {
            m1205a(22);
        }
        if (abstractC20004c == null) {
            m1205a(23);
        }
        if (abstractC20007f == null) {
            m1205a(24);
        }
        if (abstractC20005d == null) {
            m1205a(25);
        }
        if (abstractC20007f.mo1200a(n) && abstractC20005d.beforeChildren(n)) {
            for (N n2 : abstractC20004c.getNeighbors(n)) {
                m1204a(n2, abstractC20004c, abstractC20007f, abstractC20005d);
            }
            abstractC20005d.afterChildren(n);
        }
    }
}
