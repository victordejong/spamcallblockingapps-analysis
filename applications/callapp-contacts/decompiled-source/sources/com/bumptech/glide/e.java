package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import com.bumptech.glide.c;
import com.bumptech.glide.e.g;
import com.bumptech.glide.e.h;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.k;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e.class */
public final class e extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    static final l<?, ?> f7261a = new b();

    /* renamed from: b  reason: collision with root package name */
    public final b f7262b;

    /* renamed from: c  reason: collision with root package name */
    public final Registry f7263c;

    /* renamed from: d  reason: collision with root package name */
    final List<g<Object>> f7264d;
    final Map<Class<?>, l<?, ?>> e;
    final k f;
    public final f g;
    public final int h;
    private final com.bumptech.glide.e.a.g i;
    private final c.a j;
    private h k;

    public e(Context context, b bVar, Registry registry, com.bumptech.glide.e.a.g gVar, c.a aVar, Map<Class<?>, l<?, ?>> map, List<g<Object>> list, k kVar, f fVar, int i) {
        super(context.getApplicationContext());
        this.f7262b = bVar;
        this.f7263c = registry;
        this.i = gVar;
        this.j = aVar;
        this.f7264d = list;
        this.e = map;
        this.f = kVar;
        this.g = fVar;
        this.h = i;
    }

    public final h a() {
        h hVar;
        synchronized (this) {
            if (this.k == null) {
                this.k = this.j.a().j();
            }
            hVar = this.k;
        }
        return hVar;
    }
}
