package androidx.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.AbstractC14974f;
import p626l.p629c0.AbstractC14900c;
import p626l.p641z.C15105a;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B/\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\u0002\u0010\u000bJ\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\f\u001a\u0004\u0018\u00018��X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000e\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"Landroidx/lifecycle/ViewModelLazy;", "VM", "Landroidx/lifecycle/ViewModel;", "Lkotlin/Lazy;", "viewModelClass", "Lkotlin/reflect/KClass;", "storeProducer", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelStore;", "factoryProducer", "Landroidx/lifecycle/ViewModelProvider$Factory;", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "cached", "Landroidx/lifecycle/ViewModel;", C13032a.f29462d, "getValue", "()Landroidx/lifecycle/ViewModel;", "isInitialized", "", "lifecycle-viewmodel-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelLazy.class */
public final class ViewModelLazy<VM extends ViewModel> implements AbstractC14974f<VM> {
    public VM cached;
    public final AbstractC15107a<ViewModelProvider.Factory> factoryProducer;
    public final AbstractC15107a<ViewModelStore> storeProducer;
    public final AbstractC14900c<VM> viewModelClass;

    /* JADX WARN: Multi-variable type inference failed */
    public ViewModelLazy(AbstractC14900c<VM> cVar, AbstractC15107a<? extends ViewModelStore> aVar, AbstractC15107a<? extends ViewModelProvider.Factory> aVar2) {
        C15149k.m377b(cVar, "viewModelClass");
        C15149k.m377b(aVar, "storeProducer");
        C15149k.m377b(aVar2, "factoryProducer");
        this.viewModelClass = cVar;
        this.storeProducer = aVar;
        this.factoryProducer = aVar2;
    }

    @Override // p626l.AbstractC14974f
    public VM getValue() {
        VM vm = this.cached;
        VM vm2 = vm;
        if (vm == null) {
            vm2 = (VM) new ViewModelProvider(this.storeProducer.invoke(), this.factoryProducer.invoke()).get(C15105a.m424a((AbstractC14900c) this.viewModelClass));
            this.cached = vm2;
            C15149k.m383a((Object) vm2, "ViewModelProvider(store,…ed = it\n                }");
        }
        return vm2;
    }

    public boolean isInitialized() {
        return this.cached != null;
    }
}
