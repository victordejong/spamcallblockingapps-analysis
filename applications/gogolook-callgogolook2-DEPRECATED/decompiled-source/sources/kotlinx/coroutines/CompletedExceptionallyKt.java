package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import p626l.C14979k;
import p626l.C14982l;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15069e;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a4\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H��ø\u0001��¢\u0006\u0002\u0010\u0007\u001a\"\u0010\b\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H��ø\u0001��¢\u0006\u0002\u0010\t\u001a.\u0010\b\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH��ø\u0001��¢\u0006\u0002\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, m815d2 = {"recoverResult", "Lkotlin/Result;", ExifInterface.GPS_DIRECTION_TRUE, IapProductRealmObject.STATE, "", "uCont", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toState", "(Ljava/lang/Object;)Ljava/lang/Object;", "caller", "Lkotlinx/coroutines/CancellableContinuation;", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CompletedExceptionallyKt.class */
public final class CompletedExceptionallyKt {
    public static final <T> Object recoverResult(Object obj, AbstractC15044d<? super T> dVar) {
        if (obj instanceof CompletedExceptionally) {
            C14979k.C14980a aVar = C14979k.f33013a;
            Throwable th = ((CompletedExceptionally) obj).cause;
            Throwable th2 = th;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                th2 = !(dVar instanceof AbstractC15069e) ? th : StackTraceRecoveryKt.access$recoverFromStackFrame(th, (AbstractC15069e) dVar);
            }
            obj = C14982l.m652a(th2);
            C14979k.m657a(obj);
        } else {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            C14979k.m657a(obj);
        }
        return obj;
    }

    public static final <T> Object toState(Object obj) {
        Throwable b = C14979k.m656b(obj);
        if (b != null) {
            obj = new CompletedExceptionally(b, false, 2, null);
        }
        return obj;
    }

    public static final <T> Object toState(Object obj, CancellableContinuation<?> cancellableContinuation) {
        Throwable b = C14979k.m656b(obj);
        if (b != null) {
            Throwable th = b;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                th = !(cancellableContinuation instanceof AbstractC15069e) ? b : StackTraceRecoveryKt.access$recoverFromStackFrame(b, (AbstractC15069e) cancellableContinuation);
            }
            obj = new CompletedExceptionally(th, false, 2, null);
        }
        return obj;
    }
}
