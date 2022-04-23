package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "e", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1.class */
public final class ExceptionsConstuctorKt$safeCtor$1 extends Lambda implements Function1<Throwable, Throwable> {

    /* renamed from: f */
    final /* synthetic */ Function1 f23904f;

    @Nullable
    /* renamed from: b */
    public final Throwable invoke(@NotNull Throwable th) {
        Object obj;
        try {
            Result.Companion companion = Result.f20418g;
            obj = (Throwable) this.f23904f.invoke(th);
            Result.m2481b(obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.f20418g;
            obj = ResultKt.m2473a(th2);
            Result.m2481b(obj);
        }
        Object obj2 = obj;
        if (Result.m2477f(obj)) {
            obj2 = null;
        }
        return (Throwable) obj2;
    }
}
