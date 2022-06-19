package androidx.p045j;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.p045j.AbstractC0807m;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.j.q */
/* loaded from: classes-dex2jar.jar:androidx/j/q.class */
public class C0819q extends AbstractC0807m {

    /* renamed from: h */
    int f2811h;

    /* renamed from: j */
    private ArrayList<AbstractC0807m> f2813j = new ArrayList<>();

    /* renamed from: k */
    private boolean f2814k = true;

    /* renamed from: i */
    boolean f2812i = false;

    /* renamed from: l */
    private int f2815l = 0;

    /* renamed from: androidx.j.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/q$a.class */
    public static class C0821a extends C0814n {

        /* renamed from: a */
        C0819q f2818a;

        C0821a(C0819q c0819q) {
            this.f2818a = c0819q;
        }

        @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
        /* renamed from: b */
        public void mo19347b(AbstractC0807m abstractC0807m) {
            this.f2818a.f2811h--;
            if (this.f2818a.f2811h == 0) {
                this.f2818a.f2812i = false;
                this.f2818a.m19396k();
            }
            abstractC0807m.mo19364b(this);
        }

        @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
        /* renamed from: e */
        public void mo19346e(AbstractC0807m abstractC0807m) {
            if (!this.f2818a.f2812i) {
                this.f2818a.m19397j();
                this.f2818a.f2812i = true;
            }
        }
    }

    /* renamed from: b */
    private void m19363b(AbstractC0807m abstractC0807m) {
        this.f2813j.add(abstractC0807m);
        abstractC0807m.f2775d = this;
    }

    /* renamed from: s */
    private void m19348s() {
        C0821a c0821a = new C0821a(this);
        Iterator<AbstractC0807m> it = this.f2813j.iterator();
        while (it.hasNext()) {
            it.next().mo19372a(c0821a);
        }
        this.f2811h = this.f2813j.size();
    }

    /* renamed from: a */
    public C0819q m19378a(int i) {
        switch (i) {
            case 0:
                this.f2814k = true;
                break;
            case 1:
                this.f2814k = false;
                break;
            default:
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        }
        return this;
    }

