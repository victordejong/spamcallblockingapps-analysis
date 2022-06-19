package androidx.p045j;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.p045j.AbstractC0838n;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.j.r */
/* loaded from: classes-dex2jar.jar:androidx/j/r.class */
public class C0851r extends AbstractC0838n {

    /* renamed from: a */
    int f2686a;

    /* renamed from: c */
    private ArrayList<AbstractC0838n> f2688c = new ArrayList<>();

    /* renamed from: d */
    private boolean f2689d = true;

    /* renamed from: b */
    boolean f2687b = false;

    /* renamed from: e */
    private int f2690e = 0;

    /* renamed from: androidx.j.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/r$a.class */
    public static class C0853a extends C0846o {

        /* renamed from: a */
        C0851r f2693a;

        C0853a(C0851r c0851r) {
            this.f2693a = c0851r;
        }

        @Override // androidx.p045j.C0846o, androidx.p045j.AbstractC0838n.AbstractC0845d
        /* renamed from: b */
        public void mo5224b(AbstractC0838n abstractC0838n) {
            this.f2693a.f2686a--;
            if (this.f2693a.f2686a == 0) {
                C0851r c0851r = this.f2693a;
                c0851r.f2687b = false;
                c0851r.end();
            }
            abstractC0838n.removeListener(this);
        }

        @Override // androidx.p045j.C0846o, androidx.p045j.AbstractC0838n.AbstractC0845d
        /* renamed from: e */
        public void mo5223e(AbstractC0838n abstractC0838n) {
            if (!this.f2693a.f2687b) {
                this.f2693a.start();
                this.f2693a.f2687b = true;
            }
        }
    }

    /* renamed from: b */
    private void m5233b() {
        C0853a c0853a = new C0853a(this);
        Iterator<AbstractC0838n> it = this.f2688c.iterator();
        while (it.hasNext()) {
            it.next().addListener(c0853a);
        }
        this.f2686a = this.f2688c.size();
    }

    /* renamed from: a */
    public int m5243a() {
        return this.f2688c.size();
    }

    /* renamed from: a */
    public C0851r m5242a(int i) {
        if (i == 0) {
            this.f2689d = true;
        } else if (i != 1) {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        } else {
            this.f2689d = false;
        }
        return this;
    }

    /* renamed from: a */
    public C0851r setDuration(long j) {
        super.setDuration(j);
        if (this.mDuration >= 0) {
            int size = this.f2688c.size();
            for (int i = 0; i < size; i++) {
                this.f2688c.get(i).setDuration(j);
            }
        }
        return this;
    }

