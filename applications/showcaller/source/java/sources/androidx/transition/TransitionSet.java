package androidx.transition;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p007d.C0614g;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet.class */
public class TransitionSet extends Transition {

    /* renamed from: P */
    int f4854P;

    /* renamed from: N */
    private ArrayList<Transition> f4852N = new ArrayList<>();

    /* renamed from: O */
    private boolean f4853O = true;

    /* renamed from: Q */
    boolean f4855Q = false;

    /* renamed from: R */
    private int f4856R = 0;

    /* renamed from: androidx.transition.TransitionSet$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet$a.class */
    class C1111a extends C1168u {

        /* renamed from: a */
        final /* synthetic */ Transition f4857a;

        C1111a(Transition transition) {
            TransitionSet.this = r4;
            this.f4857a = transition;
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            this.f4857a.mo30977c0();
            transition.mo30982Y(this);
        }
    }

    /* renamed from: androidx.transition.TransitionSet$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet$b.class */
    public static class C1112b extends C1168u {

        /* renamed from: a */
        TransitionSet f4859a;

        C1112b(TransitionSet transitionSet) {
            this.f4859a = transitionSet;
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: a */
        public void mo30830a(Transition transition) {
            TransitionSet transitionSet = this.f4859a;
            if (!transitionSet.f4855Q) {
                transitionSet.m30993k0();
                this.f4859a.f4855Q = true;
            }
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            TransitionSet transitionSet = this.f4859a;
            int i = transitionSet.f4854P - 1;
            transitionSet.f4854P = i;
            if (i == 0) {
                transitionSet.f4855Q = false;
                transitionSet.m30990s();
            }
            transition.mo30982Y(this);
        }
    }

    public TransitionSet() {
    }

