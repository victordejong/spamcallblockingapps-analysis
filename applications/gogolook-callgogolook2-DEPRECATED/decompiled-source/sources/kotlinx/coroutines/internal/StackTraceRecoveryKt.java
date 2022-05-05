package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import p626l.C14978j;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14985o;
import p626l.C14986p;
import p626l.p631e0.C14966w;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��f\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u001a\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0007\u001a9\u0010\t\u001a\u0002H\n\"\b\b��\u0010\n*\u00020\u000b2\u0006\u0010\f\u001a\u0002H\n2\u0006\u0010\r\u001a\u0002H\n2\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\u00100\u000fH\u0002¢\u0006\u0002\u0010\u0011\u001a\u001e\u0010\u0012\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\u00100\u000f2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002\u001a1\u0010\u0016\u001a\u00020\u00172\u0010\u0010\u0018\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\u00100\u00192\u0010\u0010\r\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\u00100\u000fH\u0002¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bH\u0080Hø\u0001��¢\u0006\u0002\u0010\u001e\u001a+\u0010\u001f\u001a\u0002H\n\"\b\b��\u0010\n*\u00020\u000b2\u0006\u0010\u001d\u001a\u0002H\n2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002¢\u0006\u0002\u0010 \u001a\u001f\u0010!\u001a\u0002H\n\"\b\b��\u0010\n*\u00020\u000b2\u0006\u0010\u001d\u001a\u0002H\nH��¢\u0006\u0002\u0010\"\u001a,\u0010!\u001a\u0002H\n\"\b\b��\u0010\n*\u00020\u000b2\u0006\u0010\u001d\u001a\u0002H\n2\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030#H\u0080\b¢\u0006\u0002\u0010$\u001a \u0010%\u001a\u0002H\n\"\b\b��\u0010\n*\u00020\u000b2\u0006\u0010\u001d\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\"\u001a\u001f\u0010&\u001a\u0002H\n\"\b\b��\u0010\n*\u00020\u000b2\u0006\u0010\u001d\u001a\u0002H\nH��¢\u0006\u0002\u0010\"\u001a1\u0010'\u001a\u0018\u0012\u0004\u0012\u0002H\n\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0007j\u0002`\u00100\u00190(\"\b\b��\u0010\n*\u00020\u000b*\u0002H\nH\u0002¢\u0006\u0002\u0010)\u001a\u001c\u0010*\u001a\u00020+*\u00060\u0007j\u0002`\u00102\n\u0010,\u001a\u00060\u0007j\u0002`\u0010H\u0002\u001a#\u0010-\u001a\u00020.*\f\u0012\b\u0012\u00060\u0007j\u0002`\u00100\u00192\u0006\u0010/\u001a\u00020\u0001H\u0002¢\u0006\u0002\u00100\u001a\u0014\u00101\u001a\u00020\u0017*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH��\u001a\u0010\u00102\u001a\u00020+*\u00060\u0007j\u0002`\u0010H��\u001a\u001b\u00103\u001a\u0002H\n\"\b\b��\u0010\n*\u00020\u000b*\u0002H\nH\u0002¢\u0006\u0002\u0010\"\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0016\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0016\u0010\u0005\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��*\f\b��\u00104\"\u00020\u00142\u00020\u0014*\f\b��\u00105\"\u00020\u00072\u00020\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, m815d2 = {"baseContinuationImplClass", "", "baseContinuationImplClassName", "kotlin.jvm.PlatformType", "stackTraceRecoveryClass", "stackTraceRecoveryClassName", "artificialFrame", "Ljava/lang/StackTraceElement;", "message", "createFinalException", ExifInterface.LONGITUDE_EAST, "", "cause", "result", "resultStackTrace", "Ljava/util/ArrayDeque;", "Lkotlinx/coroutines/internal/StackTraceElement;", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "createStackTrace", "continuation", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "mergeRecoveredTraces", "", "recoveredStacktrace", "", "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "recoverAndThrow", "", "exception", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recoverFromStackFrame", "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", "recoverStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "unwrap", "unwrapImpl", "causeAndStacktrace", "Lkotlin/Pair;", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "elementWiseEquals", "", "e", "frameIndex", "", "methodName", "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "initCause", "isArtificial", "sanitizeStackTrace", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/StackTraceRecoveryKt.class */
public final class StackTraceRecoveryKt {
    public static final String baseContinuationImplClass = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
    public static final String baseContinuationImplClassName;
    public static final String stackTraceRecoveryClass = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
    public static final String stackTraceRecoveryClassName;

