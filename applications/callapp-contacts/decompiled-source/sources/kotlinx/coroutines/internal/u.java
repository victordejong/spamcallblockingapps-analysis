package kotlinx.coroutines.internal;

import java.util.ArrayDeque;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.c.b.a.d;
import kotlin.n;
import kotlin.o;
import kotlin.p;
import kotlin.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u001a\u0014\u0010\u0006\u001a\u00060\u0007j\u0002`\b2\u0006\u0010\t\u001a\u00020\u0001H\u0007\u001a9\u0010\n\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\r\u001a\u0002H\u000b2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0010\u0010\u000f\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0010H\u0002¢\u0006\u0002\u0010\u0011\u001a\u001e\u0010\u0012\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00102\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002\u001a1\u0010\u0016\u001a\u00020\u00172\u0010\u0010\u0018\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00192\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0010H\u0002¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\fH\u0080Hø\u0001��¢\u0006\u0002\u0010\u001e\u001a+\u0010\u001f\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000b2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002¢\u0006\u0002\u0010 \u001a\u001f\u0010!\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH��¢\u0006\u0002\u0010\"\u001a,\u0010!\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000b2\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030#H\u0080\b¢\u0006\u0002\u0010$\u001a \u0010%\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0080\b¢\u0006\u0002\u0010\"\u001a\u001f\u0010&\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH��¢\u0006\u0002\u0010\"\u001a1\u0010'\u001a\u0018\u0012\u0004\u0012\u0002H\u000b\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00190(\"\b\b��\u0010\u000b*\u00020\f*\u0002H\u000bH\u0002¢\u0006\u0002\u0010)\u001a\u001c\u0010*\u001a\u00020+*\u00060\u0007j\u0002`\b2\n\u0010,\u001a\u00060\u0007j\u0002`\bH\u0002\u001a#\u0010-\u001a\u00020.*\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00192\u0006\u0010/\u001a\u00020\u0001H\u0002¢\u0006\u0002\u00100\u001a\u0014\u00101\u001a\u00020\u0017*\u00020\f2\u0006\u0010\r\u001a\u00020\fH��\u001a\u0010\u00102\u001a\u00020+*\u00060\u0007j\u0002`\bH��\u001a\u001b\u00103\u001a\u0002H\u000b\"\b\b��\u0010\u000b*\u00020\f*\u0002H\u000bH\u0002¢\u0006\u0002\u0010\"\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0016\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0016\u0010\u0005\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��*\f\b��\u00104\"\u00020\u00142\u00020\u0014*\f\b��\u00105\"\u00020\u00072\u00020\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, d2 = {"baseContinuationImplClass", "", "baseContinuationImplClassName", "kotlin.jvm.PlatformType", "stackTraceRecoveryClass", "stackTraceRecoveryClassName", "artificialFrame", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "message", "createFinalException", "E", "", "cause", "result", "resultStackTrace", "Ljava/util/ArrayDeque;", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "createStackTrace", "continuation", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "mergeRecoveredTraces", "", "recoveredStacktrace", "", "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "recoverAndThrow", "", "exception", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recoverFromStackFrame", "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", "recoverStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "unwrap", "unwrapImpl", "causeAndStacktrace", "Lkotlin/Pair;", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "elementWiseEquals", "", "e", "frameIndex", "", "methodName", "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "initCause", "isArtificial", "sanitizeStackTrace", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final String f38841a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f38842b;

    static {
        Object obj;
        Object obj2;
        String str = "kotlinx.coroutines.internal.u";
        Object obj3 = "kotlin.c.b.a.a";
        try {
            o.a aVar = o.f36812a;
            obj = o.d(Class.forName("kotlin.c.b.a.a").getCanonicalName());
        } catch (Throwable th) {
            o.a aVar2 = o.f36812a;
            obj = o.d(p.a(th));
        }
        if (o.c(obj) == null) {
            obj3 = obj;
        }
        f38841a = (String) obj3;
        try {
            o.a aVar3 = o.f36812a;
            obj2 = o.d(Class.forName("kotlinx.coroutines.internal.u").getCanonicalName());
        } catch (Throwable th2) {
            o.a aVar4 = o.f36812a;
            obj2 = o.d(p.a(th2));
        }
        String str2 = str;
        if (o.c(obj2) == null) {
            str2 = obj2;
        }
        f38842b = (String) str2;
    }

    private static final int a(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length; i++) {
            if (kotlin.jvm.internal.p.a((Object) str, (Object) stackTraceElementArr[i].getClassName())) {
                return i;
            }
        }
        return -1;
    }

    public static final <E extends Throwable> E a(E e) {
        E e2 = (E) e.getCause();
        if (e2 != null) {
            boolean z = true;
            if (!(!kotlin.jvm.internal.p.a(e2.getClass(), e.getClass()))) {
                StackTraceElement[] stackTrace = e.getStackTrace();
                int length = stackTrace.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    } else if (a(stackTrace[i])) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (z) {
                    return e2;
                }
            }
        }
        return e;
    }

    private static final <E extends Throwable> E a(E e, E e2, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(new StackTraceElement("\b\b\b(".concat("Coroutine boundary"), "\b", "\b", -1));
        StackTraceElement[] stackTrace = e.getStackTrace();
        int a2 = a(stackTrace, f38841a);
        int i = 0;
        if (a2 == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            e2.setStackTrace((StackTraceElement[]) array);
            return e2;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + a2];
        for (int i2 = 0; i2 < a2; i2++) {
            stackTraceElementArr[i2] = stackTrace[i2];
        }
        for (StackTraceElement stackTraceElement : arrayDeque) {
            stackTraceElementArr[a2 + i] = stackTraceElement;
            i++;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    public static final /* synthetic */ Throwable a(Throwable th, d dVar) {
        n nVar;
        d c2;
        boolean z;
        Throwable cause = th.getCause();
        if (cause == null || !kotlin.jvm.internal.p.a(cause.getClass(), th.getClass())) {
            nVar = t.a(th, new StackTraceElement[0]);
        } else {
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (a(stackTrace[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            nVar = z ? t.a(cause, stackTrace) : t.a(th, new StackTraceElement[0]);
        }
        Throwable th2 = (Throwable) nVar.f36810a;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) nVar.f36811b;
        Throwable a2 = g.a(th2);
        if (a2 != null && !(true ^ kotlin.jvm.internal.p.a((Object) a2.getMessage(), (Object) th2.getMessage()))) {
            ArrayDeque arrayDeque = new ArrayDeque();
            StackTraceElement d2 = dVar.d();
            d dVar2 = dVar;
            if (d2 != null) {
                arrayDeque.add(d2);
                dVar2 = dVar;
            }
            while (true) {
                d dVar3 = dVar2;
                if (!(dVar2 instanceof d)) {
                    dVar3 = null;
                }
                if (dVar3 == null || (c2 = dVar3.c()) == null) {
                    break;
                }
                StackTraceElement d3 = c2.d();
                dVar2 = c2;
                if (d3 != null) {
                    arrayDeque.add(d3);
                    dVar2 = c2;
                }
            }
            if (arrayDeque.isEmpty()) {
                return th;
            }
            if (th2 != th) {
                a(stackTraceElementArr, arrayDeque);
            }
            return a(th2, a2, arrayDeque);
        }
        return th;
    }

    private static final void a(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (a(stackTraceElementArr[i])) {
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
                if (stackTraceElement.getLineNumber() == last.getLineNumber() && kotlin.jvm.internal.p.a((Object) stackTraceElement.getMethodName(), (Object) last.getMethodName()) && kotlin.jvm.internal.p.a((Object) stackTraceElement.getFileName(), (Object) last.getFileName()) && kotlin.jvm.internal.p.a((Object) stackTraceElement.getClassName(), (Object) last.getClassName())) {
                    arrayDeque.removeLast();
                }
                arrayDeque.addFirst(stackTraceElementArr[length2]);
                if (length2 != i2) {
                    length2--;
                } else {
                    return;
                }
            }
        }
    }

    private static boolean a(StackTraceElement stackTraceElement) {
        return kotlin.h.p.a(stackTraceElement.getClassName(), "\b\b\b", false);
    }
}
