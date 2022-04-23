package com.bumptech.glide;

import com.bumptech.glide.c;
import com.bumptech.glide.e.g;
import com.bumptech.glide.f;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.b.a;
import com.bumptech.glide.load.engine.b.h;
import com.bumptech.glide.load.engine.b.i;
import com.bumptech.glide.load.engine.k;
import com.bumptech.glide.manager.o;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d.class */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    k f7239c;

    /* renamed from: d  reason: collision with root package name */
    e f7240d;
    com.bumptech.glide.load.engine.a.b e;
    public h f;
    com.bumptech.glide.load.engine.c.a g;
    public com.bumptech.glide.load.engine.c.a h;
    a.AbstractC0146a i;
    i j;
    com.bumptech.glide.manager.d k;
    o.a n;
    com.bumptech.glide.load.engine.c.a o;
    boolean p;
    List<g<Object>> q;

    /* renamed from: a  reason: collision with root package name */
    final Map<Class<?>, l<?, ?>> f7237a = new androidx.b.a();

    /* renamed from: b  reason: collision with root package name */
    final f.a f7238b = new f.a();
    public int l = 4;
    c.a m = new c.a() { // from class: com.bumptech.glide.d.1
        @Override // com.bumptech.glide.c.a
        public final com.bumptech.glide.e.h a() {
            return new com.bumptech.glide.e.h();
        }
    };

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$a.class */
    static final class a {
        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$b.class */
    public static final class b {
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$c.class */
    public static final class c {
        private c() {
        }
    }

    public final d a(final com.bumptech.glide.e.h hVar) {
        this.m = (c.a) j.a(new c.a() { // from class: com.bumptech.glide.d.2
            @Override // com.bumptech.glide.c.a
            public final com.bumptech.glide.e.h a() {
                com.bumptech.glide.e.h hVar2 = hVar;
                return hVar2 != null ? hVar2 : new com.bumptech.glide.e.h();
            }
        }, "Argument must not be null");
        return this;
    }
}
