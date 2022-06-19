package p193e.p1577m.p1578a.p1642f.p1660f;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.OnDelegateCreatedListener;
import java.util.Iterator;
/* renamed from: e.m.a.f.f.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/f/a.class */
public final class C24994a implements OnDelegateCreatedListener {

    /* renamed from: a */
    public final /* synthetic */ DeferredLifecycleHelper f69961a;

    public C24994a(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.f69961a = deferredLifecycleHelper;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.dynamic.OnDelegateCreatedListener
    /* renamed from: a */
    public final void mo4237a(LifecycleDelegate lifecycleDelegate) {
        DeferredLifecycleHelper deferredLifecycleHelper = this.f69961a;
        deferredLifecycleHelper.f6169a = lifecycleDelegate;
        Iterator<AbstractC25001h> it = deferredLifecycleHelper.f6171c.iterator();
        while (it.hasNext()) {
            it.next().mo4236a(this.f69961a.f6169a);
        }
        this.f69961a.f6171c.clear();
        this.f69961a.f6170b = null;
    }
}
