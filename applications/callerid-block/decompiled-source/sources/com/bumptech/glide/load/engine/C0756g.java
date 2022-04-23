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

    /* renamed from: com.bumptech.glide.load.engine.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$a.class */
    interface AbstractC0757a<ResourceType> {
        /* renamed from: a */
        AbstractC0764s<ResourceType> m11105a(AbstractC0764s<ResourceType> sVar);
    }

    public C0756g(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends AbstractC0794f<DataType, ResourceType>> list, AbstractC0816e<ResourceType, Transcode> eVar, e<List<Throwable>> eVar2) {
        this.f3582a = cls;
        this.f3583b = list;
        this.f3584c = eVar;
        this.f3585d = eVar2;
        this.f3586e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: b */
    private AbstractC0764s<ResourceType> m11107b(AbstractC0738e<DataType> eVar, int i, int i2, com.bumptech.glide.load.e eVar2) {
        Object b = this.f3585d.b();
        C0856j.m10759d(b);
        List<Throwable> list = (List) b;
        try {
            return m11106c(eVar, i, i2, eVar2, list);
        } finally {
            this.f3585d.a(list);
        }
    }

    /* renamed from: c */
    private AbstractC0764s<ResourceType> m11106c(AbstractC0738e<DataType> eVar, int i, int i2, com.bumptech.glide.load.e eVar2, List<Throwable> list) {
        AbstractC0764s<ResourceType> sVar;
        int size = this.f3583b.size();
        AbstractC0764s<ResourceType> sVar2 = null;
        int i3 = 0;
        while (true) {
            sVar = sVar2;
            if (i3 >= size) {
                break;
            }
            AbstractC0794f fVar = (AbstractC0794f) this.f3583b.get(i3);
            sVar = sVar2;
            try {
                if (fVar.m11001b(eVar.m11183a(), eVar2)) {
                    sVar = fVar.m11002a(eVar.m11183a(), i, i2, eVar2);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + fVar, e);
                }
                list.add(e);
                sVar = sVar2;
            }
            if (sVar != null) {
                break;
            }
            i3++;
            sVar2 = sVar;
        }
        if (sVar != null) {
            return sVar;
        }
        throw new GlideException(this.f3586e, new ArrayList(list));
    }

    /* renamed from: a */
    public AbstractC0764s<Transcode> m11108a(AbstractC0738e<DataType> eVar, int i, int i2, com.bumptech.glide.load.e eVar2, AbstractC0757a<ResourceType> aVar) {
        return this.f3584c.m10930a(aVar.m11105a(m11107b(eVar, i, i2, eVar2)), eVar2);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f3582a + ", decoders=" + this.f3583b + ", transcoder=" + this.f3584c + '}';
    }
}
