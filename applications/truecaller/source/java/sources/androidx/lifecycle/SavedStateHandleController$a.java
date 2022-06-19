package androidx.lifecycle;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import p1727n3.p1757d0.AbstractC25704c;
import p1727n3.p1757d0.C25700a;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26993b1;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandleController$a.class */
public final class SavedStateHandleController$a implements C25700a.AbstractC25701a {
    @Override // p1727n3.p1757d0.C25700a.AbstractC25701a
    /* renamed from: a */
    public void mo3044a(AbstractC25704c abstractC25704c) {
        if (abstractC25704c instanceof AbstractC26996c1) {
            C26993b1 viewModelStore = ((AbstractC26996c1) abstractC25704c).getViewModelStore();
            C25700a savedStateRegistry = abstractC25704c.getSavedStateRegistry();
            Objects.requireNonNull(viewModelStore);
            Iterator it = new HashSet(viewModelStore.f75499a.keySet()).iterator();
            while (it.hasNext()) {
                SavedStateHandleController.a(viewModelStore.f75499a.get((String) it.next()), savedStateRegistry, abstractC25704c.getLifecycle());
            }
            if (new HashSet(viewModelStore.f75499a.keySet()).isEmpty()) {
                return;
            }
            savedStateRegistry.m3045c(SavedStateHandleController$a.class);
            return;
        }
        throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
    }
}
