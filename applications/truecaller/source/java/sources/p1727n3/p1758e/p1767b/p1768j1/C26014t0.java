package p1727n3.p1758e.p1767b.p1768j1;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1758e.p1767b.AbstractC26062k0;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
/* renamed from: n3.e.b.j1.t0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t0.class */
public class C26014t0 implements AbstractC26062k0 {

    /* renamed from: a */
    public int f72665a;

    public C26014t0(int i) {
        this.f72665a = i;
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC26062k0
    /* renamed from: a */
    public List<AbstractC26075l0> mo2762a(List<AbstractC26075l0> list) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC26075l0 abstractC26075l0 : list) {
            MediaSessionCompat.m43214o(abstractC26075l0 instanceof AbstractC26059z, "The camera info doesn't contain internal implementation.");
            Integer m2764c = ((AbstractC26059z) abstractC26075l0).m2764c();
            if (m2764c != null && m2764c.intValue() == this.f72665a) {
                arrayList.add(abstractC26075l0);
            }
        }
        return arrayList;
    }
}
