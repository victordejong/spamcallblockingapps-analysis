package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u00012\u0012\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086@"}, d2 = {"joinAll", "", "jobs", "", "Lkotlinx/coroutines/Job;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.AwaitKt", m1914f = "Await.kt", m1913l = {47}, m1912m = "joinAll")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/AwaitKt$joinAll$1.class */
public final class AwaitKt$joinAll$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21089f;

    /* renamed from: g */
    int f21090g;

    /* renamed from: h */
    Object f21091h;

    /* renamed from: i */
    Object f21092i;

    /* renamed from: j */
    Object f21093j;

    /* renamed from: k */
    Object f21094k;

    /* renamed from: l */
    Object f21095l;

    /* renamed from: m */
    int f21096m;

    /* renamed from: n */
    int f21097n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AwaitKt$joinAll$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21089f = obj;
        this.f21090g |= Integer.MIN_VALUE;
        return AwaitKt.m1375d(null, this);
    }
}
