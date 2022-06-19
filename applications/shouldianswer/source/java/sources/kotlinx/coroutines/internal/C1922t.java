package kotlinx.coroutines.internal;

import java.util.ArrayDeque;
import java.util.concurrent.CancellationException;
import kotlin.C1738i;
import kotlin.C1773m;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1633e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import kotlinx.coroutines.C1789ag;
/* renamed from: kotlinx.coroutines.internal.t */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/t.class */
public final class C1922t {
    /* renamed from: a */
    private static final int m2596a(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (C1694h.m3123a((Object) str, (Object) stackTraceElementArr[i].getClassName())) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static final StackTraceElement m2604a(StackTraceElement stackTraceElement) {
        C1694h.m3117b(stackTraceElement, "element");
        String className = stackTraceElement.getClassName();
        C1694h.m3122a((Object) className, "element.className");
        if (!C1747g.m3025a((CharSequence) className, '/', false, 2, (Object) null)) {
            return stackTraceElement;
        }
        String className2 = stackTraceElement.getClassName();
        C1694h.m3122a((Object) className2, "element.className");
        return new StackTraceElement(C1747g.m3040a(className2, '/', '.', false, 4, (Object) null), stackTraceElement.getMethodName(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
    }

    /* renamed from: a */
    public static final StackTraceElement m2602a(String str) {
        C1694h.m3117b(str, "message");
        return new StackTraceElement("\b\b\b(" + str, "\b", "\b", -1);
    }

    /* renamed from: a */
    public static final <E extends Throwable> E m2601a(E e) {
        Throwable cause;
        boolean z;
        C1694h.m3117b(e, "exception");
        if (m2590d(e)) {
            return e;
        }
        E e2 = e;
        if (e.getCause() != null) {
            if (!C1694h.m3123a(cause.getClass(), e.getClass())) {
                e2 = e;
            } else {
                StackTraceElement[] stackTrace = e.getStackTrace();
                C1694h.m3122a((Object) stackTrace, "exception.stackTrace");
                int length = stackTrace.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i];
                    C1694h.m3122a((Object) stackTraceElement, "it");
                    if (m2594b(stackTraceElement)) {
                        z = true;
                        break;
                    }
                    i++;
                }
                e2 = e;
                if (z) {
                    Throwable cause2 = e.getCause();
                    Throwable th = cause2;
                    if (!(cause2 instanceof Throwable)) {
                        th = null;
                    }
                    e2 = e;
                    if (th != null) {
                        e2 = th;
                    }
                }
            }
        }
        return e2;
    }

    /* renamed from: a */
    private static final <E extends Throwable> E m2600a(E e, E e2, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(m2602a("Coroutine boundary"));
        StackTraceElement[] stackTrace = e.getStackTrace();
        C1694h.m3122a((Object) stackTrace, "causeTrace");
        int m2596a = m2596a(stackTrace, "kotlin.coroutines.jvm.internal.BaseContinuationImpl");
        if (m2596a == -1) {
            ArrayDeque<StackTraceElement> arrayDeque2 = arrayDeque;
            if (arrayDeque2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
            }
            Object[] array = arrayDeque2.toArray(new StackTraceElement[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            e2.setStackTrace((StackTraceElement[]) array);
            return e2;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + m2596a];
        for (int i = 0; i < m2596a; i++) {
            stackTraceElementArr[i] = stackTrace[i];
        }
        int i2 = 0;
        for (StackTraceElement stackTraceElement : arrayDeque) {
            stackTraceElementArr[m2596a + i2] = stackTraceElement;
            i2++;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    /* renamed from: a */
    public static final /* synthetic */ Throwable m2599a(Throwable th, AbstractC1633e abstractC1633e) {
        return m2592b(th, abstractC1633e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Throwable] */
    /* renamed from: a */
    public static final <E extends Throwable> E m2598a(E e, AbstractC1641c<?> abstractC1641c) {
        C1694h.m3117b(e, "exception");
        C1694h.m3117b(abstractC1641c, "continuation");
        E e2 = e;
        if (!m2590d(e)) {
            e2 = !(abstractC1641c instanceof AbstractC1633e) ? e : m2592b(e, (AbstractC1633e) abstractC1641c);
        }
        return e2;
    }

    /* renamed from: a */
    private static final ArrayDeque<StackTraceElement> m2597a(AbstractC1633e abstractC1633e) {
        AbstractC1633e mo2542c;
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement mo2541d = abstractC1633e.mo2541d();
        AbstractC1633e abstractC1633e2 = abstractC1633e;
        if (mo2541d != null) {
            arrayDeque.add(m2604a(mo2541d));
            abstractC1633e2 = abstractC1633e;
        }
        while (true) {
            AbstractC1633e abstractC1633e3 = abstractC1633e2;
            if (!(abstractC1633e2 instanceof AbstractC1633e)) {
                abstractC1633e3 = null;
            }
            if (abstractC1633e3 == null || (mo2542c = abstractC1633e3.mo2542c()) == null) {
                break;
            }
            StackTraceElement mo2541d2 = mo2542c.mo2541d();
            abstractC1633e2 = mo2542c;
            if (mo2541d2 != null) {
                arrayDeque.add(m2604a(mo2541d2));
                abstractC1633e2 = mo2542c;
            }
        }
        return arrayDeque;
    }

    /* renamed from: a */
    private static final void m2595a(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (m2594b(stackTraceElementArr[i])) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (length2 >= i2) {
            while (true) {
                StackTraceElement stackTraceElement = stackTraceElementArr[length2];
                StackTraceElement last = arrayDeque.getLast();
                C1694h.m3122a((Object) last, "result.last");
                if (m2603a(stackTraceElement, last)) {
                    arrayDeque.removeLast();
                }
                arrayDeque.addFirst(stackTraceElementArr[length2]);
                if (length2 == i2) {
                    return;
                }
                length2--;
            }
        }
    }

    /* renamed from: a */
    private static final boolean m2603a(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && C1694h.m3123a((Object) stackTraceElement.getMethodName(), (Object) stackTraceElement2.getMethodName()) && C1694h.m3123a((Object) stackTraceElement.getFileName(), (Object) stackTraceElement2.getFileName()) && C1694h.m3123a((Object) stackTraceElement.getClassName(), (Object) stackTraceElement2.getClassName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.Throwable] */
    /* renamed from: b */
    public static final <E extends Throwable> E m2592b(E e, AbstractC1633e abstractC1633e) {
        C1738i m2591c = m2591c(e);
        Throwable th = (Throwable) m2591c.m3060c();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) m2591c.m3059d();
        Throwable m2663a = C1900f.m2663a(th);
        E e2 = e;
        if (m2663a != null) {
            ArrayDeque<StackTraceElement> m2597a = m2597a(abstractC1633e);
            if (m2597a.isEmpty()) {
                return e;
            }
            if (th != e) {
                m2595a(stackTraceElementArr, m2597a);
            }
            e2 = m2600a(th, m2663a, m2597a);
        }
        return e2;
    }

    /* renamed from: b */
    public static final boolean m2594b(StackTraceElement stackTraceElement) {
        C1694h.m3117b(stackTraceElement, "receiver$0");
        String className = stackTraceElement.getClassName();
        C1694h.m3122a((Object) className, "className");
        return C1747g.m3033b(className, "\b\b\b", false, 2, (Object) null);
    }

    /* renamed from: b */
    public static final /* synthetic */ boolean m2593b(Throwable th) {
        return m2590d(th);
    }

    /* renamed from: c */
    private static final <E extends Throwable> C1738i<E, StackTraceElement[]> m2591c(E e) {
        C1738i<E, StackTraceElement[]> c1738i;
        boolean z;
        Throwable cause = e.getCause();
        if (cause == null || !C1694h.m3123a(cause.getClass(), e.getClass())) {
            c1738i = C1773m.m2975a(e, new StackTraceElement[0]);
        } else {
            StackTraceElement[] stackTrace = e.getStackTrace();
            C1694h.m3122a((Object) stackTrace, "currentTrace");
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                C1694h.m3122a((Object) stackTraceElement, "it");
                if (m2594b(stackTraceElement)) {
                    z = true;
                    break;
                }
                i++;
            }
            c1738i = z ? C1773m.m2975a(cause, stackTrace) : C1773m.m2975a(e, new StackTraceElement[0]);
        }
        return c1738i;
    }

    /* renamed from: d */
    public static final <E extends Throwable> boolean m2590d(E e) {
        return !C1789ag.f4471b || !C1789ag.f4470a || (e instanceof CancellationException) || (e instanceof AbstractC1917o);
    }
}
