package com.esotericsoftware.kryo.p278c;

import com.esotericsoftware.kryo.AbstractC9411f;
import com.esotericsoftware.kryo.C9380c;
import java.util.ArrayList;
/* renamed from: com.esotericsoftware.kryo.c.k */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/k.class */
public final class C9399k implements AbstractC9411f {

    /* renamed from: a */
    protected C9380c f32322a;

    /* renamed from: b */
    protected final C9393h<Object> f32323b;

    /* renamed from: c */
    protected final ArrayList<Object> f32324c;

    /* renamed from: d */
    private final int f32325d;

    public C9399k() {
        this(2048);
    }

    public C9399k(int i) {
        this.f32323b = new C9393h<>();
        this.f32324c = new ArrayList<>();
        this.f32325d = i;
    }

    @Override // com.esotericsoftware.kryo.AbstractC9411f
    /* renamed from: a */
    public final int mo24287a() {
        int size = this.f32324c.size();
        this.f32324c.add(null);
        return size;
    }

    @Override // com.esotericsoftware.kryo.AbstractC9411f
    /* renamed from: a */
    public final int mo24282a(Object obj) {
        return this.f32323b.m24321b(obj, -1);
    }

    @Override // com.esotericsoftware.kryo.AbstractC9411f
    /* renamed from: a */
    public final Object mo24286a(int i) {
        return this.f32324c.get(i);
    }

    @Override // com.esotericsoftware.kryo.AbstractC9411f
    /* renamed from: a */
    public final void mo24285a(int i, Object obj) {
        this.f32324c.set(i, obj);
    }

    @Override // com.esotericsoftware.kryo.AbstractC9411f
    /* renamed from: a */
    public final void mo24284a(C9380c c9380c) {
        this.f32322a = c9380c;
    }

    @Override // com.esotericsoftware.kryo.AbstractC9411f
    /* renamed from: a */
    public final boolean mo24283a(Class cls) {
        return !C9408n.m24297b(cls) && !C9408n.m24294c(cls);
    }

    @Override // com.esotericsoftware.kryo.AbstractC9411f
    /* renamed from: b */
    public final int mo24280b(Object obj) {
        int i = this.f32323b.f32326a;
        this.f32323b.m24324a(obj, i);
        return i;
    }

    @Override // com.esotericsoftware.kryo.AbstractC9411f
    /* renamed from: b */
    public final void mo24281b() {
        int size = this.f32324c.size();
        this.f32324c.clear();
        if (size > this.f32325d) {
            this.f32324c.trimToSize();
            this.f32324c.ensureCapacity(this.f32325d);
        }
        this.f32323b.m24326a(this.f32325d);
    }
}