    /* renamed from: a */
    public C0819q m19371a(AbstractC0807m abstractC0807m) {
        m19363b(abstractC0807m);
        if (this.f2772a >= 0) {
            abstractC0807m.mo19377a(this.f2772a);
        }
        if ((this.f2815l & 1) != 0) {
            abstractC0807m.mo19376a(m19402d());
        }
        if ((this.f2815l & 2) != 0) {
            abstractC0807m.mo19370a(m19393o());
        }
        if ((this.f2815l & 4) != 0) {
            abstractC0807m.mo19374a(m19395m());
        }
        if ((this.f2815l & 8) != 0) {
            abstractC0807m.mo19373a(m19394n());
        }
        return this;
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public String mo19369a(String str) {
        String mo19369a = super.mo19369a(str);
        for (int i = 0; i < this.f2813j.size(); i++) {
            mo19369a = mo19369a + "\n" + this.f2813j.get(i).mo19369a(str + "  ");
        }
        return mo19369a;
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo19375a(ViewGroup viewGroup, C0824t c0824t, C0824t c0824t2, ArrayList<C0823s> arrayList, ArrayList<C0823s> arrayList2) {
        long c = m19404c();
        int size = this.f2813j.size();
        for (int i = 0; i < size; i++) {
            AbstractC0807m abstractC0807m = this.f2813j.get(i);
            if (c > 0 && (this.f2814k || i == 0)) {
                long m19404c = abstractC0807m.m19404c();
                if (m19404c > 0) {
                    abstractC0807m.mo19367b(m19404c + c);
                } else {
                    abstractC0807m.mo19367b(c);
                }
            }
            abstractC0807m.mo19375a(viewGroup, c0824t, c0824t2, arrayList, arrayList2);
        }
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo19374a(AbstractC0800g abstractC0800g) {
        super.mo19374a(abstractC0800g);
        this.f2815l |= 4;
        if (this.f2813j != null) {
            for (int i = 0; i < this.f2813j.size(); i++) {
                this.f2813j.get(i).mo19374a(abstractC0800g);
            }
        }
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo19373a(AbstractC0807m.AbstractC0812b abstractC0812b) {
        super.mo19373a(abstractC0812b);
        this.f2815l |= 8;
        int size = this.f2813j.size();
        for (int i = 0; i < size; i++) {
            this.f2813j.get(i).mo19373a(abstractC0812b);
        }
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo19370a(AbstractC0818p abstractC0818p) {
        super.mo19370a(abstractC0818p);
        this.f2815l |= 2;
        int size = this.f2813j.size();
        for (int i = 0; i < size; i++) {
            this.f2813j.get(i).mo19370a(abstractC0818p);
        }
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo2831a(C0823s c0823s) {
        if (m19420a(c0823s.f2823b)) {
            Iterator<AbstractC0807m> it = this.f2813j.iterator();
            while (it.hasNext()) {
                AbstractC0807m next = it.next();
                if (next.m19420a(c0823s.f2823b)) {
                    next.mo2831a(c0823s);
                    c0823s.f2824c.add(next);
                }
            }
        }
    }

    /* renamed from: b */
    public AbstractC0807m m19368b(int i) {
        return (i < 0 || i >= this.f2813j.size()) ? null : this.f2813j.get(i);
    }

    /* renamed from: b */
    public C0819q mo19376a(TimeInterpolator timeInterpolator) {
        this.f2815l |= 1;
        if (this.f2813j != null) {
            int size = this.f2813j.size();
            for (int i = 0; i < size; i++) {
                this.f2813j.get(i).mo19376a(timeInterpolator);
            }
        }
        return (C0819q) super.mo19376a(timeInterpolator);
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: b */
    public void mo2830b(C0823s c0823s) {
        if (m19420a(c0823s.f2823b)) {
            Iterator<AbstractC0807m> it = this.f2813j.iterator();
            while (it.hasNext()) {
                AbstractC0807m next = it.next();
                if (next.m19420a(c0823s.f2823b)) {
                    next.mo2830b(c0823s);
                    c0823s.f2824c.add(next);
                }
            }
        }
    }

    /* renamed from: c */
    public C0819q mo19377a(long j) {
        super.mo19377a(j);
        if (this.f2772a >= 0 && this.f2813j != null) {
            int size = this.f2813j.size();
            for (int i = 0; i < size; i++) {
                this.f2813j.get(i).mo19377a(j);
            }
        }
        return this;
    }

    /* renamed from: c */
    public C0819q mo19372a(AbstractC0807m.AbstractC0813c abstractC0813c) {
        return (C0819q) super.mo19372a(abstractC0813c);
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: c */
    public void mo19359c(C0823s c0823s) {
        super.mo19359c(c0823s);
        int size = this.f2813j.size();
        for (int i = 0; i < size; i++) {
            this.f2813j.get(i).mo19359c(c0823s);
        }
    }

    /* renamed from: d */
    public C0819q mo19367b(long j) {
        return (C0819q) super.mo19367b(j);
    }

    /* renamed from: d */
    public C0819q mo19364b(AbstractC0807m.AbstractC0813c abstractC0813c) {
        return (C0819q) super.mo19364b(abstractC0813c);
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: d */
    public void mo19357d(View view) {
        super.mo19357d(view);
        int size = this.f2813j.size();
        for (int i = 0; i < size; i++) {
            this.f2813j.get(i).mo19357d(view);
        }
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: e */
    public void mo19355e() {
        if (this.f2813j.isEmpty()) {
            m19397j();
            m19396k();
            return;
        }
        m19348s();
        if (this.f2814k) {
            Iterator<AbstractC0807m> it = this.f2813j.iterator();
            while (it.hasNext()) {
                it.next().mo19355e();
            }
            return;
        }
        for (int i = 1; i < this.f2813j.size(); i++) {
            final AbstractC0807m abstractC0807m = this.f2813j.get(i);
            this.f2813j.get(i - 1).mo19372a(new C0814n() { // from class: androidx.j.q.1
                @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
                /* renamed from: b */
                public void mo19347b(AbstractC0807m abstractC0807m2) {
                    abstractC0807m.mo19355e();
                    abstractC0807m2.mo19364b(this);
                }
            });
        }
        AbstractC0807m abstractC0807m2 = this.f2813j.get(0);
        if (abstractC0807m2 == null) {
            return;
        }
        abstractC0807m2.mo19355e();
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: e */
    public void mo19354e(View view) {
        super.mo19354e(view);
        int size = this.f2813j.size();
        for (int i = 0; i < size; i++) {
            this.f2813j.get(i).mo19354e(view);
        }
    }

    /* renamed from: f */
    public C0819q mo19365b(View view) {
        for (int i = 0; i < this.f2813j.size(); i++) {
            this.f2813j.get(i).mo19365b(view);
        }
        return (C0819q) super.mo19365b(view);
    }

    /* renamed from: g */
    public C0819q mo19361c(View view) {
        for (int i = 0; i < this.f2813j.size(); i++) {
            this.f2813j.get(i).mo19361c(view);
        }
        return (C0819q) super.mo19361c(view);
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: l */
    public void mo19351l() {
        super.mo19351l();
        int size = this.f2813j.size();
        for (int i = 0; i < size; i++) {
            this.f2813j.get(i).mo19351l();
        }
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: p */
    public AbstractC0807m clone() {
        C0819q c0819q = (C0819q) super.clone();
        c0819q.f2813j = new ArrayList<>();
        int size = this.f2813j.size();
        for (int i = 0; i < size; i++) {
            c0819q.m19363b(this.f2813j.get(i).clone());
        }
        return c0819q;
    }

    /* renamed from: r */
    public int m19349r() {
        return this.f2813j.size();
    }
}
