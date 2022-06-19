package kotlinx.coroutines.internal;

import java.util.ArrayDeque;
import java.util.Objects;
import kotlin.C18538n;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��f\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u001a\u0014\u0010\u0006\u001a\u00060\u0007j\u0002`\b2\u0006\u0010\t\u001a\u00020\u0001H\u0007\u001a9\u0010\n\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\r\u001a\u0002H\u000b2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0010\u0010\u000f\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0010H\u0002¢\u0006\u0002\u0010\u0011\u001a\u001e\u0010\u0012\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00102\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002\u001a1\u0010\u0016\u001a\u00020\u00172\u0010\u0010\u0018\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00192\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0010H\u0002¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\fH\u0080Hø\u0001��¢\u0006\u0002\u0010\u001e\u001a+\u0010\u001f\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000b2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002¢\u0006\u0002\u0010 \u001a\u001f\u0010!\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH��¢\u0006\u0002\u0010\"\u001a,\u0010!\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000b2\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030#H\u0080\b¢\u0006\u0002\u0010$\u001a \u0010%\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0080\b¢\u0006\u0002\u0010\"\u001a\u001f\u0010&\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH��¢\u0006\u0002\u0010\"\u001a1\u0010'\u001a\u0018\u0012\u0004\u0012\u0002H\u000b\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00190(\"\b\b��\u0010\u000b*\u00020\f*\u0002H\u000bH\u0002¢\u0006\u0002\u0010)\u001a\u001c\u0010*\u001a\u00020+*\u00060\u0007j\u0002`\b2\n\u0010,\u001a\u00060\u0007j\u0002`\bH\u0002\u001a#\u0010-\u001a\u00020.*\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00192\u0006\u0010/\u001a\u00020\u0001H\u0002¢\u0006\u0002\u00100\u001a\u0014\u00101\u001a\u00020\u0017*\u00020\f2\u0006\u0010\r\u001a\u00020\fH��\u001a\u0010\u00102\u001a\u00020+*\u00060\u0007j\u0002`\bH��\u001a\u001b\u00103\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f*\u0002H\u000bH\u0002¢\u0006\u0002\u0010\"\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0016\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0016\u0010\u0005\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��*\f\b��\u00104\"\u00020\u00142\u00020\u0014*\f\b��\u00105\"\u00020\u00072\u00020\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, m4298d2 = {"baseContinuationImplClass", "", "baseContinuationImplClassName", "kotlin.jvm.PlatformType", "stackTraceRecoveryClass", "stackTraceRecoveryClassName", "artificialFrame", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "message", "createFinalException", "E", "", "cause", "result", "resultStackTrace", "Ljava/util/ArrayDeque;", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "createStackTrace", "continuation", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "mergeRecoveredTraces", "", "recoveredStacktrace", "", "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "recoverAndThrow", "", "exception", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recoverFromStackFrame", "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", "recoverStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "unwrap", "unwrapImpl", "causeAndStacktrace", "Lkotlin/Pair;", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "elementWiseEquals", "", "e", "frameIndex", "", "methodName", "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "initCause", "isArtificial", "sanitizeStackTrace", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.u */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/u.class */
public final class C20295u {

    /* renamed from: a */
    private static final String f66771a;

    /* renamed from: b */
    private static final String f66772b;

    static {
        Object obj;
        Object obj2;
        String str = "kotlin.c.b.a.a";
        try {
            C18539o.C18540a c18540a = C18539o.f63626a;
            obj = C18539o.m3836d(Class.forName("kotlin.c.b.a.a").getCanonicalName());
        } catch (Throwable th) {
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            obj = C18539o.m3836d(C18542p.m3834a(th));
        }
        if (C18539o.m3837c(obj) == null) {
            str = obj;
        }
        f66771a = str;
        try {
            C18539o.C18540a c18540a3 = C18539o.f63626a;
            obj2 = C18539o.m3836d(Class.forName("kotlinx.coroutines.internal.u").getCanonicalName());
        } catch (Throwable th2) {
            C18539o.C18540a c18540a4 = C18539o.f63626a;
            obj2 = C18539o.m3836d(C18542p.m3834a(th2));
        }
        String str2 = "kotlinx.coroutines.internal.u";
        if (C18539o.m3837c(obj2) == null) {
            str2 = obj2;
        }
        f66772b = str2;
    }

