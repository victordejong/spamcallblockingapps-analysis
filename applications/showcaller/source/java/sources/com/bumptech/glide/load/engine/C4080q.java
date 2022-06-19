package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.data.AbstractC4009e;
import com.bumptech.glide.load.engine.C4052g;
import com.bumptech.glide.p223p.C4382j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p020b.p041h.p049k.AbstractC1594e;
/* renamed from: com.bumptech.glide.load.engine.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/q.class */
public class C4080q<Data, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<Data> f12872a;

    /* renamed from: b */
    private final AbstractC1594e<List<Throwable>> f12873b;

    /* renamed from: c */
    private final List<? extends C4052g<Data, ResourceType, Transcode>> f12874c;

    /* renamed from: d */
    private final String f12875d;

    public C4080q(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<C4052g<Data, ResourceType, Transcode>> list, AbstractC1594e<List<Throwable>> abstractC1594e) {
        this.f12872a = cls;
        this.f12873b = abstractC1594e;
        this.f12874c = (List) C4382j.m22720c(list);
        this.f12875d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: b */
    private AbstractC4083s<Transcode> m23321b(AbstractC4009e<Data> abstractC4009e, C4032e c4032e, int i, int i2, C4052g.AbstractC4053a<ResourceType> abstractC4053a, List<Throwable> list) {
        AbstractC4083s<Transcode> abstractC4083s;
        int size = this.f12874c.size();
        AbstractC4083s<Transcode> abstractC4083s2 = null;
        int i3 = 0;
        while (true) {
            abstractC4083s = abstractC4083s2;
            if (i3 >= size) {
                break;
            }
            try {
                abstractC4083s2 = this.f12874c.get(i3).m23380a(abstractC4009e, i, i2, c4032e, abstractC4053a);
            } catch (GlideException e) {
                list.add(e);
            }
            if (abstractC4083s2 != null) {
                abstractC4083s = abstractC4083s2;
                break;
            }
            i3++;
        }
        if (abstractC4083s != null) {
            return abstractC4083s;
        }
        throw new GlideException(this.f12875d, new ArrayList(list));
    }

    /* renamed from: a */
    public AbstractC4083s<Transcode> m23322a(AbstractC4009e<Data> abstractC4009e, C4032e c4032e, int i, int i2, C4052g.AbstractC4053a<ResourceType> abstractC4053a) {
        List<Throwable> list = (List) C4382j.m22719d(this.f12873b.mo22686a());
        try {
            return m23321b(abstractC4009e, c4032e, i, i2, abstractC4053a, list);
        } finally {
            this.f12873b.mo22685b(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f12874c.toArray()) + '}';
    }
}
