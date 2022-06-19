package com.bumptech.glide.load.p081b;

import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.p077h.C1456i;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bumptech.glide.load.b.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/n.class */
public interface AbstractC1546n<Model, Data> {

    /* renamed from: com.bumptech.glide.load.b.n$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/n$a.class */
    public static class C1547a<Data> {

        /* renamed from: a */
        public final AbstractC1777f f4903a;

        /* renamed from: b */
        public final List<AbstractC1777f> f4904b;

        /* renamed from: c */
        public final AbstractC1475d<Data> f4905c;

        public C1547a(AbstractC1777f abstractC1777f, AbstractC1475d<Data> abstractC1475d) {
            this(abstractC1777f, Collections.emptyList(), abstractC1475d);
        }

        public C1547a(AbstractC1777f abstractC1777f, List<AbstractC1777f> list, AbstractC1475d<Data> abstractC1475d) {
            this.f4903a = (AbstractC1777f) C1456i.m16989a(abstractC1777f);
            this.f4904b = (List) C1456i.m16989a(list);
            this.f4905c = (AbstractC1475d) C1456i.m16989a(abstractC1475d);
        }
    }

    /* renamed from: a */
    C1547a<Data> mo16802a(Model model, int i, int i2, C1781h c1781h);

    /* renamed from: a */
    boolean mo16803a(Model model);
}