    @SuppressLint({"RestrictedApi"})
    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4979i);
        m30956w0(C0614g.m33253g(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: p0 */
    private void m30964p0(Transition transition) {
        this.f4852N.add(transition);
        transition.f4841x = this;
    }

    /* renamed from: y0 */
    private void m30954y0() {
        C1112b c1112b = new C1112b(this);
        Iterator<Transition> it = this.f4852N.iterator();
        while (it.hasNext()) {
            it.next().mo30980a(c1112b);
        }
        this.f4854P = this.f4852N.size();
    }

    @Override // androidx.transition.Transition
    /* renamed from: W */
    public void mo30983W(View view) {
        super.mo30983W(view);
        int size = this.f4852N.size();
        for (int i = 0; i < size; i++) {
            this.f4852N.get(i).mo30983W(view);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a0 */
    public void mo30979a0(View view) {
        super.mo30979a0(view);
        int size = this.f4852N.size();
        for (int i = 0; i < size; i++) {
            this.f4852N.get(i).mo30979a0(view);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: c0 */
    public void mo30977c0() {
        if (this.f4852N.isEmpty()) {
            m30993k0();
            m30990s();
            return;
        }
        m30954y0();
        if (this.f4853O) {
            Iterator<Transition> it = this.f4852N.iterator();
            while (it.hasNext()) {
                it.next().mo30977c0();
            }
            return;
        }
        for (int i = 1; i < this.f4852N.size(); i++) {
            this.f4852N.get(i - 1).mo30980a(new C1111a(this.f4852N.get(i)));
        }
        Transition transition = this.f4852N.get(0);
        if (transition == null) {
            return;
        }
        transition.mo30977c0();
    }

    @Override // androidx.transition.Transition
    /* renamed from: e0 */
    public void mo30975e0(Transition.AbstractC1109e abstractC1109e) {
        super.mo30975e0(abstractC1109e);
        this.f4856R |= 8;
        int size = this.f4852N.size();
        for (int i = 0; i < size; i++) {
            this.f4852N.get(i).mo30975e0(abstractC1109e);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: h0 */
    public void mo30973h0(PathMotion pathMotion) {
        super.mo30973h0(pathMotion);
        this.f4856R |= 4;
        if (this.f4852N != null) {
            for (int i = 0; i < this.f4852N.size(); i++) {
                this.f4852N.get(i).mo30973h0(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        if (m31009N(c1175y.f4996b)) {
            Iterator<Transition> it = this.f4852N.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.m31009N(c1175y.f4996b)) {
                    next.mo4473i(c1175y);
                    c1175y.f4997c.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: i0 */
    public void mo30972i0(AbstractC1172w abstractC1172w) {
        super.mo30972i0(abstractC1172w);
        this.f4856R |= 2;
        int size = this.f4852N.size();
        for (int i = 0; i < size; i++) {
            this.f4852N.get(i).mo30972i0(abstractC1172w);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: l */
    public void mo30970l(C1175y c1175y) {
        super.mo30970l(c1175y);
        int size = this.f4852N.size();
        for (int i = 0; i < size; i++) {
            this.f4852N.get(i).mo30970l(c1175y);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: l0 */
    public String mo30969l0(String str) {
        String mo30969l0 = super.mo30969l0(str);
        for (int i = 0; i < this.f4852N.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(mo30969l0);
            sb.append("\n");
            sb.append(this.f4852N.get(i).mo30969l0(str + "  "));
            mo30969l0 = sb.toString();
        }
        return mo30969l0;
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        if (m31009N(c1175y.f4996b)) {
            Iterator<Transition> it = this.f4852N.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.m31009N(c1175y.f4996b)) {
                    next.mo4472m(c1175y);
                    c1175y.f4997c.add(next);
                }
            }
        }
    }

    /* renamed from: m0 */
    public TransitionSet mo30980a(Transition.AbstractC1110f abstractC1110f) {
        return (TransitionSet) super.mo30980a(abstractC1110f);
    }

    /* renamed from: n0 */
    public TransitionSet mo30978b(View view) {
        for (int i = 0; i < this.f4852N.size(); i++) {
            this.f4852N.get(i).mo30978b(view);
        }
        return (TransitionSet) super.mo30978b(view);
    }

    /* renamed from: o0 */
    public TransitionSet m30966o0(Transition transition) {
        m30964p0(transition);
        long j = this.f4826i;
        if (j >= 0) {
            transition.mo30976d0(j);
        }
        if ((this.f4856R & 1) != 0) {
            transition.mo30974f0(m30986x());
        }
        if ((this.f4856R & 2) != 0) {
            transition.mo30972i0(m31018C());
        }
        if ((this.f4856R & 4) != 0) {
            transition.mo30973h0(m31019B());
        }
        if ((this.f4856R & 8) != 0) {
            transition.mo30975e0(m30987w());
        }
        return this;
    }

    @Override // androidx.transition.Transition
    /* renamed from: p */
    public Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.f4852N = new ArrayList<>();
        int size = this.f4852N.size();
        for (int i = 0; i < size; i++) {
            transitionSet.m30964p0(this.f4852N.get(i).clone());
        }
        return transitionSet;
    }

    /* renamed from: q0 */
    public Transition m30963q0(int i) {
        if (i < 0 || i >= this.f4852N.size()) {
            return null;
        }
        return this.f4852N.get(i);
    }

    @Override // androidx.transition.Transition
    /* renamed from: r */
    public void mo30962r(ViewGroup viewGroup, C1176z c1176z, C1176z c1176z2, ArrayList<C1175y> arrayList, ArrayList<C1175y> arrayList2) {
        long m31016E = m31016E();
        int size = this.f4852N.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.f4852N.get(i);
            if (m31016E > 0 && (this.f4853O || i == 0)) {
                long m31016E2 = transition.m31016E();
                if (m31016E2 > 0) {
                    transition.mo30971j0(m31016E2 + m31016E);
                } else {
                    transition.mo30971j0(m31016E);
                }
            }
            transition.mo30962r(viewGroup, c1176z, c1176z2, arrayList, arrayList2);
        }
    }

    /* renamed from: r0 */
    public int m30961r0() {
        return this.f4852N.size();
    }

    /* renamed from: s0 */
    public TransitionSet mo30982Y(Transition.AbstractC1110f abstractC1110f) {
        return (TransitionSet) super.mo30982Y(abstractC1110f);
    }

    /* renamed from: t0 */
    public TransitionSet mo30981Z(View view) {
        for (int i = 0; i < this.f4852N.size(); i++) {
            this.f4852N.get(i).mo30981Z(view);
        }
        return (TransitionSet) super.mo30981Z(view);
    }

    /* renamed from: u0 */
    public TransitionSet mo30976d0(long j) {
        ArrayList<Transition> arrayList;
        super.mo30976d0(j);
        if (this.f4826i >= 0 && (arrayList = this.f4852N) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f4852N.get(i).mo30976d0(j);
            }
        }
        return this;
    }

    /* renamed from: v0 */
    public TransitionSet mo30974f0(TimeInterpolator timeInterpolator) {
        this.f4856R |= 1;
        ArrayList<Transition> arrayList = this.f4852N;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f4852N.get(i).mo30974f0(timeInterpolator);
            }
        }
        return (TransitionSet) super.mo30974f0(timeInterpolator);
    }

    /* renamed from: w0 */
    public TransitionSet m30956w0(int i) {
        if (i == 0) {
            this.f4853O = true;
        } else if (i != 1) {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        } else {
            this.f4853O = false;
        }
        return this;
    }

    /* renamed from: x0 */
    public TransitionSet mo30971j0(long j) {
        return (TransitionSet) super.mo30971j0(j);
    }
}
