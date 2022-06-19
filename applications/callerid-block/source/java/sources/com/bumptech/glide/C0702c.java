package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.C0707e;
import com.bumptech.glide.ComponentCallbacks2C0700b;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import com.bumptech.glide.load.engine.p020x.AbstractC0770e;
import com.bumptech.glide.load.engine.p021y.AbstractC0775a;
import com.bumptech.glide.load.engine.p021y.AbstractC0781h;
import com.bumptech.glide.load.engine.p021y.C0783i;
import com.bumptech.glide.load.engine.p022z.ExecutorServiceC0787a;
import com.bumptech.glide.load.engine.x.j;
import com.bumptech.glide.load.engine.x.k;
import com.bumptech.glide.load.engine.y.g;
import com.bumptech.glide.manager.AbstractC0835d;
import com.bumptech.glide.manager.C0839o;
import com.bumptech.glide.manager.f;
import com.bumptech.glide.request.AbstractC0868d;
import d.e.a;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c.class */
public final class C0702c {

    /* renamed from: c */
    private i f3392c;

    /* renamed from: d */
    private AbstractC0770e f3393d;

    /* renamed from: e */
    private AbstractC0768b f3394e;

    /* renamed from: f */
    private AbstractC0781h f3395f;

    /* renamed from: g */
    private ExecutorServiceC0787a f3396g;

    /* renamed from: h */
    private ExecutorServiceC0787a f3397h;

    /* renamed from: i */
    private AbstractC0775a.AbstractC0776a f3398i;

    /* renamed from: j */
    private C0783i f3399j;

    /* renamed from: k */
    private AbstractC0835d f3400k;

    /* renamed from: n */
    private C0839o.AbstractC0840b f3403n;

    /* renamed from: o */
    private ExecutorServiceC0787a f3404o;

    /* renamed from: p */
    private boolean f3405p;

    /* renamed from: q */
    private List<AbstractC0868d<Object>> f3406q;

    /* renamed from: a */
    private final Map<Class<?>, AbstractC0710i<?, ?>> f3390a = new a();

    /* renamed from: b */
    private final C0707e.C0708a f3391b = new C0707e.C0708a();

    /* renamed from: l */
    private int f3401l = 4;

    /* renamed from: m */
    private ComponentCallbacks2C0700b.AbstractC0701a f3402m = new a(this);

    /* renamed from: com.bumptech.glide.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c$b.class */
    static final class C0703b {
        C0703b() {
        }
    }

    /* renamed from: com.bumptech.glide.c$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c$c.class */
    public static final class C0704c {
    }

    /* renamed from: com.bumptech.glide.c$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c$d.class */
    public static final class C0705d {
        private C0705d() {
        }
    }

    /* renamed from: a */
    public ComponentCallbacks2C0700b m11327a(Context context) {
        if (this.f3396g == null) {
            this.f3396g = ExecutorServiceC0787a.m11010i();
        }
        if (this.f3397h == null) {
            this.f3397h = ExecutorServiceC0787a.m11012g();
        }
        if (this.f3404o == null) {
            this.f3404o = ExecutorServiceC0787a.m11014d();
        }
        if (this.f3399j == null) {
            this.f3399j = new C0783i.C0784a(context).m11021a();
        }
        if (this.f3400k == null) {
            this.f3400k = new f();
        }
        if (this.f3393d == null) {
            int m11026b = this.f3399j.m11026b();
            if (m11026b > 0) {
                this.f3393d = new k(m11026b);
            } else {
                this.f3393d = new com.bumptech.glide.load.engine.x.f();
            }
        }
        if (this.f3394e == null) {
            this.f3394e = new j(this.f3399j.m11027a());
        }
        if (this.f3395f == null) {
            this.f3395f = new g(this.f3399j.m11024d());
        }
        if (this.f3398i == null) {
            this.f3398i = new com.bumptech.glide.load.engine.y.f(context);
        }
        if (this.f3392c == null) {
            this.f3392c = new i(this.f3395f, this.f3398i, this.f3397h, this.f3396g, ExecutorServiceC0787a.m11009j(), this.f3404o, this.f3405p);
        }
        List<AbstractC0868d<Object>> list = this.f3406q;
        this.f3406q = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        C0707e m11314b = this.f3391b.m11314b();
        return new ComponentCallbacks2C0700b(context, this.f3392c, this.f3395f, this.f3393d, this.f3394e, new C0839o(this.f3403n, m11314b), this.f3400k, this.f3401l, this.f3402m, this.f3390a, this.f3406q, m11314b);
    }

    /* renamed from: b */
    public void m11326b(C0839o.AbstractC0840b abstractC0840b) {
        this.f3403n = abstractC0840b;
    }
}
