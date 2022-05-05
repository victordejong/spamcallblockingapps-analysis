package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0086@"}, d2 = {"joinAll", "", "", "Lkotlinx/coroutines/Job;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.AwaitKt", m1914f = "Await.kt", m1913l = {56}, m1912m = "joinAll")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/AwaitKt$joinAll$3.class */
public final class AwaitKt$joinAll$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21098f;

    /* renamed from: g */
    int f21099g;

    /* renamed from: h */
    Object f21100h;

    /* renamed from: i */
    Object f21101i;

    /* renamed from: j */
    Object f21102j;

    /* renamed from: k */
    Object f21103k;

    /* renamed from: l */
    Object f21104l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AwaitKt$joinAll$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21098f = obj;
        this.f21099g |= Integer.MIN_VALUE;
        return AwaitKt.m1376c(null, this);
    }
}
