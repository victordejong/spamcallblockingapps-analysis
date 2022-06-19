package p193e.p194a.p294b.p295a.p312c.p313a;

import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment$SavedState;
import androidx.fragment.app.FragmentManager;
import java.util.List;
import p1727n3.p1859r.p1860a.AbstractC26919d0;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7673c;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7676e;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7682h;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7688j;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7691k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.v */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/v.class */
public final class C7749v extends AbstractC26919d0 {

    /* renamed from: j */
    public final SparseArray<Fragment> f24209j = new SparseArray<>();

    /* renamed from: k */
    public List<Fragment> f24210k = i.d0(new Fragment[]{new C7682h(), new C7676e(), new C7691k(), new C7688j(), new C7673c()});

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7749v(FragmentManager fragmentManager) {
        super(fragmentManager, 1);
        l.e(fragmentManager, "fragmentManager");
        l.e(fragmentManager, "fragmentManager");
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: a */
    public void mo1177a(ViewGroup viewGroup, int i, Object obj) {
        l.e(viewGroup, "container");
        l.e(obj, "object");
        this.f24209j.remove(i);
        Fragment fragment = (Fragment) obj;
        if (this.f75302e == null) {
            this.f75302e = new C26907a(this.f75300c);
        }
        while (this.f75303f.size() <= i) {
            this.f75303f.add(null);
        }
        this.f75303f.set(i, fragment.isAdded() ? this.f75300c.m42903l0(fragment) : null);
        this.f75304g.set(i, null);
        this.f75302e.mo1121l(fragment);
        if (fragment.equals(this.f75305h)) {
            this.f75305h = null;
        }
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: c */
    public int mo1537c() {
        return this.f24210k.size();
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: f */
    public Object mo1534f(ViewGroup viewGroup, int i) {
        Fragment fragment;
        Fragment$SavedState fragment$SavedState;
        Fragment fragment2;
        l.e(viewGroup, "container");
        if (this.f75304g.size() <= i || (fragment2 = this.f75304g.get(i)) == null) {
            if (this.f75302e == null) {
                this.f75302e = new C26907a(this.f75300c);
            }
            Fragment fragment3 = this.f24210k.get(i);
            if (this.f75303f.size() > i && (fragment$SavedState = this.f75303f.get(i)) != null) {
                fragment3.setInitialSavedState(fragment$SavedState);
            }
            while (this.f75304g.size() <= i) {
                this.f75304g.add(null);
            }
            fragment3.setMenuVisibility(false);
            if (this.f75301d == 0) {
                fragment3.setUserVisibleHint(false);
            }
            this.f75304g.set(i, fragment3);
            this.f75302e.m1131b(viewGroup.getId(), fragment3);
            fragment = fragment3;
            if (this.f75301d == 1) {
                this.f75302e.mo1117p(fragment3, AbstractC27028u.EnumC27030b.STARTED);
                fragment = fragment3;
            }
        } else {
            fragment = fragment2;
        }
        this.f24209j.put(i, fragment);
        return fragment;
    }
}
