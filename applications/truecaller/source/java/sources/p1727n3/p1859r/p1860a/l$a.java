package p1727n3.p1859r.p1860a;

import android.os.Bundle;
import android.os.Parcelable;
import p1727n3.p1757d0.C25700a;
import p1727n3.p1868v.AbstractC27028u;
/* renamed from: n3.r.a.l$a */
/* loaded from: classes-dex2jar.jar:n3/r/a/l$a.class */
public class l$a implements C25700a.AbstractC25702b {

    /* renamed from: a */
    public final /* synthetic */ l f75378a;

    public l$a(l lVar) {
        this.f75378a = lVar;
    }

    @Override // p1727n3.p1757d0.C25700a.AbstractC25702b
    /* renamed from: a */
    public Bundle mo990a() {
        Bundle bundle = new Bundle();
        this.f75378a.markFragmentsCreated();
        this.f75378a.mFragmentLifecycleRegistry.m1019e(AbstractC27028u.EnumC27029a.ON_STOP);
        Parcelable m42905k0 = this.f75378a.mFragments.f75440a.f75446d.m42905k0();
        if (m42905k0 != null) {
            bundle.putParcelable("android:support:fragments", m42905k0);
        }
        return bundle;
    }
}
