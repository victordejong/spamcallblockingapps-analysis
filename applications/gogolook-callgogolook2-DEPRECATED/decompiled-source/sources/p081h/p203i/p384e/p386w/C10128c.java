package p081h.p203i.p384e.p386w;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import p081h.p203i.p384e.AbstractC10100f;
import p081h.p203i.p384e.C10105k;
import p081h.p203i.p384e.p386w.p389n.AbstractC10171b;
import p081h.p203i.p384e.p390x.C10173a;
/* renamed from: h.i.e.w.c */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/c.class */
public final class C10128c {

    /* renamed from: a */
    public final Map<Type, AbstractC10100f<?>> f22845a;

    /* renamed from: b */
    public final AbstractC10171b f22846b = AbstractC10171b.m13285a();

    /* renamed from: h.i.e.w.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$a.class */
    public class C10129a implements AbstractC10154h<T> {
        public C10129a(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.concurrent.ConcurrentHashMap] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new ConcurrentHashMap();
        }
    }

    /* renamed from: h.i.e.w.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$b.class */
    public class C10130b implements AbstractC10154h<T> {
        public C10130b(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new TreeMap();
        }
    }

    /* renamed from: h.i.e.w.c$c */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$c.class */
    public class C10131c implements AbstractC10154h<T> {
        public C10131c(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new LinkedHashMap();
        }
    }

    /* renamed from: h.i.e.w.c$d */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$d.class */
    public class C10132d implements AbstractC10154h<T> {
        public C10132d(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, h.i.e.w.g] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new C10146g();
        }
    }

    /* renamed from: h.i.e.w.c$e */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$e.class */
    public class C10133e implements AbstractC10154h<T> {

        /* renamed from: a */
        public final AbstractC10160l f22847a = AbstractC10160l.m13300a();

        /* renamed from: b */
        public final /* synthetic */ Class f22848b;

        /* renamed from: c */
        public final /* synthetic */ Type f22849c;

        public C10133e(C10128c cVar, Class cls, Type type) {
            this.f22848b = cls;
            this.f22849c = type;
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            try {
                return this.f22847a.mo13298a(this.f22848b);
            } catch (Exception e) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + this.f22849c + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
            }
        }
    }

    /* renamed from: h.i.e.w.c$f */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$f.class */
    public class C10134f implements AbstractC10154h<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10100f f22850a;

        /* renamed from: b */
        public final /* synthetic */ Type f22851b;

        public C10134f(C10128c cVar, AbstractC10100f fVar, Type type) {
            this.f22850a = fVar;
            this.f22851b = type;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return this.f22850a.createInstance(this.f22851b);
        }
    }

    /* renamed from: h.i.e.w.c$g */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$g.class */
    public class C10135g implements AbstractC10154h<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10100f f22852a;

        /* renamed from: b */
        public final /* synthetic */ Type f22853b;

        public C10135g(C10128c cVar, AbstractC10100f fVar, Type type) {
            this.f22852a = fVar;
            this.f22853b = type;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return this.f22852a.createInstance(this.f22853b);
        }
    }

    /* renamed from: h.i.e.w.c$h */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$h.class */
    public class C10136h implements AbstractC10154h<T> {

        /* renamed from: a */
        public final /* synthetic */ Constructor f22854a;

        public C10136h(C10128c cVar, Constructor constructor) {
            this.f22854a = constructor;
        }

        /* JADX WARN: Type inference failed for: r0v19, types: [T, java.lang.Object] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            try {
                return this.f22854a.newInstance(null);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Failed to invoke " + this.f22854a + " with no args", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to invoke " + this.f22854a + " with no args", e3.getTargetException());
            }
        }
    }

    /* renamed from: h.i.e.w.c$i */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$i.class */
    public class C10137i implements AbstractC10154h<T> {
        public C10137i(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new TreeSet();
        }
    }

    /* renamed from: h.i.e.w.c$j */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$j.class */
    public class C10138j implements AbstractC10154h<T> {

        /* renamed from: a */
        public final /* synthetic */ Type f22855a;

        public C10138j(C10128c cVar, Type type) {
            this.f22855a = type;
        }

        /* JADX WARN: Type inference failed for: r0v24, types: [T, java.util.EnumSet] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            Type type = this.f22855a;
            if (type instanceof ParameterizedType) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return EnumSet.noneOf((Class) type2);
                }
                throw new C10105k("Invalid EnumSet type: " + this.f22855a.toString());
            }
            throw new C10105k("Invalid EnumSet type: " + this.f22855a.toString());
        }
    }

    /* renamed from: h.i.e.w.c$k */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$k.class */
    public class C10139k implements AbstractC10154h<T> {
        public C10139k(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new LinkedHashSet();
        }
    }

    /* renamed from: h.i.e.w.c$l */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$l.class */
    public class C10140l implements AbstractC10154h<T> {
        public C10140l(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayDeque] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new ArrayDeque();
        }
    }

    /* renamed from: h.i.e.w.c$m */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$m.class */
    public class C10141m implements AbstractC10154h<T> {
        public C10141m(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new ArrayList();
        }
    }

    /* renamed from: h.i.e.w.c$n */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/c$n.class */
    public class C10142n implements AbstractC10154h<T> {
        public C10142n(C10128c cVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.ConcurrentSkipListMap, T] */
        @Override // p081h.p203i.p384e.p386w.AbstractC10154h
        public T construct() {
            return new ConcurrentSkipListMap();
        }
    }

    public C10128c(Map<Type, AbstractC10100f<?>> map) {
        this.f22845a = map;
    }

    /* renamed from: a */
    public <T> AbstractC10154h<T> m13332a(C10173a<T> aVar) {
        Type b = aVar.m13276b();
        Class<? super T> a = aVar.m13280a();
        AbstractC10100f<?> fVar = this.f22845a.get(b);
        if (fVar != null) {
            return new C10134f(this, fVar, b);
        }
        AbstractC10100f<?> fVar2 = this.f22845a.get(a);
        if (fVar2 != null) {
            return new C10135g(this, fVar2, b);
        }
        AbstractC10154h<T> a2 = m13331a(a);
        if (a2 != null) {
            return a2;
        }
        AbstractC10154h<T> a3 = m13330a(b, a);
        return a3 != null ? a3 : m13329b(b, a);
    }

    /* renamed from: a */
    public final <T> AbstractC10154h<T> m13331a(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f22846b.mo13284a(declaredConstructor);
            }
            return new C10136h(this, declaredConstructor);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final <T> AbstractC10154h<T> m13330a(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new C10137i(this) : EnumSet.class.isAssignableFrom(cls) ? new C10138j(this, type) : Set.class.isAssignableFrom(cls) ? new C10139k(this) : Queue.class.isAssignableFrom(cls) ? new C10140l(this) : new C10141m(this);
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new C10142n(this) : ConcurrentMap.class.isAssignableFrom(cls) ? new C10129a(this) : SortedMap.class.isAssignableFrom(cls) ? new C10130b(this) : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(C10173a.m13278a(((ParameterizedType) type).getActualTypeArguments()[0]).m13280a())) ? new C10132d(this) : new C10131c(this);
        }
        return null;
    }

    /* renamed from: b */
    public final <T> AbstractC10154h<T> m13329b(Type type, Class<? super T> cls) {
        return new C10133e(this, cls, type);
    }

    public String toString() {
        return this.f22845a.toString();
    }
}
