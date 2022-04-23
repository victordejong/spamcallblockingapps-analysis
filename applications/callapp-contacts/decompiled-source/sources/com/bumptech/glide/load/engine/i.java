package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.core.e.c;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.resource.e.e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i.class */
public final class i<DataType, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    final e<ResourceType, Transcode> f7550a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<DataType> f7551b;

    /* renamed from: c  reason: collision with root package name */
    private final List<? extends j<DataType, ResourceType>> f7552c;

    /* renamed from: d  reason: collision with root package name */
    private final c.a<List<Throwable>> f7553d;
    private final String e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$a.class */
    public interface a<ResourceType> {
        u<ResourceType> a(u<ResourceType> uVar);
    }

    public i(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends j<DataType, ResourceType>> list, e<ResourceType, Transcode> eVar, c.a<List<Throwable>> aVar) {
        this.f7551b = cls;
        this.f7552c = list;
        this.f7550a = eVar;
        this.f7553d = aVar;
        this.e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    private u<ResourceType> a(com.bumptech.glide.load.data.e<DataType> eVar, int i, int i2, h hVar, List<Throwable> list) throws GlideException {
        u<ResourceType> uVar;
        int size = this.f7552c.size();
        u<ResourceType> uVar2 = null;
        int i3 = 0;
        while (true) {
            uVar = uVar2;
            if (i3 >= size) {
                break;
            }
            j jVar = (j) this.f7552c.get(i3);
            u<ResourceType> uVar3 = uVar2;
            try {
                if (jVar.a(eVar.a(), hVar)) {
                    uVar3 = jVar.a(eVar.a(), i, i2, hVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    new StringBuilder("Failed to decode data for ").append(jVar);
                }
                list.add(e);
                uVar3 = uVar2;
            }
            uVar = uVar3;
            if (uVar3 != null) {
                break;
            }
            i3++;
            uVar2 = uVar3;
        }
        if (uVar != null) {
            return uVar;
        }
        throw new GlideException(this.e, new ArrayList(list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final u<ResourceType> a(com.bumptech.glide.load.data.e<DataType> eVar, int i, int i2, h hVar) throws GlideException {
        List<Throwable> list = (List) com.bumptech.glide.g.j.a(this.f7553d.a(), "Argument must not be null");
        try {
            return a(eVar, i, i2, hVar, list);
        } finally {
            this.f7553d.a(list);
        }
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f7551b + ", decoders=" + this.f7552c + ", transcoder=" + this.f7550a + '}';
    }
}
