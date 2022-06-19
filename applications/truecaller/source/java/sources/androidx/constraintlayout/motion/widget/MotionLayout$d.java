package androidx.constraintlayout.motion.widget;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Barrier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import n3.i.b.h.a;
import n3.i.b.h.e;
import n3.i.b.h.f;
import n3.i.b.h.k;
import p1727n3.p1795i.p1796a.p1798b.C26310m;
import p1727n3.p1795i.p1796a.p1798b.C26313p;
import p1727n3.p1795i.p1799b.p1800h.AbstractC26366h;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p1727n3.p1795i.p1799b.p1800h.C26365g;
import p1727n3.p1795i.p1799b.p1800h.C26367i;
import p1727n3.p1795i.p1799b.p1800h.C26369l;
import p1727n3.p1795i.p1802c.AbstractC26385b;
import p1727n3.p1795i.p1802c.C26389d;
import p1727n3.p1795i.p1802c.C26395e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$d.class */
public class MotionLayout$d {

    /* renamed from: a */
    public e f556a = new e();

    /* renamed from: b */
    public e f557b = new e();

    /* renamed from: c */
    public C26389d f558c = null;

    /* renamed from: d */
    public C26389d f559d = null;

    /* renamed from: e */
    public int f560e;

    /* renamed from: f */
    public int f561f;

    /* renamed from: g */
    public final /* synthetic */ MotionLayout f562g;

    public MotionLayout$d(MotionLayout motionLayout) {
        this.f562g = motionLayout;
    }