    static {
        Object obj;
        Object obj2;
        try {
            C14979k.C14980a aVar = C14979k.f33013a;
            obj = Class.forName("l.w.k.a.a").getCanonicalName();
            C14979k.m657a(obj);
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            obj = C14982l.m652a(th);
            C14979k.m657a(obj);
        }
        if (C14979k.m656b(obj) != null) {
            obj = baseContinuationImplClass;
        }
        baseContinuationImplClassName = (String) obj;
        try {
            C14979k.C14980a aVar3 = C14979k.f33013a;
            obj2 = Class.forName(stackTraceRecoveryClass).getCanonicalName();
            C14979k.m657a(obj2);
        } catch (Throwable th2) {
            C14979k.C14980a aVar4 = C14979k.f33013a;
            obj2 = C14982l.m652a(th2);
            C14979k.m657a(obj2);
        }
        if (C14979k.m656b(obj2) != null) {
            obj2 = stackTraceRecoveryClass;
        }
        stackTraceRecoveryClassName = (String) obj2;
    }

    public static /* synthetic */ void CoroutineStackFrame$annotations() {
    }

    public static /* synthetic */ void StackTraceElement$annotations() {
    }

    public static final /* synthetic */ Throwable access$recoverFromStackFrame(Throwable th, AbstractC15069e eVar) {
        return recoverFromStackFrame(th, eVar);
    }

    @InternalCoroutinesApi
    public static final StackTraceElement artificialFrame(String str) {
        return new StackTraceElement("\b\b\b(" + str, "\b", "\b", -1);
    }

