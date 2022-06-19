package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.core.p036e.C0829c;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.data.AbstractC3675e;
import com.bumptech.glide.load.resource.p126e.AbstractC3925e;
import com.bumptech.glide.p116g.C3643j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i.class */
public final class C3780i<DataType, ResourceType, Transcode> {

    /* renamed from: a */
    final AbstractC3925e<ResourceType, Transcode> f14050a;

    /* renamed from: b */
    private final Class<DataType> f14051b;

    /* renamed from: c */
    private final List<? extends AbstractC3824j<DataType, ResourceType>> f14052c;

    /* renamed from: d */
    private final C0829c.AbstractC0830a<List<Throwable>> f14053d;

    /* renamed from: e */
    private final String f14054e;

    /* renamed from: com.bumptech.glide.load.engine.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$a.class */
    public interface AbstractC3781a<ResourceType> {
        /* renamed from: a */
        AbstractC3811u<ResourceType> mo37373a(AbstractC3811u<ResourceType> abstractC3811u);
    }

    public C3780i(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends AbstractC3824j<DataType, ResourceType>> list, AbstractC3925e<ResourceType, Transcode> abstractC3925e, C0829c.AbstractC0830a<List<Throwable>> abstractC0830a) {
        this.f14051b = cls;
        this.f14052c = list;
        this.f14050a = abstractC3925e;
        this.f14053d = abstractC0830a;
        this.f14054e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    private AbstractC3811u<ResourceType> m37374a(AbstractC3675e<DataType> abstractC3675e, int i, int i2, C3822h c3822h, List<Throwable> list) throws GlideException {
        AbstractC3811u<ResourceType> abstractC3811u;
        int size = this.f14052c.size();
        AbstractC3811u<ResourceType> abstractC3811u2 = null;
        int i3 = 0;
        while (true) {
            abstractC3811u = abstractC3811u2;
            if (i3 >= size) {
                break;
            }
            AbstractC3824j<DataType, ResourceType> abstractC3824j = this.f14052c.get(i3);
            AbstractC3811u<ResourceType> abstractC3811u3 = abstractC3811u2;
            try {
                if (abstractC3824j.mo37195a(abstractC3675e.mo37318a(), c3822h)) {
                    abstractC3811u3 = abstractC3824j.mo37196a(abstractC3675e.mo37318a(), i, i2, c3822h);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    new StringBuilder("Failed to decode data for ").append(abstractC3824j);
                }
                list.add(e);
                abstractC3811u3 = abstractC3811u2;
            }
            abstractC3811u = abstractC3811u3;
            if (abstractC3811u3 != null) {
                break;
            }
            i3++;
            abstractC3811u2 = abstractC3811u3;
        }
        if (abstractC3811u != null) {
            return abstractC3811u;
        }
        throw new GlideException(this.f14054e, new ArrayList(list));
    }

    /* renamed from: a */
    public final AbstractC3811u<ResourceType> m37375a(AbstractC3675e<DataType> abstractC3675e, int i, int i2, C3822h c3822h) throws GlideException {
        List<Throwable> list = (List) C3643j.m37588a(this.f14053d.mo37607a(), "Argument must not be null");
        try {
            return m37374a(abstractC3675e, i, i2, c3822h, list);
        } finally {
            this.f14053d.mo37606a(list);
        }
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f14051b + ", decoders=" + this.f14052c + ", transcoder=" + this.f14050a + '}';
    }
}
