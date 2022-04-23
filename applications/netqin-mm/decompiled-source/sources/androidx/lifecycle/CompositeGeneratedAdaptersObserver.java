package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import p012b.p068o.AbstractC1105c;
import p012b.p068o.AbstractC1107e;
import p012b.p068o.AbstractC1109g;
import p012b.p068o.C1115k;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/CompositeGeneratedAdaptersObserver.class */
public class CompositeGeneratedAdaptersObserver implements AbstractC1107e {

    /* renamed from: a */
    public final AbstractC1105c[] f1376a;

    public CompositeGeneratedAdaptersObserver(AbstractC1105c[] cVarArr) {
        this.f1376a = cVarArr;
    }

    @Override // p012b.p068o.AbstractC1107e
    /* renamed from: a */
    public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
        C1115k kVar = new C1115k();
        for (AbstractC1105c cVar : this.f1376a) {
            cVar.m34665a(gVar, event, false, kVar);
        }
        for (AbstractC1105c cVar2 : this.f1376a) {
            cVar2.m34665a(gVar, event, true, kVar);
        }
    }
}
