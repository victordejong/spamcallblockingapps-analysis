package androidx.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.g;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet.class */
public class TransitionSet extends Transition {
    int k;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<Transition> f5741a = new ArrayList<>();
    private boolean m = true;
    boolean l = false;
    private int n = 0;

    /* loaded from: classes-dex2jar.jar:androidx/transition/TransitionSet$a.class */
    static final class a extends t {

        /* renamed from: a  reason: collision with root package name */
        TransitionSet f5744a;

        a(TransitionSet transitionSet) {
            this.f5744a = transitionSet;
        }

        @Override // androidx.transition.t, androidx.transition.Transition.c
        public final void a(Transition transition) {
            this.f5744a.k--;
            if (this.f5744a.k == 0) {
                this.f5744a.l = false;
                this.f5744a.f();
            }
            transition.b(this);
        }

        @Override // androidx.transition.t, androidx.transition.Transition.c
        public final void b(Transition transition) {
            if (!this.f5744a.l) {
                this.f5744a.e();
                this.f5744a.l = true;
            }
        }
    }

    public TransitionSet() {
    }

    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.i);
        a(g.a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    private void b(Transition transition) {
        this.f5741a.add(transition);
        transition.g = this;
    }

    @Override // androidx.transition.Transition
    public final /* bridge */ /* synthetic */ Transition a(Transition.c cVar) {
        return (TransitionSet) super.a(cVar);
    }

    public final TransitionSet a(int i) {
        if (i == 0) {
            this.m = true;
        } else if (i == 1) {
            this.m = false;
        } else {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: ".concat(String.valueOf(i)));
        }
        return this;
    }

    public final TransitionSet a(Transition transition) {
        b(transition);
        if (this.f5731b >= 0) {
            transition.a(this.f5731b);
        }
        if ((this.n & 1) != 0) {
            transition.a(c());
        }
        if ((this.n & 2) != 0) {
            transition.a(this.j);
        }
        if ((this.n & 4) != 0) {
            transition.a(h());
        }
        if ((this.n & 8) != 0) {
            transition.a(i());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public final String a(String str) {
        String a2 = super.a(str);
        for (int i = 0; i < this.f5741a.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(a2);
            sb.append(StringUtils.LF);
            Transition transition = this.f5741a.get(i);
            sb.append(transition.a(str + "  "));
            a2 = sb.toString();
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    public final void a(ViewGroup viewGroup, y yVar, y yVar2, ArrayList<x> arrayList, ArrayList<x> arrayList2) {
        long b2 = b();
        int size = this.f5741a.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.f5741a.get(i);
            if (b2 > 0 && (this.m || i == 0)) {
                long b3 = transition.b();
                if (b3 > 0) {
                    transition.b(b3 + b2);
                } else {
                    transition.b(b2);
                }
            }
            transition.a(viewGroup, yVar, yVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    public final void a(PathMotion pathMotion) {
        super.a(pathMotion);
        this.n |= 4;
        if (this.f5741a != null) {
            for (int i = 0; i < this.f5741a.size(); i++) {
                this.f5741a.get(i).a(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void a(Transition.b bVar) {
        super.a(bVar);
        this.n |= 8;
        int size = this.f5741a.size();
        for (int i = 0; i < size; i++) {
            this.f5741a.get(i).a(bVar);
        }
    }

    @Override // androidx.transition.Transition
    public final void a(v vVar) {
        super.a(vVar);
        this.n |= 2;
        int size = this.f5741a.size();
        for (int i = 0; i < size; i++) {
            this.f5741a.get(i).a(vVar);
        }
    }

    @Override // androidx.transition.Transition
    public final void a(x xVar) {
        if (b(xVar.f5853b)) {
            Iterator<Transition> it2 = this.f5741a.iterator();
            while (it2.hasNext()) {
                Transition next = it2.next();
                if (next.b(xVar.f5853b)) {
                    next.a(xVar);
                    xVar.f5854c.add(next);
                }
            }
        }
    }

    public final Transition b(int i) {
        if (i < 0 || i >= this.f5741a.size()) {
            return null;
        }
        return this.f5741a.get(i);
    }

    @Override // androidx.transition.Transition
    public final /* bridge */ /* synthetic */ Transition b(long j) {
        return (TransitionSet) super.b(j);
    }

    @Override // androidx.transition.Transition
    public final /* bridge */ /* synthetic */ Transition b(Transition.c cVar) {
        return (TransitionSet) super.b(cVar);
    }

    /* renamed from: b */
    public final TransitionSet a(TimeInterpolator timeInterpolator) {
        this.n |= 1;
        ArrayList<Transition> arrayList = this.f5741a;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f5741a.get(i).a(timeInterpolator);
            }
        }
        return (TransitionSet) super.a(timeInterpolator);
    }

    @Override // androidx.transition.Transition
    public final void b(x xVar) {
        if (b(xVar.f5853b)) {
            Iterator<Transition> it2 = this.f5741a.iterator();
            while (it2.hasNext()) {
                Transition next = it2.next();
                if (next.b(xVar.f5853b)) {
                    next.b(xVar);
                    xVar.f5854c.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public final /* synthetic */ Transition c(View view) {
        for (int i = 0; i < this.f5741a.size(); i++) {
            this.f5741a.get(i).c(view);
        }
        return (TransitionSet) super.c(view);
    }

    /* renamed from: c */
    public final TransitionSet a(long j) {
        ArrayList<Transition> arrayList;
        super.a(j);
        if (this.f5731b >= 0 && (arrayList = this.f5741a) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f5741a.get(i).a(j);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public final void c(x xVar) {
        super.c(xVar);
        int size = this.f5741a.size();
        for (int i = 0; i < size; i++) {
            this.f5741a.get(i).c(xVar);
        }
    }

    @Override // androidx.transition.Transition
    public final /* synthetic */ Transition d(View view) {
        for (int i = 0; i < this.f5741a.size(); i++) {
            this.f5741a.get(i).d(view);
        }
        return (TransitionSet) super.d(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    public final void d() {
        if (this.f5741a.isEmpty()) {
            e();
            f();
            return;
        }
        a aVar = new a(this);
        Iterator<Transition> it2 = this.f5741a.iterator();
        while (it2.hasNext()) {
            it2.next().a(aVar);
        }
        this.k = this.f5741a.size();
        if (!this.m) {
            for (int i = 1; i < this.f5741a.size(); i++) {
                final Transition transition = this.f5741a.get(i);
                this.f5741a.get(i - 1).a(new t() { // from class: androidx.transition.TransitionSet.1
                    @Override // androidx.transition.t, androidx.transition.Transition.c
                    public final void a(Transition transition2) {
                        transition.d();
                        transition2.b(this);
                    }
                });
            }
            Transition transition2 = this.f5741a.get(0);
            if (transition2 != null) {
                transition2.d();
                return;
            }
            return;
        }
        Iterator<Transition> it3 = this.f5741a.iterator();
        while (it3.hasNext()) {
            it3.next().d();
        }
    }

    @Override // androidx.transition.Transition
    public final void e(View view) {
        super.e(view);
        int size = this.f5741a.size();
        for (int i = 0; i < size; i++) {
            this.f5741a.get(i).e(view);
        }
    }

    @Override // androidx.transition.Transition
    public final void f(View view) {
        super.f(view);
        int size = this.f5741a.size();
        for (int i = 0; i < size; i++) {
            this.f5741a.get(i).f(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    public final void g() {
        super.g();
        int size = this.f5741a.size();
        for (int i = 0; i < size; i++) {
            this.f5741a.get(i).g();
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: k */
    public final Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.f5741a = new ArrayList<>();
        int size = this.f5741a.size();
        for (int i = 0; i < size; i++) {
            transitionSet.b(this.f5741a.get(i).clone());
        }
        return transitionSet;
    }
}
