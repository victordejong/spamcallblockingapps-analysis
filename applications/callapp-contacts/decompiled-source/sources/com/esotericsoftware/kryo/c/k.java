package com.esotericsoftware.kryo.c;

import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.f;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/k.class */
public final class k implements f {

    /* renamed from: a  reason: collision with root package name */
    protected c f19012a;

    /* renamed from: b  reason: collision with root package name */
    protected final h<Object> f19013b;

    /* renamed from: c  reason: collision with root package name */
    protected final ArrayList<Object> f19014c;

    /* renamed from: d  reason: collision with root package name */
    private final int f19015d;

    public k() {
        this(2048);
    }

    public k(int i) {
        this.f19013b = new h<>();
        this.f19014c = new ArrayList<>();
        this.f19015d = i;
    }

    @Override // com.esotericsoftware.kryo.f
    public final int a() {
        int size = this.f19014c.size();
        this.f19014c.add(null);
        return size;
    }

    @Override // com.esotericsoftware.kryo.f
    public final int a(Object obj) {
        return this.f19013b.b(obj, -1);
    }

    @Override // com.esotericsoftware.kryo.f
    public final Object a(int i) {
        return this.f19014c.get(i);
    }

    @Override // com.esotericsoftware.kryo.f
    public final void a(int i, Object obj) {
        this.f19014c.set(i, obj);
    }

    @Override // com.esotericsoftware.kryo.f
    public final void a(c cVar) {
        this.f19012a = cVar;
    }

    @Override // com.esotericsoftware.kryo.f
    public final boolean a(Class cls) {
        return !n.b(cls) && !n.c(cls);
    }

    @Override // com.esotericsoftware.kryo.f
    public final int b(Object obj) {
        int i = this.f19013b.f19016a;
        this.f19013b.a(obj, i);
        return i;
    }

    @Override // com.esotericsoftware.kryo.f
    public final void b() {
        int size = this.f19014c.size();
        this.f19014c.clear();
        if (size > this.f19015d) {
            this.f19014c.trimToSize();
            this.f19014c.ensureCapacity(this.f19015d);
        }
        this.f19013b.a(this.f19015d);
    }
}
