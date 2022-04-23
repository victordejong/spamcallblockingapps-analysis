package p530d.p531a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
/* renamed from: d.a.r0 */
/* loaded from: classes2-dex2jar.jar:d/a/r0.class */
public final class C9303r0 {

    /* renamed from: d.a.r0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/r0$a.class */
    public class C9304a implements Comparator<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9305b f35873a;

        public C9304a(AbstractC9305b bVar) {
            this.f35873a = bVar;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            int b = this.f35873a.mo636b(t) - this.f35873a.mo636b(t2);
            return b != 0 ? b : t.getClass().getName().compareTo(t2.getClass().getName());
        }
    }

    /* renamed from: d.a.r0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/r0$b.class */
    public interface AbstractC9305b<T> {
        /* renamed from: a */
        boolean mo638a(T t);

        /* renamed from: b */
        int mo636b(T t);
    }

    /* renamed from: a */
    public static <T> Iterable<T> m2970a(Class<T> cls, ClassLoader classLoader) {
        ServiceLoader load = ServiceLoader.load(cls, classLoader);
        ServiceLoader serviceLoader = load;
        if (!load.iterator().hasNext()) {
            serviceLoader = ServiceLoader.load(cls);
        }
        return serviceLoader;
    }

    /* renamed from: a */
    public static <T> Iterable<T> m2969a(Class<T> cls, Iterable<Class<?>> iterable) {
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls2 : iterable) {
            arrayList.add(m2971a(cls, cls2));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static <T> T m2971a(Class<T> cls, Class<?> cls2) {
        try {
            return (T) cls2.asSubclass(cls).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            throw new ServiceConfigurationError(String.format("Provider %s could not be instantiated %s", cls2.getName(), th), th);
        }
    }

    /* renamed from: a */
    public static <T> T m2968a(Class<T> cls, Iterable<Class<?>> iterable, ClassLoader classLoader, AbstractC9305b<T> bVar) {
        List b = m2966b(cls, iterable, classLoader, bVar);
        if (b.isEmpty()) {
            return null;
        }
        return (T) b.get(0);
    }

    /* renamed from: a */
    public static boolean m2967a(ClassLoader classLoader) {
        try {
            Class.forName("android.app.Application", false, classLoader);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: b */
    public static <T> List<T> m2966b(Class<T> cls, Iterable<Class<?>> iterable, ClassLoader classLoader, AbstractC9305b<T> bVar) {
        Iterable a = m2967a(classLoader) ? m2969a(cls, iterable) : m2970a(cls, classLoader);
        ArrayList arrayList = new ArrayList();
        for (T t : a) {
            if (bVar.mo638a(t)) {
                arrayList.add(t);
            }
        }
        Collections.sort(arrayList, Collections.reverseOrder(new C9304a(bVar)));
        return Collections.unmodifiableList(arrayList);
    }
}
