package com.tmobile.services.nameid.p007ui.search;

import androidx.fragment.app.FragmentManager;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.PermissionChecker;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "com.tmobile.services.nameid.ui.search.NameIDSearchFragment$showContactPermissionMissing$1", m1914f = "NameIDSearchFragment.kt", m1913l = {294}, m1912m = "invokeSuspend")
/* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$showContactPermissionMissing$1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchFragment$showContactPermissionMissing$1.class */
final class NameIDSearchFragment$showContactPermissionMissing$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f14197g;

    /* renamed from: h */
    Object f14198h;

    /* renamed from: i */
    int f14199i;

    /* renamed from: j */
    final /* synthetic */ NameIDSearchFragment f14200j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$showContactPermissionMissing$1$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchFragment$showContactPermissionMissing$1$1.class */
    public static final /* synthetic */ class C18911 extends FunctionReferenceImpl implements Function0<Unit> {
        C18911(NameIDSearchFragment nameIDSearchFragment) {
            super(0, nameIDSearchFragment, NameIDSearchFragment.class, "requestContactPermission", "requestContactPermission()V", 0);
        }

        /* renamed from: d */
        public final void m5959d() {
            ((NameIDSearchFragment) this.receiver).m5988S0();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            m5959d();
            return Unit.f20447a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NameIDSearchFragment$showContactPermissionMissing$1(NameIDSearchFragment nameIDSearchFragment, Continuation continuation) {
        super(2, continuation);
        this.f14200j = nameIDSearchFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1830e(completion, "completion");
        NameIDSearchFragment$showContactPermissionMissing$1 nameIDSearchFragment$showContactPermissionMissing$1 = new NameIDSearchFragment$showContactPermissionMissing$1(this.f14200j, completion);
        nameIDSearchFragment$showContactPermissionMissing$1.f14197g = (CoroutineScope) obj;
        return nameIDSearchFragment$showContactPermissionMissing$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f14199i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            this.f14198h = this.f14197g;
            this.f14199i = 1;
            if (DelayKt.m1293a(500L, this) == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope = (CoroutineScope) this.f14198h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (PermissionChecker.m5424a(this.f14200j.getActivity())) {
            PermissionChecker.m5421d(this.f14200j.getActivity());
        } else {
            NameIDDialogBuilder o = NameIDDialogBuilder.f13943m.m6129o(new C18911(this.f14200j));
            FragmentManager childFragmentManager = this.f14200j.getChildFragmentManager();
            Intrinsics.m1831d(childFragmentManager, "childFragmentManager");
            o.m6160b(childFragmentManager);
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NameIDSearchFragment$showContactPermissionMissing$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
