package androidx.fragment.app;

import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.p629c0.AbstractC14900c;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a1\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0010\b\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0087\b\u001aJ\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0007\u001aA\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u000e\b\n\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\u0010\b\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0087\b¨\u0006\u0010"}, m815d2 = {"activityViewModels", "Lkotlin/Lazy;", "VM", "Landroidx/lifecycle/ViewModel;", "Landroidx/fragment/app/Fragment;", "factoryProducer", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "createViewModelLazy", "viewModelClass", "Lkotlin/reflect/KClass;", "storeProducer", "Landroidx/lifecycle/ViewModelStore;", "viewModels", "ownerProducer", "Landroidx/lifecycle/ViewModelStoreOwner;", "fragment-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentViewModelLazyKt.class */
public final class FragmentViewModelLazyKt {
    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> AbstractC14974f<VM> activityViewModels(Fragment fragment, AbstractC15107a<? extends ViewModelProvider.Factory> aVar) {
        C15149k.m377b(fragment, "$this$activityViewModels");
        C15149k.m385a(4, "VM");
        throw null;
    }

    public static /* synthetic */ AbstractC14974f activityViewModels$default(Fragment fragment, AbstractC15107a aVar, int i, Object obj) {
        C15149k.m377b(fragment, "$this$activityViewModels");
        C15149k.m385a(4, "VM");
        throw null;
    }

    @MainThread
    public static final <VM extends ViewModel> AbstractC14974f<VM> createViewModelLazy(Fragment fragment, AbstractC14900c<VM> cVar, AbstractC15107a<? extends ViewModelStore> aVar, AbstractC15107a<? extends ViewModelProvider.Factory> aVar2) {
        C15149k.m377b(fragment, "$this$createViewModelLazy");
        C15149k.m377b(cVar, "viewModelClass");
        C15149k.m377b(aVar, "storeProducer");
        if (aVar2 == null) {
            aVar2 = new FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1(fragment);
        }
        return new ViewModelLazy(cVar, aVar, aVar2);
    }

    public static /* synthetic */ AbstractC14974f createViewModelLazy$default(Fragment fragment, AbstractC14900c cVar, AbstractC15107a aVar, AbstractC15107a aVar2, int i, Object obj) {
        if ((i & 4) != 0) {
            aVar2 = null;
        }
        return createViewModelLazy(fragment, cVar, aVar, aVar2);
    }

    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> AbstractC14974f<VM> viewModels(Fragment fragment, AbstractC15107a<? extends ViewModelStoreOwner> aVar, AbstractC15107a<? extends ViewModelProvider.Factory> aVar2) {
        C15149k.m377b(fragment, "$this$viewModels");
        C15149k.m377b(aVar, "ownerProducer");
        C15149k.m385a(4, "VM");
        throw null;
    }

    public static /* synthetic */ AbstractC14974f viewModels$default(Fragment fragment, AbstractC15107a aVar, AbstractC15107a aVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            aVar = new FragmentViewModelLazyKt$viewModels$1(fragment);
        }
        C15149k.m377b(fragment, "$this$viewModels");
        C15149k.m377b(aVar, "ownerProducer");
        C15149k.m385a(4, "VM");
        throw null;
    }
}
