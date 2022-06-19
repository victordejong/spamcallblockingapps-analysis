package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.data.AbstractC4009e;
import com.bumptech.glide.load.p214j.p219h.AbstractC4272e;
import com.bumptech.glide.p223p.C4382j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p049k.AbstractC1594e;
/* renamed from: com.bumptech.glide.load.engine.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g.class */
public class C4052g<DataType, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<DataType> f12785a;

    /* renamed from: b */
    private final List<? extends AbstractC4146f<DataType, ResourceType>> f12786b;

    /* renamed from: c */
    private final AbstractC4272e<ResourceType, Transcode> f12787c;

    /* renamed from: d */
    private final AbstractC1594e<List<Throwable>> f12788d;

    /* renamed from: e */
    private final String f12789e;

    /* renamed from: com.bumptech.glide.load.engine.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$a.class */
    public interface AbstractC4053a<ResourceType> {
        /* renamed from: a */
        AbstractC4083s<ResourceType> mo23377a(AbstractC4083s<ResourceType> abstractC4083s);
    }

    public C4052g(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends AbstractC4146f<DataType, ResourceType>> list, AbstractC4272e<ResourceType, Transcode> abstractC4272e, AbstractC1594e<List<Throwable>> abstractC1594e) {
        this.f12785a = cls;
        this.f12786b = list;
        this.f12787c = abstractC4272e;
        this.f12788d = abstractC1594e;
        this.f12789e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: b */
    private AbstractC4083s<ResourceType> m23379b(AbstractC4009e<DataType> abstractC4009e, int i, int i2, C4032e c4032e) {
        List<Throwable> list = (List) C4382j.m22719d(this.f12788d.mo22686a());
        try {
            return m23378c(abstractC4009e, i, i2, c4032e, list);
        } finally {
            this.f12788d.mo22685b(list);
        }
    }

    /* renamed from: c */
    private AbstractC4083s<ResourceType> m23378c(AbstractC4009e<DataType> abstractC4009e, int i, int i2, C4032e c4032e, List<Throwable> list) {
        AbstractC4083s<ResourceType> abstractC4083s;
        int size = this.f12786b.size();
        AbstractC4083s<ResourceType> abstractC4083s2 = null;
        int i3 = 0;
        while (true) {
            abstractC4083s = abstractC4083s2;
            if (i3 >= size) {
                break;
            }
            AbstractC4146f<DataType, ResourceType> abstractC4146f = this.f12786b.get(i3);
            abstractC4083s = abstractC4083s2;
            try {
                if (abstractC4146f.mo22862a(abstractC4009e.mo23074a(), c4032e)) {
                    abstractC4083s = abstractC4146f.mo22861b(abstractC4009e.mo23074a(), i, i2, c4032e);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + abstractC4146f, e);
                }
                list.add(e);
                abstractC4083s = abstractC4083s2;
            }
            if (abstractC4083s != null) {
                break;
            }
            i3++;
            abstractC4083s2 = abstractC4083s;
        }
        if (abstractC4083s != null) {
            return abstractC4083s;
        }
        throw new GlideException(this.f12789e, new ArrayList(list));
    }

    /* renamed from: a */
    public AbstractC4083s<Transcode> m23380a(AbstractC4009e<DataType> abstractC4009e, int i, int i2, C4032e c4032e, AbstractC4053a<ResourceType> abstractC4053a) {
        return this.f12787c.mo22989a(abstractC4053a.mo23377a(m23379b(abstractC4009e, i, i2, c4032e)), c4032e);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f12785a + ", decoders=" + this.f12786b + ", transcoder=" + this.f12787c + '}';
    }
}
