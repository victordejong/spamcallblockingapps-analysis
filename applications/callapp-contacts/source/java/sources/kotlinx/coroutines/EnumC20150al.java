package kotlinx.coroutines;

import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18501ah;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p522a.C18308b;
import kotlin.p521c.p522a.EnumC18307a;
import kotlinx.coroutines.internal.C20270f;
import kotlinx.coroutines.internal.C20300z;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JC\u0010\b\u001a\u00020\t\"\u0004\b��\u0010\n2\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002ø\u0001��¢\u0006\u0002\u0010\u0010J\\\u0010\b\u001a\u00020\t\"\u0004\b��\u0010\u0011\"\u0004\b\u0001\u0010\n2'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u0002H\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0012¢\u0006\u0002\b\u00132\u0006\u0010\u0014\u001a\u0002H\u00112\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002ø\u0001��¢\u0006\u0002\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0003\u0010\u0007j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineStart;", "", "(Ljava/lang/String;I)V", "isLazy", "", "isLazy$annotations", "()V", "()Z", "invoke", "", "T", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "completion", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "DEFAULT", "LAZY", "ATOMIC", "UNDISPATCHED", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.al */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/al.class */
public enum EnumC20150al {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    public static /* synthetic */ void isLazy$annotations() {
    }

    public final <T> void invoke(Function1<? super AbstractC18332d<? super T>, ? extends Object> startCoroutine, AbstractC18332d<? super T> completion) {
        int i = C20151am.f66550a[ordinal()];
        if (i == 1) {
            try {
                AbstractC18332d a = C18308b.m4100a(C18308b.m4099a(startCoroutine, completion));
                C18539o.C18540a c18540a = C18539o.f63626a;
                C20270f.m873a(a, C18539o.m3836d(C20128v.f66529a), null);
            } catch (Throwable th) {
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                completion.mo786b(C18539o.m3836d(C18542p.m3834a(th)));
            }
        } else if (i == 2) {
            C18524p.m3840d(startCoroutine, "$this$startCoroutine");
            C18524p.m3840d(completion, "completion");
            AbstractC18332d a2 = C18308b.m4100a(C18308b.m4099a(startCoroutine, completion));
            C20128v c20128v = C20128v.f66529a;
            C18539o.C18540a c18540a3 = C18539o.f63626a;
            a2.mo786b(C18539o.m3836d(c20128v));
        } else if (i != 3) {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            C18524p.m3840d(completion, "completion");
            try {
                AbstractC18335f mo787b = completion.mo787b();
                Object m805a = C20300z.m805a(mo787b, null);
                if (startCoroutine == null) {
                    throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                }
                Object invoke = ((Function1) C18501ah.m3876a(startCoroutine, 1)).invoke(completion);
                C20300z.m804b(mo787b, m805a);
                if (invoke == EnumC18307a.COROUTINE_SUSPENDED) {
                    return;
                }
                C18539o.C18540a c18540a4 = C18539o.f63626a;
                completion.mo786b(C18539o.m3836d(invoke));
            } catch (Throwable th2) {
                C18539o.C18540a c18540a5 = C18539o.f63626a;
                completion.mo786b(C18539o.m3836d(C18542p.m3834a(th2)));
            }
        }
    }

    public final <R, T> void invoke(Function2<? super R, ? super AbstractC18332d<? super T>, ? extends Object> startCoroutine, R r, AbstractC18332d<? super T> completion) {
        int i = C20151am.f66551b[ordinal()];
        if (i == 1) {
            try {
                AbstractC18332d a = C18308b.m4100a(C18308b.m4098a(startCoroutine, r, completion));
                C18539o.C18540a c18540a = C18539o.f63626a;
                C20270f.m873a(a, C18539o.m3836d(C20128v.f66529a), null);
            } catch (Throwable th) {
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                completion.mo786b(C18539o.m3836d(C18542p.m3834a(th)));
            }
        } else if (i == 2) {
            C18524p.m3840d(startCoroutine, "$this$startCoroutine");
            C18524p.m3840d(completion, "completion");
            AbstractC18332d a2 = C18308b.m4100a(C18308b.m4098a(startCoroutine, r, completion));
            C20128v c20128v = C20128v.f66529a;
            C18539o.C18540a c18540a3 = C18539o.f63626a;
            a2.mo786b(C18539o.m3836d(c20128v));
        } else if (i != 3) {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            C18524p.m3840d(completion, "completion");
            try {
                AbstractC18335f mo787b = completion.mo787b();
                Object m805a = C20300z.m805a(mo787b, null);
                if (startCoroutine == null) {
                    throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                }
                Object invoke = ((Function2) C18501ah.m3876a(startCoroutine, 2)).invoke(r, completion);
                C20300z.m804b(mo787b, m805a);
                if (invoke == EnumC18307a.COROUTINE_SUSPENDED) {
                    return;
                }
                C18539o.C18540a c18540a4 = C18539o.f63626a;
                completion.mo786b(C18539o.m3836d(invoke));
            } catch (Throwable th2) {
                C18539o.C18540a c18540a5 = C18539o.f63626a;
                completion.mo786b(C18539o.m3836d(C18542p.m3834a(th2)));
            }
        }
    }

    public final boolean isLazy() {
        return this == LAZY;
    }
}