    /* renamed from: a */
    private static final int m815a(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length; i++) {
            if (C18524p.m3850a((Object) str, (Object) stackTraceElementArr[i].getClassName())) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static final <E extends Throwable> E m818a(E e) {
        boolean z;
        E e2 = (E) e.getCause();
        if (e2 != null && !(!C18524p.m3850a(e2.getClass(), e.getClass()))) {
            StackTraceElement[] stackTrace = e.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (m819a(stackTrace[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                return e2;
            }
        }
        return e;
    }

    /* renamed from: a */
    private static final <E extends Throwable> E m817a(E e, E e2, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(new StackTraceElement("\b\b\b(".concat("Coroutine boundary"), "\b", "\b", -1));
        StackTraceElement[] stackTrace = e.getStackTrace();
        int m815a = m815a(stackTrace, f66771a);
        if (m815a == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            e2.setStackTrace((StackTraceElement[]) array);
            return e2;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + m815a];
        for (int i = 0; i < m815a; i++) {
            stackTraceElementArr[i] = stackTrace[i];
        }
        int i2 = 0;
        for (StackTraceElement stackTraceElement : arrayDeque) {
            stackTraceElementArr[m815a + i2] = stackTraceElement;
            i2++;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    /* renamed from: a */
    public static final /* synthetic */ Throwable m816a(Throwable th, AbstractC18319d abstractC18319d) {
        C18538n c18538n;
        AbstractC18319d mo784c;
        boolean z;
        Throwable cause = th.getCause();
        if (cause == null || !C18524p.m3850a(cause.getClass(), th.getClass())) {
            c18538n = C20126t.m1103a(th, new StackTraceElement[0]);
        } else {
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (m819a(stackTrace[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            c18538n = z ? C20126t.m1103a(cause, stackTrace) : C20126t.m1103a(th, new StackTraceElement[0]);
        }
        Throwable th2 = (Throwable) c18538n.f63624a;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) c18538n.f63625b;
        Throwable m871a = C20271g.m871a(th2);
        if (m871a != null && !(true ^ C18524p.m3850a((Object) m871a.getMessage(), (Object) th2.getMessage()))) {
            ArrayDeque arrayDeque = new ArrayDeque();
            StackTraceElement mo782d = abstractC18319d.mo782d();
            AbstractC18319d abstractC18319d2 = abstractC18319d;
            if (mo782d != null) {
                arrayDeque.add(mo782d);
                abstractC18319d2 = abstractC18319d;
            }
            while (true) {
                AbstractC18319d abstractC18319d3 = abstractC18319d2;
                if (!(abstractC18319d2 instanceof AbstractC18319d)) {
                    abstractC18319d3 = null;
                }
                if (abstractC18319d3 == null || (mo784c = abstractC18319d3.mo784c()) == null) {
                    break;
                }
                StackTraceElement mo782d2 = mo784c.mo782d();
                abstractC18319d2 = mo784c;
                if (mo782d2 != null) {
                    arrayDeque.add(mo782d2);
                    abstractC18319d2 = mo784c;
                }
            }
            if (arrayDeque.isEmpty()) {
                return th;
            }
            if (th2 != th) {
                m814a(stackTraceElementArr, arrayDeque);
            }
            return m817a(th2, m871a, arrayDeque);
        }
        return th;
    }

    /* renamed from: a */
    private static final void m814a(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (m819a(stackTraceElementArr[i])) {
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
                if (stackTraceElement.getLineNumber() == last.getLineNumber() && C18524p.m3850a((Object) stackTraceElement.getMethodName(), (Object) last.getMethodName()) && C18524p.m3850a((Object) stackTraceElement.getFileName(), (Object) last.getFileName()) && C18524p.m3850a((Object) stackTraceElement.getClassName(), (Object) last.getClassName())) {
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
    private static boolean m819a(StackTraceElement stackTraceElement) {
        return C18425p.m3957a(stackTraceElement.getClassName(), "\b\b\b", false);
    }
}
