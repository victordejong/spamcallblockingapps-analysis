package p193e.p1451f.p1452a.p1457n.p1464p;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
/* renamed from: e.f.a.n.p.n */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/n.class */
public interface AbstractC22436n<Model, Data> {

    /* renamed from: e.f.a.n.p.n$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/n$a.class */
    public static class C22437a<Data> {

        /* renamed from: a */
        public final AbstractC22263f f62283a;

        /* renamed from: b */
        public final List<AbstractC22263f> f62284b;

        /* renamed from: c */
        public final AbstractC22274d<Data> f62285c;

        public C22437a(AbstractC22263f abstractC22263f, AbstractC22274d<Data> abstractC22274d) {
            List<AbstractC22263f> emptyList = Collections.emptyList();
            Objects.requireNonNull(abstractC22263f, "Argument must not be null");
            this.f62283a = abstractC22263f;
            Objects.requireNonNull(emptyList, "Argument must not be null");
            this.f62284b = emptyList;
            Objects.requireNonNull(abstractC22274d, "Argument must not be null");
            this.f62285c = abstractC22274d;
        }
    }

    /* renamed from: a */
    C22437a<Data> mo8215a(Model model, int i, int i2, C22267i c22267i);

    /* renamed from: b */
    boolean mo8214b(Model model);
}