    /* renamed from: a */
    public C0851r setInterpolator(TimeInterpolator timeInterpolator) {
        this.f2690e |= 1;
        ArrayList<AbstractC0838n> arrayList = this.f2688c;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f2688c.get(i).setInterpolator(timeInterpolator);
            }
        }
        return (C0851r) super.setInterpolator(timeInterpolator);
    }

    /* renamed from: a */
    public C0851r addTarget(View view) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).addTarget(view);
        }
        return (C0851r) super.addTarget(view);
    }

    /* renamed from: a */
    public C0851r setSceneRoot(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).setSceneRoot(viewGroup);
        }
        return this;
    }

    /* renamed from: a */
    public C0851r addListener(AbstractC0838n.AbstractC0845d abstractC0845d) {
        return (C0851r) super.addListener(abstractC0845d);
    }

    /* renamed from: a */
    public C0851r m5236a(AbstractC0838n abstractC0838n) {
        this.f2688c.add(abstractC0838n);
        abstractC0838n.mParent = this;
        if (this.mDuration >= 0) {
            abstractC0838n.setDuration(this.mDuration);
        }
        if ((this.f2690e & 1) != 0) {
            abstractC0838n.setInterpolator(getInterpolator());
        }
        if ((this.f2690e & 2) != 0) {
            abstractC0838n.setPropagation(getPropagation());
        }
        if ((this.f2690e & 4) != 0) {
            abstractC0838n.setPathMotion(getPathMotion());
        }
        if ((this.f2690e & 8) != 0) {
            abstractC0838n.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    /* renamed from: a */
    public C0851r addTarget(Class cls) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).addTarget(cls);
        }
        return (C0851r) super.addTarget(cls);
    }

    /* renamed from: a */
    public C0851r addTarget(String str) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).addTarget(str);
        }
        return (C0851r) super.addTarget(str);
    }

    /* renamed from: b */
    public AbstractC0838n m5232b(int i) {
        if (i < 0 || i >= this.f2688c.size()) {
            return null;
        }
        return this.f2688c.get(i);
    }

    /* renamed from: b */
    public C0851r setStartDelay(long j) {
        return (C0851r) super.setStartDelay(j);
    }

    /* renamed from: b */
    public C0851r removeTarget(View view) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).removeTarget(view);
        }
        return (C0851r) super.removeTarget(view);
    }

    /* renamed from: b */
    public C0851r removeListener(AbstractC0838n.AbstractC0845d abstractC0845d) {
        return (C0851r) super.removeListener(abstractC0845d);
    }

    /* renamed from: b */
    public C0851r removeTarget(Class cls) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).removeTarget(cls);
        }
        return (C0851r) super.removeTarget(cls);
    }

    /* renamed from: b */
    public C0851r removeTarget(String str) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).removeTarget(str);
        }
        return (C0851r) super.removeTarget(str);
    }

    /* renamed from: c */
    public C0851r addTarget(int i) {
        for (int i2 = 0; i2 < this.f2688c.size(); i2++) {
            this.f2688c.get(i2).addTarget(i);
        }
        return (C0851r) super.addTarget(i);
    }

    @Override // androidx.p045j.AbstractC0838n
    public void cancel() {
        super.cancel();
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).cancel();
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void captureEndValues(C0855t c0855t) {
        if (isValidTarget(c0855t.f2698b)) {
            Iterator<AbstractC0838n> it = this.f2688c.iterator();
            while (it.hasNext()) {
                AbstractC0838n next = it.next();
                if (next.isValidTarget(c0855t.f2698b)) {
                    next.captureEndValues(c0855t);
                    c0855t.f2699c.add(next);
                }
            }
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void capturePropagationValues(C0855t c0855t) {
        super.capturePropagationValues(c0855t);
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).capturePropagationValues(c0855t);
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void captureStartValues(C0855t c0855t) {
        if (isValidTarget(c0855t.f2698b)) {
            Iterator<AbstractC0838n> it = this.f2688c.iterator();
            while (it.hasNext()) {
                AbstractC0838n next = it.next();
                if (next.isValidTarget(c0855t.f2698b)) {
                    next.captureStartValues(c0855t);
                    c0855t.f2699c.add(next);
                }
            }
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public AbstractC0838n clone() {
        C0851r c0851r = (C0851r) super.clone();
        c0851r.f2688c = new ArrayList<>();
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            c0851r.m5236a(this.f2688c.get(i).clone());
        }
        return c0851r;
    }

    @Override // androidx.p045j.AbstractC0838n
    public void createAnimators(ViewGroup viewGroup, C0856u c0856u, C0856u c0856u2, ArrayList<C0855t> arrayList, ArrayList<C0855t> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            AbstractC0838n abstractC0838n = this.f2688c.get(i);
            if (startDelay > 0 && (this.f2689d || i == 0)) {
                long startDelay2 = abstractC0838n.getStartDelay();
                if (startDelay2 > 0) {
                    abstractC0838n.setStartDelay(startDelay2 + startDelay);
                } else {
                    abstractC0838n.setStartDelay(startDelay);
                }
            }
            abstractC0838n.createAnimators(viewGroup, c0856u, c0856u2, arrayList, arrayList2);
        }
    }

    /* renamed from: d */
    public C0851r removeTarget(int i) {
        for (int i2 = 0; i2 < this.f2688c.size(); i2++) {
            this.f2688c.get(i2).removeTarget(i);
        }
        return (C0851r) super.removeTarget(i);
    }

    @Override // androidx.p045j.AbstractC0838n
    public AbstractC0838n excludeTarget(int i, boolean z) {
        for (int i2 = 0; i2 < this.f2688c.size(); i2++) {
            this.f2688c.get(i2).excludeTarget(i, z);
        }
        return super.excludeTarget(i, z);
    }

    @Override // androidx.p045j.AbstractC0838n
    public AbstractC0838n excludeTarget(View view, boolean z) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).excludeTarget(view, z);
        }
        return super.excludeTarget(view, z);
    }

    @Override // androidx.p045j.AbstractC0838n
    public AbstractC0838n excludeTarget(Class cls, boolean z) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).excludeTarget(cls, z);
        }
        return super.excludeTarget(cls, z);
    }

    @Override // androidx.p045j.AbstractC0838n
    public AbstractC0838n excludeTarget(String str, boolean z) {
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).excludeTarget(str, z);
        }
        return super.excludeTarget(str, z);
    }

    @Override // androidx.p045j.AbstractC0838n
    public void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).forceToEnd(viewGroup);
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void pause(View view) {
        super.pause(view);
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).pause(view);
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void resume(View view) {
        super.resume(view);
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).resume(view);
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void runAnimators() {
        if (this.f2688c.isEmpty()) {
            start();
            end();
            return;
        }
        m5233b();
        if (this.f2689d) {
            Iterator<AbstractC0838n> it = this.f2688c.iterator();
            while (it.hasNext()) {
                it.next().runAnimators();
            }
            return;
        }
        for (int i = 1; i < this.f2688c.size(); i++) {
            final AbstractC0838n abstractC0838n = this.f2688c.get(i);
            this.f2688c.get(i - 1).addListener(new C0846o() { // from class: androidx.j.r.1
                @Override // androidx.p045j.C0846o, androidx.p045j.AbstractC0838n.AbstractC0845d
                /* renamed from: b */
                public void mo5224b(AbstractC0838n abstractC0838n2) {
                    abstractC0838n.runAnimators();
                    abstractC0838n2.removeListener(this);
                }
            });
        }
        AbstractC0838n abstractC0838n2 = this.f2688c.get(0);
        if (abstractC0838n2 == null) {
            return;
        }
        abstractC0838n2.runAnimators();
    }

    @Override // androidx.p045j.AbstractC0838n
    public void setCanRemoveViews(boolean z) {
        super.setCanRemoveViews(z);
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).setCanRemoveViews(z);
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void setEpicenterCallback(AbstractC0838n.AbstractC0844c abstractC0844c) {
        super.setEpicenterCallback(abstractC0844c);
        this.f2690e |= 8;
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).setEpicenterCallback(abstractC0844c);
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void setPathMotion(AbstractC0830g abstractC0830g) {
        super.setPathMotion(abstractC0830g);
        this.f2690e |= 4;
        for (int i = 0; i < this.f2688c.size(); i++) {
            this.f2688c.get(i).setPathMotion(abstractC0830g);
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void setPropagation(AbstractC0850q abstractC0850q) {
        super.setPropagation(abstractC0850q);
        this.f2690e |= 2;
        int size = this.f2688c.size();
        for (int i = 0; i < size; i++) {
            this.f2688c.get(i).setPropagation(abstractC0850q);
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public String toString(String str) {
        String abstractC0838n = super.toString(str);
        for (int i = 0; i < this.f2688c.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(abstractC0838n);
            sb.append("\n");
            sb.append(this.f2688c.get(i).toString(str + "  "));
            abstractC0838n = sb.toString();
        }
        return abstractC0838n;
    }
}
