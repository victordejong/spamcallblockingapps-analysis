package p193e.p1512i.p1516b.p1528q2;

import com.mopub.common.AdType;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.r;
import s1.p;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.i.b.q2.j */
/* loaded from: classes-dex2jar.jar:e/i/b/q2/j.class */
public class C23024j {

    /* renamed from: a */
    public final List<String> f63795a = i.T(new String[]{"java.", "javax.", "sun.", "com.sun.", "com.intellij.", "org.jetbrains.", "kotlin.", "android.", "com.android.", "androidx.", "dalvik.", "libcore.", "com.google", "com.mopub", "org.json", "com.squareup.", "org.junit."});

    /* renamed from: b */
    public final StackTraceElement f63796b = new StackTraceElement("<private class>", "<private method>", null, 0);

    /* renamed from: e.i.b.q2.j$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/q2/j$a.class */
    public static final class C23025a extends RuntimeException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23025a(Throwable th) {
            super("Exception occurred while removing publisher code. " + th.getClass().getSimpleName() + ": " + th.getMessage());
            l.f(th, "cause");
            StackTraceElement[] stackTrace = th.getStackTrace();
            l.b(stackTrace, "cause.stackTrace");
            Object[] copyOf = Arrays.copyOf(stackTrace, Math.min(th.getStackTrace().length, 5));
            l.b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            setStackTrace((StackTraceElement[]) copyOf);
        }
    }

    /* renamed from: e.i.b.q2.j$b */
    /* loaded from: classes-dex2jar.jar:e/i/b/q2/j$b.class */
    public static final class C23026b extends RuntimeException {
        public C23026b(String str) {
            super(C22128a.m8725C2("A ", str, " exception occurred from publisher's code"));
        }
    }

    /* renamed from: e.i.b.q2.j$c */
    /* loaded from: classes-dex2jar.jar:e/i/b/q2/j$c.class */
    public static final class C23027c {

        /* renamed from: a */
        public static final Field f63797a = m7580a("cause");

        /* renamed from: b */
        public static final Field f63798b = m7580a("suppressedExceptions");

        /* renamed from: c */
        public static final Field f63799c = m7580a("detailMessage");

        /* renamed from: d */
        public static final C23027c f63800d = null;

        /* renamed from: a */
        public static final Field m7580a(String str) {
            Field declaredField = Throwable.class.getDeclaredField(str);
            l.b(declaredField, "field");
            declaredField.setAccessible(true);
            return declaredField;
        }
    }

    /* renamed from: a */
    public Throwable m7582a(Throwable th, Map<Throwable, Throwable> map) {
        StackTraceElement stackTraceElement;
        boolean z;
        C23026b c23026b;
        boolean z2;
        l.f(th, "original");
        l.f(map, "visited");
        Throwable th2 = map.get(th);
        if (th2 != null) {
            return th2;
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        l.b(stackTrace, "stackTrace");
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                stackTraceElement = null;
                break;
            }
            stackTraceElement = stackTrace[i];
            l.b(stackTraceElement, "it");
            if (!m7581b(stackTraceElement)) {
                break;
            }
            i++;
        }
        if (stackTraceElement != null) {
            String className = stackTraceElement.getClassName();
            l.b(className, "className");
            z = !r.y(className, "com.criteo.", false, 2);
        } else {
            z = false;
        }
        if (z) {
            List<String> list = this.f63795a;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (String str : list) {
                    String name = th.getClass().getName();
                    l.b(name, "javaClass.name");
                    if (r.y(name, str, false, 2)) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                l.f(th, "throwable");
                String simpleName = th.getClass().getSimpleName();
                l.b(simpleName, "throwable.javaClass.simpleName");
                c23026b = new C23026b(simpleName);
            } else {
                c23026b = new C23026b(AdType.CUSTOM);
            }
        } else {
            c23026b = th;
        }
        map.put(th, c23026b);
        Throwable cause = th.getCause();
        boolean a = cause != null ? l.a(cause.toString(), th.getMessage()) : false;
        Throwable cause2 = th.getCause();
        if (cause2 != null) {
            C23027c c23027c = C23027c.f63800d;
            Throwable m7582a = m7582a(cause2, map);
            l.f(c23026b, "$this$internalCause");
            C23027c.f63797a.set(c23026b, m7582a);
        }
        Throwable[] suppressed = th.getSuppressed();
        l.b(suppressed, "originalSuppressed");
        if (!(suppressed.length == 0)) {
            ArrayList arrayList = new ArrayList(suppressed.length);
            for (Throwable th3 : suppressed) {
                l.b(th3, "it");
                arrayList.add(m7582a(th3, map));
            }
            C23027c c23027c2 = C23027c.f63800d;
            l.f(c23026b, "$this$internalSuppressedExceptions");
            C23027c.f63798b.set(c23026b, arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        StackTraceElement[] stackTrace2 = th.getStackTrace();
        l.b(stackTrace2, "original.stackTrace");
        for (StackTraceElement stackTraceElement2 : stackTrace2) {
            l.b(stackTraceElement2, "it");
            String className2 = stackTraceElement2.getClassName();
            l.b(className2, "className");
            if (r.y(className2, "com.criteo.", false, 2) || m7581b(stackTraceElement2)) {
                arrayList2.add(stackTraceElement2);
            } else if (arrayList2.isEmpty() || (!l.a((StackTraceElement) i.Q(arrayList2), this.f63796b))) {
                arrayList2.add(this.f63796b);
            }
        }
        Object[] array = arrayList2.toArray(new StackTraceElement[0]);
        if (array == null) {
            throw new p("null cannot be cast to non-null type kotlin.Array<T>");
        }
        c23026b.setStackTrace((StackTraceElement[]) array);
        Throwable cause3 = c23026b.getCause();
        if (cause3 != null && a) {
            C23027c c23027c3 = C23027c.f63800d;
            String th4 = cause3.toString();
            l.f(c23026b, "$this$internalDetailMessage");
            C23027c.f63799c.set(c23026b, th4);
        }
        return c23026b;
    }

    /* renamed from: b */
    public final boolean m7581b(StackTraceElement stackTraceElement) {
        boolean z;
        List<String> list = this.f63795a;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    break;
                }
                String str = (String) it.next();
                String className = stackTraceElement.getClassName();
                l.b(className, "className");
                if (r.y(className, str, false, 2)) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }
}
