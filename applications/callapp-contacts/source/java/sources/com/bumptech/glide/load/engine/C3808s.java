package com.bumptech.glide.load.engine;

import androidx.core.p036e.C0829c;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.data.AbstractC3675e;
import com.bumptech.glide.load.engine.C3780i;
import com.bumptech.glide.p116g.C3643j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/s.class */
public final class C3808s<Data, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<Data> f14137a;

    /* renamed from: b */
    private final C0829c.AbstractC0830a<List<Throwable>> f14138b;

    /* renamed from: c */
    private final List<? extends C3780i<Data, ResourceType, Transcode>> f14139c;

    /* renamed from: d */
    private final String f14140d;

    public C3808s(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<C3780i<Data, ResourceType, Transcode>> list, C0829c.AbstractC0830a<List<Throwable>> abstractC0830a) {
        this.f14137a = cls;
        this.f14138b = abstractC0830a;
        this.f14139c = (List) C3643j.m37586a(list);
        this.f14140d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    private AbstractC3811u<Transcode> m37338a(AbstractC3675e<Data> abstractC3675e, C3822h c3822h, int i, int i2, C3780i.AbstractC3781a<ResourceType> abstractC3781a, List<Throwable> list) throws GlideException {
        AbstractC3811u<Transcode> abstractC3811u;
        int size = this.f14139c.size();
        AbstractC3811u<Transcode> abstractC3811u2 = null;
        int i3 = 0;
        while (true) {
            abstractC3811u = abstractC3811u2;
            if (i3 >= size) {
                break;
            }
            C3780i<Data, ResourceType, Transcode> c3780i = this.f14139c.get(i3);
            try {
                abstractC3811u2 = c3780i.f14050a.mo37189a(abstractC3781a.mo37373a(c3780i.m37375a(abstractC3675e, i, i2, c3822h)), c3822h);
            } catch (GlideException e) {
                list.add(e);
            }
            abstractC3811u = abstractC3811u2;
            if (abstractC3811u2 != null) {
                break;
            }
            i3++;
        }
        if (abstractC3811u != null) {
            return abstractC3811u;
        }
        throw new GlideException(this.f14140d, new ArrayList(list));
    }

    /* renamed from: a */
    public final AbstractC3811u<Transcode> m37339a(AbstractC3675e<Data> abstractC3675e, C3822h c3822h, int i, int i2, C3780i.AbstractC3781a<ResourceType> abstractC3781a) throws GlideException {
        List<Throwable> list = (List) C3643j.m37588a(this.f14138b.mo37607a(), "Argument must not be null");
        try {
            return m37338a(abstractC3675e, c3822h, i, i2, abstractC3781a, list);
        } finally {
            this.f14138b.mo37606a(list);
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f14139c.toArray()) + '}';
    }
}
