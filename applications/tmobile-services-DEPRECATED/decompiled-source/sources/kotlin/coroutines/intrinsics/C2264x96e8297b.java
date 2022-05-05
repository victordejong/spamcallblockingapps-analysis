package kotlin.coroutines.intrinsics;

import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J$\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0014ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/Result;", "", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "", Constants.ScionAnalytics.PARAM_LABEL, "I", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2 */
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2.class */
public final class C2264x96e8297b extends ContinuationImpl {

    /* renamed from: f */
    private int f20660f;

    /* renamed from: g */
    final /* synthetic */ Function1 f20661g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    protected Object invokeSuspend(@NotNull Object obj) {
        int i = this.f20660f;
        if (i == 0) {
            this.f20660f = 1;
            ResultKt.m2472b(obj);
            obj = this.f20661g.invoke(this);
        } else if (i == 1) {
            this.f20660f = 2;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("This coroutine had already completed".toString());
        }
        return obj;
    }
}
