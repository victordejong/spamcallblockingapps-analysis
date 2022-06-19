package com.bumptech.glide.load.p212i;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.p223p.C4382j;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bumptech.glide.load.i.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/n.class */
public interface AbstractC4191n<Model, Data> {

    /* renamed from: com.bumptech.glide.load.i.n$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/n$a.class */
    public static class C4192a<Data> {

        /* renamed from: a */
        public final AbstractC3999c f13059a;

        /* renamed from: b */
        public final List<AbstractC3999c> f13060b;

        /* renamed from: c */
        public final AbstractC4007d<Data> f13061c;

        public C4192a(AbstractC3999c abstractC3999c, AbstractC4007d<Data> abstractC4007d) {
            this(abstractC3999c, Collections.emptyList(), abstractC4007d);
        }

        public C4192a(AbstractC3999c abstractC3999c, List<AbstractC3999c> list, AbstractC4007d<Data> abstractC4007d) {
            this.f13059a = (AbstractC3999c) C4382j.m22719d(abstractC3999c);
            this.f13060b = (List) C4382j.m22719d(list);
            this.f13061c = (AbstractC4007d) C4382j.m22719d(abstractC4007d);
        }
    }

    /* renamed from: a */
    boolean mo23082a(Model model);

    /* renamed from: b */
    C4192a<Data> mo23081b(Model model, int i, int i2, C4032e c4032e);
}
