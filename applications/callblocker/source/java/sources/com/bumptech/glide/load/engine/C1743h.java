package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.core.p025g.C0523e;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p079a.AbstractC1477e;
import com.bumptech.glide.load.p083c.p089f.AbstractC1660e;
import com.bumptech.glide.p077h.C1456i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h.class */
public class C1743h<DataType, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<DataType> f5296a;

    /* renamed from: b */
    private final List<? extends AbstractC1782i<DataType, ResourceType>> f5297b;

    /* renamed from: c */
    private final AbstractC1660e<ResourceType, Transcode> f5298c;

    /* renamed from: d */
    private final C0523e.AbstractC0524a<List<Throwable>> f5299d;

    /* renamed from: e */
    private final String f5300e;

    /* renamed from: com.bumptech.glide.load.engine.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$a.class */
    public interface AbstractC1744a<ResourceType> {
        /* renamed from: a */
        AbstractC1771t<ResourceType> mo16406a(AbstractC1771t<ResourceType> abstractC1771t);
    }

    public C1743h(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends AbstractC1782i<DataType, ResourceType>> list, AbstractC1660e<ResourceType, Transcode> abstractC1660e, C0523e.AbstractC0524a<List<Throwable>> abstractC0524a) {
        this.f5296a = cls;
        this.f5297b = list;
        this.f5298c = abstractC1660e;
        this.f5299d = abstractC0524a;
        this.f5300e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    private AbstractC1771t<ResourceType> m16409a(AbstractC1477e<DataType> abstractC1477e, int i, int i2, C1781h c1781h) {
        List<Throwable> list = (List) C1456i.m16989a(this.f5299d.mo17021a());
        try {
            return m16407a(abstractC1477e, i, i2, c1781h, list);
        } finally {
            this.f5299d.mo17020a(list);
        }
    }

    /* renamed from: a */
    private AbstractC1771t<ResourceType> m16407a(AbstractC1477e<DataType> abstractC1477e, int i, int i2, C1781h c1781h, List<Throwable> list) {
        AbstractC1771t<ResourceType> abstractC1771t;
        AbstractC1771t<ResourceType> abstractC1771t2 = null;
        int size = this.f5297b.size();
        int i3 = 0;
        while (true) {
            abstractC1771t = abstractC1771t2;
            if (i3 >= size) {
                break;
            }
            AbstractC1782i<DataType, ResourceType> abstractC1782i = this.f5297b.get(i3);
            try {
                if (abstractC1782i.mo16318a(abstractC1477e.mo16698a(), c1781h)) {
                    abstractC1771t2 = abstractC1782i.mo16319a(abstractC1477e.mo16698a(), i, i2, c1781h);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + abstractC1782i, e);
                }
                list.add(e);
            }
            if (abstractC1771t2 != null) {
                abstractC1771t = abstractC1771t2;
                break;
            }
            i3++;
        }
        if (abstractC1771t == null) {
            throw new GlideException(this.f5300e, new ArrayList(list));
        }
        return abstractC1771t;
    }

    /* renamed from: a */
    public AbstractC1771t<Transcode> m16408a(AbstractC1477e<DataType> abstractC1477e, int i, int i2, C1781h c1781h, AbstractC1744a<ResourceType> abstractC1744a) {
        return this.f5298c.mo16613a(abstractC1744a.mo16406a(m16409a(abstractC1477e, i, i2, c1781h)), c1781h);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f5296a + ", decoders=" + this.f5297b + ", transcoder=" + this.f5298c + '}';
    }
}
