package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.data.AbstractC0738e;
import com.bumptech.glide.load.engine.C0756g;
import com.bumptech.glide.p029o.C0856j;
import d.h.l.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/q.class */
public class C0763q<Data, ResourceType, Transcode> {

    /* renamed from: a */
    private final e<List<Throwable>> f3612a;

    /* renamed from: b */
    private final List<? extends C0756g<Data, ResourceType, Transcode>> f3613b;

    /* renamed from: c */
    private final String f3614c;

    public C0763q(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<C0756g<Data, ResourceType, Transcode>> list, e<List<Throwable>> eVar) {
        this.f3612a = eVar;
        C0856j.m10760c(list);
        this.f3613b = list;
        this.f3614c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: b */
    private AbstractC0764s<Transcode> m11081b(AbstractC0738e<Data> abstractC0738e, com.bumptech.glide.load.e eVar, int i, int i2, C0756g.AbstractC0757a<ResourceType> abstractC0757a, List<Throwable> list) {
        AbstractC0764s<Transcode> abstractC0764s;
        int size = this.f3613b.size();
        AbstractC0764s<Transcode> abstractC0764s2 = null;
        int i3 = 0;
        while (true) {
            abstractC0764s = abstractC0764s2;
            if (i3 >= size) {
                break;
            }
            try {
                abstractC0764s2 = this.f3613b.get(i3).m11108a(abstractC0738e, i, i2, eVar, abstractC0757a);
            } catch (GlideException e) {
                list.add(e);
            }
            if (abstractC0764s2 != null) {
                abstractC0764s = abstractC0764s2;
                break;
            }
            i3++;
        }
        if (abstractC0764s != null) {
            return abstractC0764s;
        }
        throw new GlideException(this.f3614c, new ArrayList(list));
    }

    /* renamed from: a */
    public AbstractC0764s<Transcode> m11082a(AbstractC0738e<Data> abstractC0738e, com.bumptech.glide.load.e eVar, int i, int i2, C0756g.AbstractC0757a<ResourceType> abstractC0757a) {
        Object b = this.f3612a.b();
        C0856j.m10759d(b);
        List<Throwable> list = (List) b;
        try {
            return m11081b(abstractC0738e, eVar, i, i2, abstractC0757a, list);
        } finally {
            this.f3612a.a(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f3613b.toArray()) + '}';
    }
}
