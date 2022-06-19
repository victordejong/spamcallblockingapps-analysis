package p1727n3.p1859r.p1860a;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import p1727n3.p1728a.p1729d.AbstractC25372b;
import p1727n3.p1868v.AbstractC26996c1;
/* renamed from: n3.r.a.l$b */
/* loaded from: classes-dex2jar.jar:n3/r/a/l$b.class */
public class l$b implements AbstractC25372b {

    /* renamed from: a */
    public final /* synthetic */ l f75379a;

    public l$b(l lVar) {
        this.f75379a = lVar;
    }

    @Override // p1727n3.p1728a.p1729d.AbstractC25372b
    /* renamed from: a */
    public void mo1116a(Context context) {
        AbstractC26959u<?> abstractC26959u = this.f75379a.mFragments.f75440a;
        abstractC26959u.f75446d.m42924b(abstractC26959u, abstractC26959u, null);
        Bundle m3047a = this.f75379a.getSavedStateRegistry().m3047a("android:support:fragments");
        if (m3047a != null) {
            Parcelable parcelable = m3047a.getParcelable("android:support:fragments");
            AbstractC26959u<?> abstractC26959u2 = this.f75379a.mFragments.f75440a;
            if (!(abstractC26959u2 instanceof AbstractC26996c1)) {
                throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
            }
            abstractC26959u2.f75446d.m42907j0(parcelable);
        }
    }
}
