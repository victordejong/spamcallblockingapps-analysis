package com.tmobile.services.nameid.scamBlock;

import android.content.Context;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.activity.ActivityPresenter;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.scamBlock.ScamBlockCounterFragment;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "com.tmobile.services.nameid.scamBlock.ScamBlockCounterFragment$goToBlockedActivity$1", m1914f = "ScamBlockCounterFragment.kt", m1913l = {130}, m1912m = "invokeSuspend")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounterFragment$goToBlockedActivity$1.class */
public final class ScamBlockCounterFragment$goToBlockedActivity$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f13781g;

    /* renamed from: h */
    Object f13782h;

    /* renamed from: i */
    Object f13783i;

    /* renamed from: j */
    int f13784j;

    /* renamed from: k */
    final /* synthetic */ ScamBlockCounterFragment f13785k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScamBlockCounterFragment$goToBlockedActivity$1(ScamBlockCounterFragment scamBlockCounterFragment, Continuation continuation) {
        super(2, continuation);
        this.f13785k = scamBlockCounterFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        ScamBlockCounterFragment$goToBlockedActivity$1 scamBlockCounterFragment$goToBlockedActivity$1 = new ScamBlockCounterFragment$goToBlockedActivity$1(this.f13785k, completion);
        scamBlockCounterFragment$goToBlockedActivity$1.f13781g = (CoroutineScope) obj;
        return scamBlockCounterFragment$goToBlockedActivity$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        ScamBlock.State state;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f13784j;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f13781g;
            state = this.f13785k.f13778p;
            int i2 = ScamBlockCounterFragment.WhenMappings.f13780a[state.ordinal()];
            ActivityPresenter.CallFilterType callFilterType = i2 != 1 ? i2 != 2 ? i2 != 3 ? ActivityPresenter.CallFilterType.ALL : ActivityPresenter.CallFilterType.BLOCKED : ActivityPresenter.CallFilterType.BLOCKED : ActivityPresenter.CallFilterType.BLOCKED;
            MainApplication.m7544L(callFilterType);
            Context context = this.f13785k.getContext();
            if (context != null) {
                ((MainActivity) context).m7652A();
                this.f13782h = coroutineScope;
                this.f13783i = callFilterType;
                this.f13784j = 1;
                if (DelayKt.m1293a(100L, this) == d) {
                    return d;
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
            }
        } else if (i == 1) {
            ActivityPresenter.CallFilterType callFilterType2 = (ActivityPresenter.CallFilterType) this.f13783i;
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f13782h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (this.f13785k.getContext() != null && this.f13785k.isAdded()) {
            this.f13785k.dismissAllowingStateLoss();
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ScamBlockCounterFragment$goToBlockedActivity$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
