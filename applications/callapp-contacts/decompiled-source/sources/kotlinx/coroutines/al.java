package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.c.a.a;
import kotlin.c.a.b;
import kotlin.c.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ah;
import kotlin.o;
import kotlin.p;
import kotlin.v;
import kotlinx.coroutines.internal.f;
import kotlinx.coroutines.internal.z;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JC\u0010\b\u001a\u00020\t\"\u0004\b��\u0010\n2\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002ø\u0001��¢\u0006\u0002\u0010\u0010J\\\u0010\b\u001a\u00020\t\"\u0004\b��\u0010\u0011\"\u0004\b\u0001\u0010\n2'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u0002H\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0012¢\u0006\u0002\b\u00132\u0006\u0010\u0014\u001a\u0002H\u00112\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002ø\u0001��¢\u0006\u0002\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0003\u0010\u0007j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/CoroutineStart;", "", "(Ljava/lang/String;I)V", "isLazy", "", "isLazy$annotations", "()V", "()Z", "invoke", "", "T", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "completion", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "DEFAULT", "LAZY", "ATOMIC", "UNDISPATCHED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/al.class */
public enum al {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    public static /* synthetic */ void isLazy$annotations() {
    }

    public final <T> void invoke(Function1<? super d<? super T>, ? extends Object> startCoroutine, d<? super T> completion) {
        int i = am.f38675a[ordinal()];
        if (i == 1) {
            try {
                d a2 = b.a(b.a(startCoroutine, completion));
                o.a aVar = o.f36812a;
                f.a(a2, o.d(v.f38654a), null);
            } catch (Throwable th) {
                o.a aVar2 = o.f36812a;
                completion.b(o.d(p.a(th)));
            }
        } else if (i == 2) {
            kotlin.jvm.internal.p.d(startCoroutine, "$this$startCoroutine");
            kotlin.jvm.internal.p.d(completion, "completion");
            d a3 = b.a(b.a(startCoroutine, completion));
            v vVar = v.f38654a;
            o.a aVar3 = o.f36812a;
            a3.b(o.d(vVar));
        } else if (i == 3) {
            kotlin.jvm.internal.p.d(completion, "completion");
            try {
                kotlin.c.f b2 = completion.b();
                Object a4 = z.a(b2, null);
                if (startCoroutine != null) {
                    Object invoke = ((Function1) ah.a(startCoroutine, 1)).invoke(completion);
                    z.b(b2, a4);
                    if (invoke != a.COROUTINE_SUSPENDED) {
                        o.a aVar4 = o.f36812a;
                        completion.b(o.d(invoke));
                        return;
                    }
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            } catch (Throwable th2) {
                o.a aVar5 = o.f36812a;
                completion.b(o.d(p.a(th2)));
            }
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final <R, T> void invoke(Function2<? super R, ? super d<? super T>, ? extends Object> startCoroutine, R r, d<? super T> completion) {
        int i = am.f38676b[ordinal()];
        if (i == 1) {
            try {
                d a2 = b.a(b.a(startCoroutine, r, completion));
                o.a aVar = o.f36812a;
                f.a(a2, o.d(v.f38654a), null);
            } catch (Throwable th) {
                o.a aVar2 = o.f36812a;
                completion.b(o.d(p.a(th)));
            }
        } else if (i == 2) {
            kotlin.jvm.internal.p.d(startCoroutine, "$this$startCoroutine");
            kotlin.jvm.internal.p.d(completion, "completion");
            d a3 = b.a(b.a(startCoroutine, r, completion));
            v vVar = v.f38654a;
            o.a aVar3 = o.f36812a;
            a3.b(o.d(vVar));
        } else if (i == 3) {
            kotlin.jvm.internal.p.d(completion, "completion");
            try {
                kotlin.c.f b2 = completion.b();
                Object a4 = z.a(b2, null);
                if (startCoroutine != null) {
                    Object invoke = ((Function2) ah.a(startCoroutine, 2)).invoke(r, completion);
                    z.b(b2, a4);
                    if (invoke != a.COROUTINE_SUSPENDED) {
                        o.a aVar4 = o.f36812a;
                        completion.b(o.d(invoke));
                        return;
                    }
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            } catch (Throwable th2) {
                o.a aVar5 = o.f36812a;
                completion.b(o.d(p.a(th2)));
            }
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean isLazy() {
        return this == LAZY;
    }
}
