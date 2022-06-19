package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.AbstractC0794f;
import com.bumptech.glide.load.data.AbstractC0738e;
import com.bumptech.glide.load.p024j.p027h.AbstractC0816e;
import com.bumptech.glide.p029o.C0856j;
import d.h.l.e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g.class */
public class C0756g<DataType, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<DataType> f3582a;

    /* renamed from: b */
    private final List<? extends AbstractC0794f<DataType, ResourceType>> f3583b;

    /* renamed from: c */
    private final AbstractC0816e<ResourceType, Transcode> f3584c;

    /* renamed from: d */
    private final e<List<Throwable>> f3585d;

    /* renamed from: e */
    private final String f3586e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$a.class */
    public interface AbstractC0757a<ResourceType> {
        /* renamed from: a */
        AbstractC0764s<ResourceType> m11105a(AbstractC0764s<ResourceType> abstractC0764s);
    }

    public C0756g(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends AbstractC0794f<DataType, ResourceType>> list, AbstractC0816e<ResourceType, Transcode> abstractC0816e, e<List<Throwable>> eVar) {
        this.f3582a = cls;
        this.f3583b = list;
        this.f3584c = abstractC0816e;
        this.f3585d = eVar;
        this.f3586e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: b */
    private AbstractC0764s<ResourceType> m11107b(AbstractC0738e<DataType> abstractC0738e, int i, int i2, com.bumptech.glide.load.e eVar) {
        Object b = this.f3585d.b();
        C0856j.m10759d(b);
        List<Throwable> list = (List) b;
        try {
            return m11106c(abstractC0738e, i, i2, eVar, list);
        } finally {
            this.f3585d.a(list);
        }
    }

    /* renamed from: c */
    private AbstractC0764s<ResourceType> m11106c(AbstractC0738e<DataType> abstractC0738e, int i, int i2, com.bumptech.glide.load.e eVar, List<Throwable> list) {
        AbstractC0764s<ResourceType> abstractC0764s;
        int size = this.f3583b.size();
        AbstractC0764s<ResourceType> abstractC0764s2 = null;
        int i3 = 0;
        while (true) {
            abstractC0764s = abstractC0764s2;
            if (i3 >= size) {
                break;
            }
            AbstractC0794f<DataType, ResourceType> abstractC0794f = this.f3583b.get(i3);
            abstractC0764s = abstractC0764s2;
            try {
                if (abstractC0794f.m11001b(abstractC0738e.m11183a(), eVar)) {
                    abstractC0764s = abstractC0794f.m11002a(abstractC0738e.m11183a(), i, i2, eVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + abstractC0794f, e);
                }
                list.add(e);
                abstractC0764s = abstractC0764s2;
            }
            if (abstractC0764s != null) {
                break;
            }
            i3++;
            abstractC0764s2 = abstractC0764s;
        }
        if (abstractC0764s != null) {
            return abstractC0764s;
        }
        throw new GlideException(this.f3586e, new ArrayList(list));
    }

    /* renamed from: a */
    public AbstractC0764s<Transcode> m11108a(AbstractC0738e<DataType> abstractC0738e, int i, int i2, com.bumptech.glide.load.e eVar, AbstractC0757a<ResourceType> abstractC0757a) {
        return this.f3584c.m10930a(abstractC0757a.m11105a(m11107b(abstractC0738e, i, i2, eVar)), eVar);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f3582a + ", decoders=" + this.f3583b + ", transcoder=" + this.f3584c + '}';
    }
}
