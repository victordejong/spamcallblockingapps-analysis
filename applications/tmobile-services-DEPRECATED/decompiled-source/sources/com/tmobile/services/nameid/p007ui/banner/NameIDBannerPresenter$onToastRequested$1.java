package com.tmobile.services.nameid.p007ui.banner;

import com.tmobile.services.nameid.p007ui.banner.NameIDBanner;
import java.lang.ref.WeakReference;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "com.tmobile.services.nameid.ui.banner.NameIDBannerPresenter$onToastRequested$1", m1914f = "NameIDBannerPresenter.kt", m1913l = {110}, m1912m = "invokeSuspend")
/* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBannerPresenter$onToastRequested$1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBannerPresenter$onToastRequested$1.class */
final class NameIDBannerPresenter$onToastRequested$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f13888g;

    /* renamed from: h */
    Object f13889h;

    /* renamed from: i */
    int f13890i;

    /* renamed from: j */
    final /* synthetic */ NameIDBannerPresenter f13891j;

    /* renamed from: k */
    final /* synthetic */ String f13892k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NameIDBannerPresenter$onToastRequested$1(NameIDBannerPresenter nameIDBannerPresenter, String str, Continuation continuation) {
        super(2, continuation);
        this.f13891j = nameIDBannerPresenter;
        this.f13892k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        NameIDBannerPresenter$onToastRequested$1 nameIDBannerPresenter$onToastRequested$1 = new NameIDBannerPresenter$onToastRequested$1(this.f13891j, this.f13892k, completion);
        nameIDBannerPresenter$onToastRequested$1.f13888g = (CoroutineScope) obj;
        return nameIDBannerPresenter$onToastRequested$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        WeakReference weakReference;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f13890i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f13888g;
            this.f13891j.f13885l = true;
            weakReference = this.f13891j.f13874a;
            NameIDBanner.View view = (NameIDBanner.View) weakReference.get();
            if (view != null) {
                view.mo6205g(this.f13892k);
            }
            this.f13889h = coroutineScope;
            this.f13890i = 1;
            if (DelayKt.m1293a(2500L, this) == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f13889h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        this.f13891j.f13885l = false;
        this.f13891j.m6217p();
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NameIDBannerPresenter$onToastRequested$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
