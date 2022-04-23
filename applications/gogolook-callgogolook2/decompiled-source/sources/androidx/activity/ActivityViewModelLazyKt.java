package androidx.activity;

import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a1\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0010\b\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0087\b¨\u0006\b"}, m815d2 = {"viewModels", "Lkotlin/Lazy;", "VM", "Landroidx/lifecycle/ViewModel;", "Landroidx/activity/ComponentActivity;", "factoryProducer", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "activity-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/activity/ActivityViewModelLazyKt.class */
public final class ActivityViewModelLazyKt {
    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> AbstractC14974f<VM> viewModels(ComponentActivity componentActivity, AbstractC15107a<? extends ViewModelProvider.Factory> aVar) {
        C15149k.m377b(componentActivity, "$this$viewModels");
        if (aVar == null) {
            new ActivityViewModelLazyKt$viewModels$factoryPromise$1(componentActivity);
        }
        C15149k.m385a(4, "VM");
        throw null;
    }

    public static /* synthetic */ AbstractC14974f viewModels$default(ComponentActivity componentActivity, AbstractC15107a aVar, int i, Object obj) {
        if ((i & 1) != 0) {
            aVar = null;
        }
        C15149k.m377b(componentActivity, "$this$viewModels");
        if (aVar == null) {
            new ActivityViewModelLazyKt$viewModels$factoryPromise$1(componentActivity);
        }
        C15149k.m385a(4, "VM");
        throw null;
    }
}
