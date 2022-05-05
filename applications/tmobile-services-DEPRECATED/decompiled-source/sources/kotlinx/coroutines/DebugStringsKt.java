package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0006\u001a\u0017\u0010\u0002\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030��H��¢\u0006\u0004\b\u0002\u0010\u0003\"\u001a\u0010\u0007\u001a\u00020\u0001*\u00020\u00048@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\"\u001a\u0010\t\u001a\u00020\u0001*\u00020\u00048@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006¨\u0006\n"}, d2 = {"Lkotlin/coroutines/Continuation;", "", "toDebugString", "(Lkotlin/coroutines/Continuation;)Ljava/lang/String;", "", "getClassSimpleName", "(Ljava/lang/Object;)Ljava/lang/String;", "classSimpleName", "getHexAddress", "hexAddress", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DebugStringsKt.class */
public final class DebugStringsKt {
    @NotNull
    /* renamed from: a */
    public static final String m1304a(@NotNull Object obj) {
        return obj.getClass().getSimpleName();
    }

    @NotNull
    /* renamed from: b */
    public static final String m1303b(@NotNull Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    @NotNull
    /* renamed from: c */
    public static final String m1302c(@NotNull Continuation<?> continuation) {
        Object obj;
        String str;
        if (continuation instanceof DispatchedContinuation) {
            str = continuation.toString();
        } else {
            try {
                Result.Companion companion = Result.f20418g;
                obj = continuation + '@' + m1303b(continuation);
                Result.m2481b(obj);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.f20418g;
                obj = ResultKt.m2473a(th);
                Result.m2481b(obj);
            }
            if (Result.m2479d(obj) != null) {
                obj = continuation.getClass().getName() + '@' + m1303b(continuation);
            }
            str = (String) obj;
        }
        return str;
    }
}
