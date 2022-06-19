package androidx.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.C0810g;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet.class */
public class TransitionSet extends Transition {

    /* renamed from: k */
    int f10790k;

    /* renamed from: a */
    ArrayList<Transition> f10789a = new ArrayList<>();

    /* renamed from: m */
    private boolean f10792m = true;

    /* renamed from: l */
    boolean f10791l = false;

    /* renamed from: n */
    private int f10793n = 0;

    /* renamed from: androidx.transition.TransitionSet$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet$a.class */
    static final class C2851a extends C2907t {

        /* renamed from: a */
        TransitionSet f10796a;

        C2851a(TransitionSet transitionSet) {
            this.f10796a = transitionSet;
        }

        @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
        /* renamed from: a */
        public final void mo39671a(Transition transition) {
            this.f10796a.f10790k--;
            if (this.f10796a.f10790k == 0) {
                this.f10796a.f10791l = false;
                this.f10796a.m39798f();
            }
            transition.mo39779b(this);
        }

        @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
        /* renamed from: b */
        public final void mo39669b(Transition transition) {
            if (!this.f10796a.f10791l) {
                this.f10796a.m39799e();
                this.f10796a.f10791l = true;
            }
        }
    }

    public TransitionSet() {
    }

    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10915i);
        m39792a(C0810g.m44454a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    private void m39778b(Transition transition) {
        this.f10789a.add(transition);
        transition.f10762g = this;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Transition mo39786a(Transition.AbstractC2849c abstractC2849c) {
        return (TransitionSet) super.mo39786a(abstractC2849c);
    }

    /* renamed from: a */
    public final TransitionSet m39792a(int i) {
        if (i == 0) {
            this.f10792m = true;
        } else if (i != 1) {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: ".concat(String.valueOf(i)));
        } else {
            this.f10792m = false;
        }
        return this;
    }

    /* renamed from: a */
    public final TransitionSet m39785a(Transition transition) {
        m39778b(transition);
        if (this.f10757b >= 0) {
            transition.mo39791a(this.f10757b);
        }
        if ((this.f10793n & 1) != 0) {
            transition.mo39790a(m39801c());
        }
        if ((this.f10793n & 2) != 0) {
            transition.mo39784a(this.f10765j);
        }
        if ((this.f10793n & 4) != 0) {
            transition.mo39788a(m39797h());
        }
        if ((this.f10793n & 8) != 0) {
            transition.mo39787a(m39796i());
        }
        return this;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String mo39783a(String str) {
        String mo39783a = super.mo39783a(str);
        for (int i = 0; i < this.f10789a.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(mo39783a);
            sb.append(StringUtils.f67179LF);
            sb.append(this.f10789a.get(i).mo39783a(str + "  "));
            mo39783a = sb.toString();
        }
        return mo39783a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo39789a(ViewGroup viewGroup, C2915y c2915y, C2915y c2915y2, ArrayList<C2914x> arrayList, ArrayList<C2914x> arrayList2) {
        long b = m39805b();
        int size = this.f10789a.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.f10789a.get(i);
            if (b > 0 && (this.f10792m || i == 0)) {
                long m39805b = transition.m39805b();
                if (m39805b > 0) {
                    transition.mo39781b(m39805b + b);
                } else {
                    transition.mo39781b(b);
                }
            }
            transition.mo39789a(viewGroup, c2915y, c2915y2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo39788a(PathMotion pathMotion) {
        super.mo39788a(pathMotion);
        this.f10793n |= 4;
        if (this.f10789a != null) {
            for (int i = 0; i < this.f10789a.size(); i++) {
                this.f10789a.get(i).mo39788a(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo39787a(Transition.AbstractC2848b abstractC2848b) {
        super.mo39787a(abstractC2848b);
        this.f10793n |= 8;
        int size = this.f10789a.size();
        for (int i = 0; i < size; i++) {
            this.f10789a.get(i).mo39787a(abstractC2848b);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo39784a(AbstractC2911v abstractC2911v) {
        super.mo39784a(abstractC2911v);
        this.f10793n |= 2;
        int size = this.f10789a.size();
        for (int i = 0; i < size; i++) {
            this.f10789a.get(i).mo39784a(abstractC2911v);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        if (m39804b(c2914x.f10934b)) {
            Iterator<Transition> it2 = this.f10789a.iterator();
            while (it2.hasNext()) {
                Transition next = it2.next();
                if (next.m39804b(c2914x.f10934b)) {
                    next.mo10513a(c2914x);
                    c2914x.f10935c.add(next);
                }
            }
        }
    }

    /* renamed from: b */
    public final Transition m39782b(int i) {
        if (i < 0 || i >= this.f10789a.size()) {
            return null;
        }
        return this.f10789a.get(i);
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Transition mo39781b(long j) {
        return (TransitionSet) super.mo39781b(j);
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Transition mo39779b(Transition.AbstractC2849c abstractC2849c) {
        return (TransitionSet) super.mo39779b(abstractC2849c);
    }

    /* renamed from: b */
    public final TransitionSet mo39790a(TimeInterpolator timeInterpolator) {
        this.f10793n |= 1;
        ArrayList<Transition> arrayList = this.f10789a;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f10789a.get(i).mo39790a(timeInterpolator);
            }
        }
        return (TransitionSet) super.mo39790a(timeInterpolator);
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        if (m39804b(c2914x.f10934b)) {
            Iterator<Transition> it2 = this.f10789a.iterator();
            while (it2.hasNext()) {
                Transition next = it2.next();
                if (next.m39804b(c2914x.f10934b)) {
                    next.mo10512b(c2914x);
                    c2914x.f10935c.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: c */
    public final /* synthetic */ Transition mo39776c(View view) {
        for (int i = 0; i < this.f10789a.size(); i++) {
            this.f10789a.get(i).mo39776c(view);
        }
        return (TransitionSet) super.mo39776c(view);
    }

    /* renamed from: c */
    public final TransitionSet mo39791a(long j) {
        ArrayList<Transition> arrayList;
        super.mo39791a(j);
        if (this.f10757b >= 0 && (arrayList = this.f10789a) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f10789a.get(i).mo39791a(j);
            }
        }
        return this;
    }

    @Override // androidx.transition.Transition
    /* renamed from: c */
    public final void mo39775c(C2914x c2914x) {
        super.mo39775c(c2914x);
        int size = this.f10789a.size();
        for (int i = 0; i < size; i++) {
            this.f10789a.get(i).mo39775c(c2914x);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: d */
    public final /* synthetic */ Transition mo39773d(View view) {
        for (int i = 0; i < this.f10789a.size(); i++) {
            this.f10789a.get(i).mo39773d(view);
        }
        return (TransitionSet) super.mo39773d(view);
    }

    @Override // androidx.transition.Transition
    /* renamed from: d */
    public final void mo39774d() {
        if (this.f10789a.isEmpty()) {
            m39799e();
            m39798f();
            return;
        }
        C2851a c2851a = new C2851a(this);
        Iterator<Transition> it2 = this.f10789a.iterator();
        while (it2.hasNext()) {
            it2.next().mo39786a(c2851a);
        }
        this.f10790k = this.f10789a.size();
        if (this.f10792m) {
            Iterator<Transition> it3 = this.f10789a.iterator();
            while (it3.hasNext()) {
                it3.next().mo39774d();
            }
            return;
        }
        for (int i = 1; i < this.f10789a.size(); i++) {
            final Transition transition = this.f10789a.get(i);
            this.f10789a.get(i - 1).mo39786a(new C2907t() { // from class: androidx.transition.TransitionSet.1
                @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
                /* renamed from: a */
                public final void mo39671a(Transition transition2) {
                    transition.mo39774d();
                    transition2.mo39779b(this);
                }
            });
        }
        Transition transition2 = this.f10789a.get(0);
        if (transition2 == null) {
            return;
        }
        transition2.mo39774d();
    }

    @Override // androidx.transition.Transition
    /* renamed from: e */
    public final void mo39772e(View view) {
        super.mo39772e(view);
        int size = this.f10789a.size();
        for (int i = 0; i < size; i++) {
            this.f10789a.get(i).mo39772e(view);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: f */
    public final void mo39771f(View view) {
        super.mo39771f(view);
        int size = this.f10789a.size();
        for (int i = 0; i < size; i++) {
            this.f10789a.get(i).mo39771f(view);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: g */
    public final void mo39770g() {
        super.mo39770g();
        int size = this.f10789a.size();
        for (int i = 0; i < size; i++) {
            this.f10789a.get(i).mo39770g();
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: k */
    public final Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.f10789a = new ArrayList<>();
        int size = this.f10789a.size();
        for (int i = 0; i < size; i++) {
            transitionSet.m39778b(this.f10789a.get(i).clone());
        }
        return transitionSet;
    }
}
