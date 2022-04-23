package com.bumptech.glide.load.engine;

import androidx.core.e.c;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/s.class */
public final class s<Data, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<Data> f7596a;

    /* renamed from: b  reason: collision with root package name */
    private final c.a<List<Throwable>> f7597b;

    /* renamed from: c  reason: collision with root package name */
    private final List<? extends i<Data, ResourceType, Transcode>> f7598c;

    /* renamed from: d  reason: collision with root package name */
    private final String f7599d;

    public s(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<i<Data, ResourceType, Transcode>> list, c.a<List<Throwable>> aVar) {
        this.f7596a = cls;
        this.f7597b = aVar;
        this.f7598c = (List) j.a(list);
        this.f7599d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    private u<Transcode> a(e<Data> eVar, h hVar, int i, int i2, i.a<ResourceType> aVar, List<Throwable> list) throws GlideException {
        u<Transcode> uVar;
        int size = this.f7598c.size();
        u<Transcode> uVar2 = null;
        int i3 = 0;
        while (true) {
            uVar = uVar2;
            if (i3 >= size) {
                break;
            }
            i iVar = (i) this.f7598c.get(i3);
            try {
                uVar2 = iVar.f7550a.a(aVar.a(iVar.a(eVar, i, i2, hVar)), hVar);
            } catch (GlideException e) {
                list.add(e);
            }
            uVar = uVar2;
            if (uVar2 != null) {
                break;
            }
            i3++;
        }
        if (uVar != null) {
            return uVar;
        }
        throw new GlideException(this.f7599d, new ArrayList(list));
    }

    public final u<Transcode> a(e<Data> eVar, h hVar, int i, int i2, i.a<ResourceType> aVar) throws GlideException {
        List<Throwable> list = (List) j.a(this.f7597b.a(), "Argument must not be null");
        try {
            return a(eVar, hVar, i, i2, aVar, list);
        } finally {
            this.f7597b.a(list);
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f7598c.toArray()) + '}';
    }
}
