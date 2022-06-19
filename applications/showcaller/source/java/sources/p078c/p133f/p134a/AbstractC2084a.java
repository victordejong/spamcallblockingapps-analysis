package p078c.p133f.p134a;

import java.util.ArrayList;
/* renamed from: c.f.a.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a.class */
public abstract class AbstractC2084a implements Cloneable {

    /* renamed from: d */
    ArrayList<AbstractC2085a> f7209d = null;

    /* renamed from: c.f.a.a$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a$a.class */
    public interface AbstractC2085a {
        /* renamed from: a */
        void m28076a(AbstractC2084a abstractC2084a);

        /* renamed from: b */
        void m28075b(AbstractC2084a abstractC2084a);

        /* renamed from: c */
        void m28074c(AbstractC2084a abstractC2084a);

        /* renamed from: d */
        void m28073d(AbstractC2084a abstractC2084a);
    }

    /* renamed from: a */
    public AbstractC2084a clone() {
        try {
            AbstractC2084a abstractC2084a = (AbstractC2084a) super.clone();
            ArrayList<AbstractC2085a> arrayList = this.f7209d;
            if (arrayList != null) {
                abstractC2084a.f7209d = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    abstractC2084a.f7209d.add(arrayList.get(i));
                }
            }
            return abstractC2084a;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    /* renamed from: b */
    public void mo28035b() {
    }

    /* renamed from: c */
    public abstract boolean mo28034c();

    public void cancel() {
    }

    /* renamed from: d */
    public void mo28033d() {
    }
}