    /* renamed from: a */
    public void m43046a() {
        int i;
        int childCount = this.f562g.getChildCount();
        this.f562g.C.clear();
        int i2 = 0;
        while (true) {
            if (i2 < childCount) {
                View childAt = this.f562g.getChildAt(i2);
                this.f562g.C.put(childAt, new C26310m(childAt));
                i2++;
            }
        }
        for (i = 0; i < childCount; i++) {
            View childAt2 = this.f562g.getChildAt(i);
            C26310m c26310m = (C26310m) this.f562g.C.get(childAt2);
            if (c26310m != null) {
                if (this.f558c != null) {
                    C26363d m43044c = m43044c(this.f556a, childAt2);
                    if (m43044c != null) {
                        C26389d c26389d = this.f558c;
                        C26313p c26313p = c26310m.f73431d;
                        c26313p.f73461c = 0.0f;
                        c26313p.f73462d = 0.0f;
                        c26310m.m2201c(c26313p);
                        c26310m.f73431d.m2190e(m43044c.m2061x(), m43044c.m2060y(), m43044c.m2062w(), m43044c.m2068q());
                        C26389d.C26390a m1961j = c26389d.m1961j(c26310m.f73429b);
                        c26310m.f73431d.m2193a(m1961j);
                        c26310m.f73437j = m1961j.f73890c.f73963f;
                        c26310m.f73433f.m2204d(m43044c, c26389d, c26310m.f73429b);
                    } else if (this.f562g.S != 0) {
                        MediaSessionCompat.m43222l0();
                        MediaSessionCompat.m43216n0(childAt2);
                        childAt2.getClass().getName();
                    }
                }
                if (this.f559d != null) {
                    C26363d m43044c2 = m43044c(this.f557b, childAt2);
                    if (m43044c2 != null) {
                        C26389d c26389d2 = this.f559d;
                        C26313p c26313p2 = c26310m.f73432e;
                        c26313p2.f73461c = 1.0f;
                        c26313p2.f73462d = 1.0f;
                        c26310m.m2201c(c26313p2);
                        c26310m.f73432e.m2190e(m43044c2.m2061x(), m43044c2.m2060y(), m43044c2.m2062w(), m43044c2.m2068q());
                        c26310m.f73432e.m2193a(c26389d2.m1961j(c26310m.f73429b));
                        c26310m.f73434g.m2204d(m43044c2, c26389d2, c26310m.f73429b);
                    } else if (this.f562g.S != 0) {
                        MediaSessionCompat.m43222l0();
                        MediaSessionCompat.m43216n0(childAt2);
                        childAt2.getClass().getName();
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public void m43045b(e eVar, e eVar2) {
        ArrayList<C26363d> arrayList = eVar.f73777H0;
        HashMap<C26363d, C26363d> hashMap = new HashMap<>();
        hashMap.put(eVar, eVar2);
        eVar2.f73777H0.clear();
        eVar2.mo2040k(eVar, hashMap);
        Iterator<C26363d> it = arrayList.iterator();
        while (it.hasNext()) {
            C26363d next = it.next();
            C26365g aVar = next instanceof a ? new a() : next instanceof C26365g ? new C26365g() : next instanceof f ? new f() : next instanceof AbstractC26366h ? new C26367i() : new C26363d();
            eVar2.f73777H0.add(aVar);
            C26363d c26363d = aVar.f73684R;
            if (c26363d != null) {
                ((C26369l) c26363d).f73777H0.remove(aVar);
                aVar.mo2037G();
            }
            aVar.f73684R = eVar2;
            hashMap.put(next, aVar);
        }
        Iterator<C26363d> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            C26363d next2 = it2.next();
            hashMap.get(next2).mo2040k(next2, hashMap);
        }
    }

    /* renamed from: c */
    public C26363d m43044c(e eVar, View view) {
        if (eVar.f73708h0 == view) {
            return eVar;
        }
        ArrayList<C26363d> arrayList = eVar.f73777H0;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C26363d c26363d = arrayList.get(i);
            if (c26363d.f73708h0 == view) {
                return c26363d;
            }
        }
        return null;
    }

    /* renamed from: d */
    public void m43043d(C26389d c26389d, C26389d c26389d2) {
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.WRAP_CONTENT;
        this.f558c = c26389d;
        this.f559d = c26389d2;
        this.f556a = new e();
        this.f557b = new e();
        e eVar = this.f556a;
        MotionLayout motionLayout = this.f562g;
        boolean z = MotionLayout.O0;
        eVar.f0(motionLayout.f580c.K0);
        this.f557b.f0(this.f562g.f580c.K0);
        this.f556a.f73777H0.clear();
        this.f557b.f73777H0.clear();
        m43045b(this.f562g.f580c, this.f556a);
        m43045b(this.f562g.f580c, this.f557b);
        if (this.f562g.K > 0.5d) {
            if (c26389d != null) {
                m43041f(this.f556a, c26389d);
            }
            m43041f(this.f557b, c26389d2);
        } else {
            m43041f(this.f557b, c26389d2);
            if (c26389d != null) {
                m43041f(this.f556a, c26389d);
            }
        }
        this.f556a.L0 = this.f562g.m43032T0();
        e eVar2 = this.f556a;
        eVar2.I0.m2032c(eVar2);
        this.f557b.L0 = this.f562g.m43032T0();
        e eVar3 = this.f557b;
        eVar3.I0.m2032c(eVar3);
        ViewGroup.LayoutParams layoutParams = this.f562g.getLayoutParams();
        if (layoutParams != null) {
            if (layoutParams.width == -2) {
                this.f556a.f73683Q[0] = enumC26364a;
                this.f557b.f73683Q[0] = enumC26364a;
            }
            if (layoutParams.height != -2) {
                return;
            }
            this.f556a.f73683Q[1] = enumC26364a;
            this.f557b.f73683Q[1] = enumC26364a;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x01ba, code lost:
        if (r0 == 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01e9, code lost:
        if (r0 == 0) goto L46;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m43042e() {
        /*
            Method dump skipped, instructions count: 1282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout$d.m43042e():void");
    }

    /* renamed from: f */
    public final void m43041f(e eVar, C26389d c26389d) {
        SparseArray<C26363d> sparseArray = new SparseArray<>();
        C26395e.C26396a c26396a = new C26395e.C26396a(-2, -2);
        sparseArray.clear();
        sparseArray.put(0, eVar);
        sparseArray.put(this.f562g.getId(), eVar);
        Iterator<C26363d> it = eVar.f73777H0.iterator();
        while (it.hasNext()) {
            C26363d next = it.next();
            sparseArray.put(((View) next.f73708h0).getId(), next);
        }
        Iterator<C26363d> it2 = eVar.f73777H0.iterator();
        while (it2.hasNext()) {
            C26363d next2 = it2.next();
            View view = (View) next2.f73708h0;
            int id = view.getId();
            if (c26389d.f73887c.containsKey(Integer.valueOf(id))) {
                c26389d.f73887c.get(Integer.valueOf(id)).m1956a(c26396a);
            }
            next2.m2079S(c26389d.m1961j(view.getId()).f73891d.f73925c);
            next2.m2084N(c26389d.m1961j(view.getId()).f73891d.f73927d);
            if (view instanceof AbstractC26385b) {
                AbstractC26385b abstractC26385b = (AbstractC26385b) view;
                int id2 = abstractC26385b.getId();
                if (c26389d.f73887c.containsKey(Integer.valueOf(id2))) {
                    C26389d.C26390a c26390a = c26389d.f73887c.get(Integer.valueOf(id2));
                    if (next2 instanceof C26367i) {
                        abstractC26385b.mo1982m(c26390a, (C26367i) next2, c26396a, sparseArray);
                    }
                }
                if (view instanceof Barrier) {
                    ((Barrier) view).m1975t();
                }
            }
            c26396a.resolveLayoutDirection(this.f562g.getLayoutDirection());
            MotionLayout motionLayout = this.f562g;
            boolean z = MotionLayout.O0;
            motionLayout.m43038N0(false, view, next2, c26396a, sparseArray);
            if (c26389d.m1961j(view.getId()).f73889b.f73967c == 1) {
                next2.f73712j0 = view.getVisibility();
            } else {
                next2.f73712j0 = c26389d.m1961j(view.getId()).f73889b.f73966b;
            }
        }
        Iterator<C26363d> it3 = eVar.f73777H0.iterator();
        while (it3.hasNext()) {
            k kVar = (C26363d) it3.next();
            if (kVar instanceof k) {
                AbstractC26385b abstractC26385b2 = (AbstractC26385b) kVar.f73708h0;
                k kVar2 = (AbstractC26366h) kVar;
                abstractC26385b2.m1976s(kVar2, sparseArray);
                kVar2.W();
            }
        }
    }
}
