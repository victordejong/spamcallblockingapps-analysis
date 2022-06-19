package p203p8;

import java.util.ArrayList;
/* renamed from: p8.a */
/* loaded from: classes2-dex2jar.jar:p8/a.class */
public abstract class AbstractC4046a implements Cloneable {

    /* renamed from: a */
    public ArrayList<AbstractC4047a> f12712a = null;

    /* renamed from: p8.a$a */
    /* loaded from: classes2-dex2jar.jar:p8/a$a.class */
    public interface AbstractC4047a {
        /* renamed from: a */
        void m1469a(AbstractC4046a abstractC4046a);

        /* renamed from: b */
        void m1468b(AbstractC4046a abstractC4046a);

        /* renamed from: c */
        void m1467c(AbstractC4046a abstractC4046a);

        /* renamed from: d */
        void m1466d(AbstractC4046a abstractC4046a);
    }

    /* renamed from: a */
    public AbstractC4046a clone() {
        try {
            AbstractC4046a abstractC4046a = (AbstractC4046a) super.clone();
            ArrayList<AbstractC4047a> arrayList = this.f12712a;
            if (arrayList != null) {
                abstractC4046a.f12712a = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    abstractC4046a.f12712a.add(arrayList.get(i));
                }
            }
            return abstractC4046a;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }
}
