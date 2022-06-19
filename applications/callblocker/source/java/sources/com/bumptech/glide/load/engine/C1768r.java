package com.bumptech.glide.load.engine;

import androidx.core.p025g.C0523e;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.C1743h;
import com.bumptech.glide.load.p079a.AbstractC1477e;
import com.bumptech.glide.p077h.C1456i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/r.class */
public class C1768r<Data, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<Data> f5373a;

    /* renamed from: b */
    private final C0523e.AbstractC0524a<List<Throwable>> f5374b;

    /* renamed from: c */
    private final List<? extends C1743h<Data, ResourceType, Transcode>> f5375c;

    /* renamed from: d */
    private final String f5376d;

    public C1768r(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<C1743h<Data, ResourceType, Transcode>> list, C0523e.AbstractC0524a<List<Throwable>> abstractC0524a) {
        this.f5373a = cls;
        this.f5374b = abstractC0524a;
        this.f5375c = (List) C1456i.m16986a(list);
        this.f5376d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    private AbstractC1771t<Transcode> m16356a(AbstractC1477e<Data> abstractC1477e, C1781h c1781h, int i, int i2, C1743h.AbstractC1744a<ResourceType> abstractC1744a, List<Throwable> list) {
        AbstractC1771t<Transcode> abstractC1771t = null;
        int size = this.f5375c.size();
        for (int i3 = 0; i3 < size; i3++) {
            try {
                abstractC1771t = this.f5375c.get(i3).m16408a(abstractC1477e, i, i2, c1781h, abstractC1744a);
            } catch (GlideException e) {
                list.add(e);
            }
            if (abstractC1771t != null) {
                break;
            }
        }
        if (abstractC1771t == null) {
            throw new GlideException(this.f5376d, new ArrayList(list));
        }
        return abstractC1771t;
    }

    /* renamed from: a */
    public AbstractC1771t<Transcode> m16357a(AbstractC1477e<Data> abstractC1477e, C1781h c1781h, int i, int i2, C1743h.AbstractC1744a<ResourceType> abstractC1744a) {
        List<Throwable> list = (List) C1456i.m16989a(this.f5374b.mo17021a());
        try {
            return m16356a(abstractC1477e, c1781h, i, i2, abstractC1744a, list);
        } finally {
            this.f5374b.mo17020a(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f5375c.toArray()) + '}';
    }
}
