package androidx.fragment.app;

import java.util.concurrent.atomic.AtomicReference;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p1727n3.p1807k.p1808a.C26416c;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$h.class */
public class Fragment$h extends AbstractC25374b<I> {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f798a;

    public Fragment$h(Fragment fragment, AtomicReference atomicReference, AbstractC25376a abstractC25376a) {
        this.f798a = atomicReference;
    }

    @Override // p1727n3.p1728a.p1730e.AbstractC25374b
    /* renamed from: a */
    public void mo3694a(I i, C26416c c26416c) {
        AbstractC25374b abstractC25374b = (AbstractC25374b) this.f798a.get();
        if (abstractC25374b != null) {
            abstractC25374b.mo3694a(i, c26416c);
            return;
        }
        throw new IllegalStateException("Operation cannot be started before fragment is in created state");
    }

    @Override // p1727n3.p1728a.p1730e.AbstractC25374b
    /* renamed from: b */
    public void mo3693b() {
        AbstractC25374b abstractC25374b = (AbstractC25374b) this.f798a.getAndSet(null);
        if (abstractC25374b != null) {
            abstractC25374b.mo3693b();
        }
    }
}
