package com.tmobile.services.nameid.manage;

import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.manage.ManagePresenter;
import com.tmobile.services.nameid.utility.LogUtil;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "com.tmobile.services.nameid.manage.ManagePresenter$onViewCreated$1", m1914f = "ManagePresenter.kt", m1913l = {}, m1912m = "invokeSuspend")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManagePresenter$onViewCreated$1.class */
final class ManagePresenter$onViewCreated$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f13539g;

    /* renamed from: h */
    int f13540h;

    /* renamed from: i */
    final /* synthetic */ ManagePresenter f13541i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManagePresenter$onViewCreated$1(ManagePresenter managePresenter, Continuation continuation) {
        super(2, continuation);
        this.f13541i = managePresenter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        ManagePresenter$onViewCreated$1 managePresenter$onViewCreated$1 = new ManagePresenter$onViewCreated$1(this.f13541i, completion);
        managePresenter$onViewCreated$1.f13539g = (CoroutineScope) obj;
        return managePresenter$onViewCreated$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        WeakReference weakReference;
        WeakReference weakReference2;
        Manage.PNBTab pNBTab;
        ManagePresenter.Companion unused;
        IntrinsicsKt__IntrinsicsKt.m1920d();
        if (this.f13540h == 0) {
            ResultKt.m2472b(obj);
            this.f13541i.f13536f = false;
            weakReference = this.f13541i.f13534d;
            Manage.View view = (Manage.View) weakReference.get();
            if (view != null) {
                pNBTab = this.f13541i.f13535e;
                view.mo6553S(pNBTab);
            }
            unused = ManagePresenter.f13530j;
            StringBuilder sb = new StringBuilder();
            sb.append("onViewCreated, viewRef = ");
            weakReference2 = this.f13541i.f13534d;
            sb.append((Manage.View) weakReference2.get());
            LogUtil.m5643d("ManagePresenter", sb.toString());
            return Unit.f20447a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ManagePresenter$onViewCreated$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
