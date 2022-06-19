package p000;

import java.util.ArrayList;
/* renamed from: hi1 */
/* loaded from: classes3-dex2jar.jar:hi1.class */
public abstract class hi1 implements Cloneable {

    /* renamed from: a */
    public ArrayList<AbstractC1443a> f6736a = null;

    /* renamed from: hi1$a */
    /* loaded from: classes3-dex2jar.jar:hi1$a.class */
    public interface AbstractC1443a {
        /* renamed from: a */
        void mo304a(hi1 hi1Var);

        /* renamed from: b */
        void mo303b(hi1 hi1Var);

        /* renamed from: c */
        void mo302c(hi1 hi1Var);

        /* renamed from: d */
        void mo301d(hi1 hi1Var);
    }

    /* renamed from: b */
    public void m1621b(AbstractC1443a abstractC1443a) {
        if (this.f6736a == null) {
            this.f6736a = new ArrayList<>();
        }
        this.f6736a.add(abstractC1443a);
    }

    /* renamed from: c */
    public void mo774c() {
    }

    /* renamed from: d */
    public hi1 clone() {
        try {
            hi1 hi1Var = (hi1) super.clone();
            ArrayList<AbstractC1443a> arrayList = this.f6736a;
            if (arrayList != null) {
                hi1Var.f6736a = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    hi1Var.f6736a.add(arrayList.get(i));
                }
            }
            return hi1Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }
}
