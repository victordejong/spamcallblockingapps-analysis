package kotlin.reflect.jvm.internal.impl.utils;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import kotlin.jvm.functions.Function1;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b.class */
public final class b {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$a.class */
    public static abstract class a<N, R> implements d<N, R> {
        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        public void afterChildren(N n) {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        public boolean beforeChildren(N n) {
            return true;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$b.class */
    public static abstract class AbstractC0721b<N, R, C extends Iterable<R>> extends a<N, C> {
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

        protected AbstractC0721b(C c2) {
            if (c2 == null) {
                $$$reportNull$$$0(0);
            }
            this.result = c2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        public C result() {
            C c2 = this.result;
            if (c2 == null) {
                $$$reportNull$$$0(1);
            }
            return c2;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$c.class */
    public interface c<N> {
        Iterable<? extends N> getNeighbors(N n);
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$d.class */
    public interface d<N, R> {
        void afterChildren(N n);

        boolean beforeChildren(N n);

        R result();
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$e.class */
    public static abstract class e<N, R> extends AbstractC0721b<N, R, LinkedList<R>> {
        public e() {
            super(new LinkedList());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$f.class */
    public interface f<N> {
        boolean a(N n);
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/b$g.class */
    public static final class g<N> implements f<N> {

        /* renamed from: a  reason: collision with root package name */
        private final Set<N> f38505a;

        public g() {
            this(new HashSet());
        }

        public g(Set<N> set) {
            if (set != null) {
                this.f38505a = set;
                return;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "visited", "kotlin/reflect/jvm/internal/impl/utils/DFS$VisitedWithSet", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.f
        public final boolean a(N n) {
            return this.f38505a.add(n);
        }
    }

    public static <N> Boolean a(Collection<N> collection, c<N> cVar, final Function1<N, Boolean> function1) {
        if (collection == null) {
            a(7);
        }
        if (cVar == null) {
            a(8);
        }
        if (function1 == null) {
            a(9);
        }
        final boolean[] zArr = new boolean[1];
        return (Boolean) a(collection, cVar, new a<N, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.utils.b.1
            @Override // kotlin.reflect.jvm.internal.impl.utils.b.a, kotlin.reflect.jvm.internal.impl.utils.b.d
            public final boolean beforeChildren(N n) {
                if (((Boolean) Function1.this.invoke(n)).booleanValue()) {
                    zArr[0] = true;
                }
                return !zArr[0];
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
            public final /* synthetic */ Object result() {
                return Boolean.valueOf(zArr[0]);
            }
        });
    }

    public static <N, R> R a(Collection<N> collection, c<N> cVar, d<N, R> dVar) {
        if (collection == null) {
            a(4);
        }
        if (cVar == null) {
            a(5);
        }
        return (R) a((Collection) collection, (c) cVar, (f) new g(), (d<N, Object>) dVar);
    }

    private static <N, R> R a(Collection<N> collection, c<N> cVar, f<N> fVar, d<N, R> dVar) {
        if (collection == null) {
            a(0);
        }
        if (cVar == null) {
            a(1);
        }
        if (dVar == null) {
            a(3);
        }
        for (N n : collection) {
            a(n, cVar, fVar, dVar);
        }
        return dVar.result();
    }

    private static /* synthetic */ void a(int i) {
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

    private static <N> void a(N n, c<N> cVar, f<N> fVar, d<N, ?> dVar) {
        if (n == null) {
            a(22);
        }
        if (cVar == null) {
            a(23);
        }
        if (fVar == null) {
            a(24);
        }
        if (dVar == null) {
            a(25);
        }
        if (fVar.a(n) && dVar.beforeChildren(n)) {
            Iterator<? extends N> it2 = cVar.getNeighbors(n).iterator();
            while (it2.hasNext()) {
                a(it2.next(), cVar, fVar, dVar);
            }
            dVar.afterChildren(n);
        }
    }
}
