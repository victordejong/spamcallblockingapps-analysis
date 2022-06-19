package com.bumptech.glide.load.p214j;

import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4382j;
/* renamed from: com.bumptech.glide.load.j.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/b.class */
public class C4239b<T> implements AbstractC4083s<T> {

    /* renamed from: d */
    protected final T f13136d;

    public C4239b(T t) {
        this.f13136d = (T) C4382j.m22719d(t);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: a */
    public void mo22858a() {
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: c */
    public final int mo22856c() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: d */
    public Class<T> mo22855d() {
        return (Class<T>) this.f13136d.getClass();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    public final T get() {
        return this.f13136d;
    }
}
