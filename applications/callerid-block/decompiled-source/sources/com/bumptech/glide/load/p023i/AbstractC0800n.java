package com.bumptech.glide.load.p023i;

import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.load.data.AbstractC0736d;
import com.bumptech.glide.load.e;
import com.bumptech.glide.p029o.C0856j;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bumptech.glide.load.i.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/n.class */
public interface AbstractC0800n<Model, Data> {

    /* renamed from: com.bumptech.glide.load.i.n$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/n$a.class */
    public static class C0801a<Data> {

        /* renamed from: a */
        public final AbstractC0732c f3671a;

        /* renamed from: b */
        public final List<AbstractC0732c> f3672b;

        /* renamed from: c */
        public final AbstractC0736d<Data> f3673c;

        public C0801a(AbstractC0732c cVar, AbstractC0736d<Data> dVar) {
            this(cVar, Collections.emptyList(), dVar);
        }

        public C0801a(AbstractC0732c cVar, List<AbstractC0732c> list, AbstractC0736d<Data> dVar) {
            C0856j.m10759d(cVar);
            this.f3671a = cVar;
            C0856j.m10759d(list);
            this.f3672b = list;
            C0856j.m10759d(dVar);
            this.f3673c = dVar;
        }
    }

    /* renamed from: a */
    C0801a<Data> m10981a(Model model, int i, int i2, e eVar);

    /* renamed from: b */
    boolean m10980b(Model model);
}
