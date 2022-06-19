package androidx.fragment.app;

import androidx.activity.result.ActivityResultRegistry;
import java.util.concurrent.atomic.AtomicReference;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$g.class */
public class Fragment$g extends Fragment$k {

    /* renamed from: a */
    public final /* synthetic */ AbstractC25640a f793a;

    /* renamed from: b */
    public final /* synthetic */ AtomicReference f794b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC25376a f795c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC25373a f796d;

    /* renamed from: e */
    public final /* synthetic */ Fragment f797e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Fragment$g(Fragment fragment, AbstractC25640a abstractC25640a, AtomicReference atomicReference, AbstractC25376a abstractC25376a, AbstractC25373a abstractC25373a) {
        super(null);
        this.f797e = fragment;
        this.f793a = abstractC25640a;
        this.f794b = atomicReference;
        this.f795c = abstractC25376a;
        this.f796d = abstractC25373a;
    }

    @Override // androidx.fragment.app.Fragment$k
    /* renamed from: a */
    public void mo42954a() {
        String generateActivityResultKey = this.f797e.generateActivityResultKey();
        this.f794b.set(((ActivityResultRegistry) this.f793a.apply(null)).m43170d(generateActivityResultKey, this.f797e, this.f795c, this.f796d));
    }
}