    public static final <E extends Throwable> C14978j<E, StackTraceElement[]> causeAndStacktrace(E e) {
        C14978j<E, StackTraceElement[]> jVar;
        boolean z;
        Throwable cause = e.getCause();
        if (cause == null || !C15149k.m384a(cause.getClass(), e.getClass())) {
            jVar = C14985o.m644a(e, new StackTraceElement[0]);
        } else {
            StackTraceElement[] stackTrace = e.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (isArtificial(stackTrace[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            jVar = z ? C14985o.m644a(cause, stackTrace) : C14985o.m644a(e, new StackTraceElement[0]);
        }
        return jVar;
    }

    public static final <E extends Throwable> E createFinalException(E e, E e2, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(artificialFrame("Coroutine boundary"));
        StackTraceElement[] stackTrace = e.getStackTrace();
        int frameIndex = frameIndex(stackTrace, baseContinuationImplClassName);
        int i = 0;
        if (frameIndex == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            if (array != null) {
                e2.setStackTrace((StackTraceElement[]) array);
                return e2;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + frameIndex];
        for (int i2 = 0; i2 < frameIndex; i2++) {
            stackTraceElementArr[i2] = stackTrace[i2];
        }
        for (StackTraceElement stackTraceElement : arrayDeque) {
            stackTraceElementArr[frameIndex + i] = stackTraceElement;
            i++;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    public static final ArrayDeque<StackTraceElement> createStackTrace(AbstractC15069e eVar) {
        AbstractC15069e callerFrame;
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = eVar.getStackTraceElement();
        AbstractC15069e eVar2 = eVar;
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
            eVar2 = eVar;
        }
        while (true) {
            AbstractC15069e eVar3 = eVar2;
            if (!(eVar2 instanceof AbstractC15069e)) {
                eVar3 = null;
            }
            if (eVar3 == null || (callerFrame = eVar3.getCallerFrame()) == null) {
                break;
            }
            StackTraceElement stackTraceElement2 = callerFrame.getStackTraceElement();
            eVar2 = callerFrame;
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
                eVar2 = callerFrame;
            }
        }
        return arrayDeque;
    }

    public static final boolean elementWiseEquals(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && C15149k.m384a((Object) stackTraceElement.getMethodName(), (Object) stackTraceElement2.getMethodName()) && C15149k.m384a((Object) stackTraceElement.getFileName(), (Object) stackTraceElement2.getFileName()) && C15149k.m384a((Object) stackTraceElement.getClassName(), (Object) stackTraceElement2.getClassName());
    }

    public static final int frameIndex(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (C15149k.m384a((Object) str, (Object) stackTraceElementArr[i].getClassName())) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    public static final void initCause(Throwable th, Throwable th2) {
        th.initCause(th2);
    }

    public static final boolean isArtificial(StackTraceElement stackTraceElement) {
        return C14966w.m712c(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
    }

    public static final void mergeRecoveredTraces(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (isArtificial(stackTraceElementArr[i])) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (length2 >= i2) {
            while (true) {
                if (elementWiseEquals(stackTraceElementArr[length2], arrayDeque.getLast())) {
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

    public static final Object recoverAndThrow(Throwable th, AbstractC15044d<?> dVar) {
        if (!DebugKt.getRECOVER_STACK_TRACES()) {
            throw th;
        } else if (!(dVar instanceof AbstractC15069e)) {
            throw th;
        } else {
            throw recoverFromStackFrame(th, (AbstractC15069e) dVar);
        }
    }

    public static final Object recoverAndThrow$$forInline(Throwable th, AbstractC15044d dVar) {
        if (DebugKt.getRECOVER_STACK_TRACES()) {
            C15148j.m388c(0);
            if (!(dVar instanceof AbstractC15069e)) {
                throw th;
            }
            throw recoverFromStackFrame(th, (AbstractC15069e) dVar);
        }
        throw th;
    }

    public static final <E extends Throwable> E recoverFromStackFrame(E e, AbstractC15069e eVar) {
        C14978j causeAndStacktrace = causeAndStacktrace(e);
        Throwable th = (Throwable) causeAndStacktrace.m661a();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) causeAndStacktrace.m660b();
        Throwable tryCopyException = ExceptionsConstuctorKt.tryCopyException(th);
        E e2 = e;
        if (tryCopyException != null) {
            if (!C15149k.m384a((Object) tryCopyException.getMessage(), (Object) th.getMessage())) {
                return e;
            }
            ArrayDeque<StackTraceElement> createStackTrace = createStackTrace(eVar);
            if (createStackTrace.isEmpty()) {
                return e;
            }
            if (th != e) {
                mergeRecoveredTraces(stackTraceElementArr, createStackTrace);
            }
            e2 = (E) createFinalException(th, tryCopyException, createStackTrace);
        }
        return e2;
    }

    public static final <E extends Throwable> E recoverStackTrace(E e) {
        if (!DebugKt.getRECOVER_STACK_TRACES()) {
            return e;
        }
        Throwable tryCopyException = ExceptionsConstuctorKt.tryCopyException(e);
        if (tryCopyException != null) {
            e = (E) sanitizeStackTrace(tryCopyException);
        }
        return e;
    }

    public static final <E extends Throwable> E recoverStackTrace(E e, AbstractC15044d<?> dVar) {
        E e2 = e;
        if (DebugKt.getRECOVER_STACK_TRACES()) {
            e2 = !(dVar instanceof AbstractC15069e) ? e : (E) recoverFromStackFrame(e, (AbstractC15069e) dVar);
        }
        return e2;
    }

    public static final <E extends Throwable> E sanitizeStackTrace(E e) {
        StackTraceElement[] stackTrace = e.getStackTrace();
        int length = stackTrace.length;
        int frameIndex = frameIndex(stackTrace, stackTraceRecoveryClassName);
        int frameIndex2 = frameIndex(stackTrace, baseContinuationImplClassName);
        int i = 0;
        int i2 = (length - frameIndex) - (frameIndex2 == -1 ? 0 : length - frameIndex2);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i2];
        while (i < i2) {
            stackTraceElementArr[i] = i == 0 ? artificialFrame("Coroutine boundary") : stackTrace[((frameIndex + 1) + i) - 1];
            i++;
        }
        e.setStackTrace(stackTraceElementArr);
        return e;
    }

    public static final <E extends Throwable> E unwrap(E e) {
        if (DebugKt.getRECOVER_STACK_TRACES()) {
            e = (E) unwrapImpl(e);
        }
        return e;
    }

    public static final <E extends Throwable> E unwrapImpl(E e) {
        E e2 = (E) e.getCause();
        if (e2 != null) {
            boolean z = true;
            if (!(!C15149k.m384a(e2.getClass(), e.getClass()))) {
                StackTraceElement[] stackTrace = e.getStackTrace();
                int length = stackTrace.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    } else if (isArtificial(stackTrace[i])) {
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
