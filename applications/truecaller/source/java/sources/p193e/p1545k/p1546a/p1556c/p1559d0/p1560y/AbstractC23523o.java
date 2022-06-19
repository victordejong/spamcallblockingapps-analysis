package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
/* renamed from: e.k.a.c.d0.y.o */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/o.class */
public abstract class AbstractC23523o {

    /* renamed from: b */
    public static final Class<?> f65268b;

    /* renamed from: c */
    public static final Class<?> f65269c;

    /* renamed from: d */
    public static final Class<?> f65270d;

    /* renamed from: e */
    public static final Class<?> f65271e;

    /* renamed from: f */
    public static final Class<?> f65272f;

    /* renamed from: h */
    public static final Class<?> f65274h;

    /* renamed from: a */
    public static final Class<?> f65267a = Arrays.asList(null, null).getClass();

    /* renamed from: g */
    public static final Class<?> f65273g = Collections.unmodifiableList(new LinkedList()).getClass();

    /* renamed from: e.k.a.c.d0.y.o$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/o$a.class */
    public static class C23524a implements AbstractC23918i<Object, Object> {

        /* renamed from: a */
        public final AbstractC23698i f65275a;

        /* renamed from: b */
        public final int f65276b;

        public C23524a(int i, AbstractC23698i abstractC23698i) {
            this.f65275a = abstractC23698i;
            this.f65276b = i;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i
        /* renamed from: a */
        public AbstractC23698i mo5737a(C23887o c23887o) {
            return this.f65275a;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i
        /* renamed from: b */
        public AbstractC23698i mo5736b(C23887o c23887o) {
            return this.f65275a;
        }

        /* renamed from: c */
        public final void m6695c(int i) {
            if (i == 1) {
                return;
            }
            throw new IllegalArgumentException(C22128a.m8599l2("Can not deserialize Singleton container from ", i, " entries"));
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i
        public Object convert(Object obj) {
            if (obj == null) {
                return null;
            }
            switch (this.f65276b) {
                case 1:
                    Set set = (Set) obj;
                    m6695c(set.size());
                    return Collections.singleton(set.iterator().next());
                case 2:
                    List list = (List) obj;
                    m6695c(list.size());
                    return Collections.singletonList(list.get(0));
                case 3:
                    Map map = (Map) obj;
                    m6695c(map.size());
                    Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
                    return Collections.singletonMap(entry.getKey(), entry.getValue());
                case 4:
                    return Collections.unmodifiableSet((Set) obj);
                case 5:
                    return Collections.unmodifiableList((List) obj);
                case 6:
                    return Collections.unmodifiableMap((Map) obj);
                case 7:
                    return Collections.synchronizedSet((Set) obj);
                case 8:
                    return Collections.synchronizedCollection((Collection) obj);
                case 9:
                    return Collections.synchronizedList((List) obj);
                case 10:
                    return Collections.synchronizedMap((Map) obj);
                default:
                    return obj;
            }
        }
    }

    static {
        Boolean bool = Boolean.TRUE;
        Set singleton = Collections.singleton(bool);
        f65268b = singleton.getClass();
        f65271e = Collections.unmodifiableSet(singleton).getClass();
        List singletonList = Collections.singletonList(bool);
        f65269c = singletonList.getClass();
        f65272f = Collections.unmodifiableList(singletonList).getClass();
        Map singletonMap = Collections.singletonMap("a", C22021b.f61237c);
        f65270d = singletonMap.getClass();
        f65274h = Collections.unmodifiableMap(singletonMap).getClass();
    }

    /* renamed from: a */
    public static String m6696a(Class<?> cls) {
        String name = cls.getName();
        String substring = name.startsWith("java.util.Collections$") ? name.substring(22) : "";
        return (substring == null || !substring.startsWith("Synchronized")) ? "" : substring.substring(12);
    }
}
