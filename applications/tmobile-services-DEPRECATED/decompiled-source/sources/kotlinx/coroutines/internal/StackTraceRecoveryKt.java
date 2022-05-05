package kotlinx.coroutines.internal;

import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\u001a\u001b\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0001\u001a\u00020��H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a;\u0010\f\u001a\u00028��\"\b\b��\u0010\u0007*\u00020\u00062\u0006\u0010\b\u001a\u00028��2\u0006\u0010\t\u001a\u00028��2\u0010\u0010\u000b\u001a\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\nH\u0002¢\u0006\u0004\b\f\u0010\r\u001a%\u0010\u0011\u001a\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\n2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012\u001a3\u0010\u0016\u001a\u00020\u00152\u0010\u0010\u0014\u001a\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u00132\u0010\u0010\t\u001a\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\nH\u0002¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u001b\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0006H\u0080Hø\u0001��¢\u0006\u0004\b\u001a\u0010\u001b\u001a-\u0010\u001c\u001a\u00028��\"\b\b��\u0010\u0007*\u00020\u00062\u0006\u0010\u0018\u001a\u00028��2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fH\u0002¢\u0006\u0004\b\u001c\u0010\u001d\u001a!\u0010\u001e\u001a\u00028��\"\b\b��\u0010\u0007*\u00020\u00062\u0006\u0010\u0018\u001a\u00028��H��¢\u0006\u0004\b\u001e\u0010\u001f\u001a.\u0010\u001e\u001a\u00028��\"\b\b��\u0010\u0007*\u00020\u00062\u0006\u0010\u0018\u001a\u00028��2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030 H\u0080\b¢\u0006\u0004\b\u001e\u0010!\u001a\"\u0010\"\u001a\u00028��\"\b\b��\u0010\u0007*\u00020\u00062\u0006\u0010\u0018\u001a\u00028��H\u0080\b¢\u0006\u0004\b\"\u0010\u001f\u001a!\u0010#\u001a\u00028��\"\b\b��\u0010\u0007*\u00020\u00062\u0006\u0010\u0018\u001a\u00028��H��¢\u0006\u0004\b#\u0010\u001f\u001a3\u0010%\u001a\u0018\u0012\u0004\u0012\u00028��\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u00130$\"\b\b��\u0010\u0007*\u00020\u0006*\u00028��H\u0002¢\u0006\u0004\b%\u0010&\u001a#\u0010)\u001a\u00020(*\u00060\u0002j\u0002`\u00032\n\u0010'\u001a\u00060\u0002j\u0002`\u0003H\u0002¢\u0006\u0004\b)\u0010*\u001a%\u0010-\u001a\u00020,*\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u00132\u0006\u0010+\u001a\u00020��H\u0002¢\u0006\u0004\b-\u0010.\u001a\u001b\u0010/\u001a\u00020\u0015*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H��¢\u0006\u0004\b/\u00100\u001a\u0017\u00101\u001a\u00020(*\u00060\u0002j\u0002`\u0003H��¢\u0006\u0004\b1\u00102\u001a\u001d\u00103\u001a\u00028��\"\b\b��\u0010\u0007*\u00020\u0006*\u00028��H\u0002¢\u0006\u0004\b3\u0010\u001f\"\u0016\u00104\u001a\u00020��8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b4\u00105\"\u001e\u00107\u001a\n 6*\u0004\u0018\u00010��0��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00105\"\u0016\u00108\u001a\u00020��8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b8\u00105\"\u001e\u00109\u001a\n 6*\u0004\u0018\u00010��0��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00105*\f\b��\u0010:\"\u00020\u000e2\u00020\u000e*\f\b��\u0010;\"\u00020\u00022\u00020\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006<"}, d2 = {"", "message", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "artificialFrame", "(Ljava/lang/String;)Ljava/lang/StackTraceElement;", "", "E", "cause", "result", "Ljava/util/ArrayDeque;", "resultStackTrace", "createFinalException", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "continuation", "createStackTrace", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/util/ArrayDeque;", "", "recoveredStacktrace", "", "mergeRecoveredTraces", "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "exception", "", "recoverAndThrow", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recoverFromStackFrame", "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", "recoverStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "unwrap", "unwrapImpl", "Lkotlin/Pair;", "causeAndStacktrace", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "e", "", "elementWiseEquals", "(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)Z", "methodName", "", "frameIndex", "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "initCause", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)V", "isArtificial", "(Ljava/lang/StackTraceElement;)Z", "sanitizeStackTrace", "baseContinuationImplClass", "Ljava/lang/String;", "kotlin.jvm.PlatformType", "baseContinuationImplClassName", "stackTraceRecoveryClass", "stackTraceRecoveryClassName", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/StackTraceRecoveryKt.class */
public final class StackTraceRecoveryKt {

    /* renamed from: a */
    private static final String f23948a;

    /* renamed from: b */
    private static final String f23949b;

    static {
        Object obj;
        Object obj2;
        try {
            Result.Companion companion = Result.f20418g;
            obj = Class.forName("kotlin.coroutines.jvm.internal.BaseContinuationImpl").getCanonicalName();
            Result.m2481b(obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            obj = ResultKt.m2473a(th);
            Result.m2481b(obj);
        }
        if (Result.m2479d(obj) != null) {
            obj = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f23948a = (String) obj;
        try {
            Result.Companion companion3 = Result.f20418g;
            obj2 = Class.forName("kotlinx.coroutines.internal.StackTraceRecoveryKt").getCanonicalName();
            Result.m2481b(obj2);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.f20418g;
            obj2 = ResultKt.m2473a(th2);
            Result.m2481b(obj2);
        }
        if (Result.m2479d(obj2) != null) {
            obj2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f23949b = (String) obj2;
    }

    /* renamed from: a */
    public static final /* synthetic */ Throwable m456a(Throwable th, CoroutineStackFrame coroutineStackFrame) {
        return m447j(th, coroutineStackFrame);
    }

    @InternalCoroutinesApi
    @NotNull
    /* renamed from: b */
    public static final StackTraceElement m455b(@NotNull String str) {
        return new StackTraceElement("\b\b\b(" + str, "\b", "\b", -1);
    }

    /* renamed from: c */
    private static final <E extends Throwable> Pair<E, StackTraceElement[]> m454c(E e) {
        Pair<E, StackTraceElement[]> pair;
        boolean z;
        Throwable cause = e.getCause();
        if (cause == null || !Intrinsics.m1834a(cause.getClass(), e.getClass())) {
            pair = TuplesKt.m2469a(e, new StackTraceElement[0]);
        } else {
            StackTraceElement[] stackTrace = e.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (m449h(stackTrace[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            pair = z ? TuplesKt.m2469a(cause, stackTrace) : TuplesKt.m2469a(e, new StackTraceElement[0]);
        }
        return pair;
    }

    /* renamed from: d */
    private static final <E extends Throwable> E m453d(E e, E e2, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(m455b("Coroutine boundary"));
        StackTraceElement[] stackTrace = e.getStackTrace();
        int g = m450g(stackTrace, f23948a);
        int i = 0;
        if (g == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            if (array != null) {
                e2.setStackTrace((StackTraceElement[]) array);
                return e2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + g];
        for (int i2 = 0; i2 < g; i2++) {
            stackTraceElementArr[i2] = stackTrace[i2];
        }
        for (StackTraceElement stackTraceElement : arrayDeque) {
            stackTraceElementArr[g + i] = stackTraceElement;
            i++;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    /* renamed from: e */
    private static final ArrayDeque<StackTraceElement> m452e(CoroutineStackFrame coroutineStackFrame) {
        CoroutineStackFrame callerFrame;
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        CoroutineStackFrame coroutineStackFrame2 = coroutineStackFrame;
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
            coroutineStackFrame2 = coroutineStackFrame;
        }
        while (true) {
            CoroutineStackFrame coroutineStackFrame3 = coroutineStackFrame2;
            if (!(coroutineStackFrame2 instanceof CoroutineStackFrame)) {
                coroutineStackFrame3 = null;
            }
            if (coroutineStackFrame3 == null || (callerFrame = coroutineStackFrame3.getCallerFrame()) == null) {
                break;
            }
            StackTraceElement stackTraceElement2 = callerFrame.getStackTraceElement();
            coroutineStackFrame2 = callerFrame;
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
                coroutineStackFrame2 = callerFrame;
            }
        }
        return arrayDeque;
    }

    /* renamed from: f */
    private static final boolean m451f(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.m1834a(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.m1834a(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.m1834a(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    /* renamed from: g */
    private static final int m450g(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (Intrinsics.m1834a(str, stackTraceElementArr[i].getClassName())) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: h */
    public static final boolean m449h(@NotNull StackTraceElement stackTraceElement) {
        boolean C;
        C = StringsKt__StringsJVMKt.m1491C(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
        return C;
    }

    /* renamed from: i */
    private static final void m448i(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (m449h(stackTraceElementArr[i])) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (length2 >= i2) {
            while (true) {
                if (m451f(stackTraceElementArr[length2], arrayDeque.getLast())) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static final <E extends Throwable> E m447j(E e, CoroutineStackFrame coroutineStackFrame) {
        Pair c = m454c(e);
        Throwable th = (Throwable) c.m2486a();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) c.m2485b();
        E e2 = (E) ExceptionsConstuctorKt.m562e(th);
        if (e2 != null && !(!Intrinsics.m1834a(e2.getMessage(), th.getMessage()))) {
            ArrayDeque<StackTraceElement> e3 = m452e(coroutineStackFrame);
            if (e3.isEmpty()) {
                return e;
            }
            if (th != e) {
                m448i(stackTraceElementArr, e3);
            }
            m453d(th, e2, e3);
            return e2;
        }
        return e;
    }

    @NotNull
    /* renamed from: k */
    public static final <E extends Throwable> E m446k(@NotNull E e) {
        E e2;
        if (DebugKt.m1305d() && (e2 = (E) ExceptionsConstuctorKt.m562e(e)) != null) {
            m445l(e2);
            return e2;
        }
        return e;
    }

    /* renamed from: l */
    private static final <E extends Throwable> E m445l(E e) {
        StackTraceElement[] stackTrace = e.getStackTrace();
        int length = stackTrace.length;
        int g = m450g(stackTrace, f23949b);
        int g2 = m450g(stackTrace, f23948a);
        int i = 0;
        int i2 = (length - g) - (g2 == -1 ? 0 : length - g2);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i2];
        while (i < i2) {
            stackTraceElementArr[i] = i == 0 ? m455b("Coroutine boundary") : stackTrace[((g + 1) + i) - 1];
            i++;
        }
        e.setStackTrace(stackTraceElementArr);
        return e;
    }

    @NotNull
    /* renamed from: m */
    public static final <E extends Throwable> E m444m(@NotNull E e) {
        E e2 = (E) e.getCause();
        if (e2 != null) {
            boolean z = true;
            if (!(!Intrinsics.m1834a(e2.getClass(), e.getClass()))) {
                StackTraceElement[] stackTrace = e.getStackTrace();
                int length = stackTrace.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    } else if (m449h(stackTrace[i])) {
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
}
