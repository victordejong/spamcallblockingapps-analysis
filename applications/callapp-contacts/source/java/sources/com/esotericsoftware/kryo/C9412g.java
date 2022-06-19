package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.p278c.C9408n;
import com.esotericsoftware.p274b.C9366a;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: com.esotericsoftware.kryo.g */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/g.class */
public final class C9412g {

    /* renamed from: a */
    public final Class f32360a;

    /* renamed from: b */
    public final boolean f32361b;

    /* renamed from: c */
    public final int f32362c;

    /* renamed from: d */
    public AbstractC9413h f32363d;

    /* renamed from: e */
    AbstractC21005a f32364e;

    public C9412g(Class cls, AbstractC9413h abstractC9413h, int i) {
        if (cls != null) {
            if (abstractC9413h == null) {
                throw new IllegalArgumentException("serializer cannot be null.");
            }
            this.f32360a = cls;
            this.f32363d = abstractC9413h;
            this.f32362c = i;
            this.f32361b = C9408n.m24295b(cls.getName());
            return;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    /* renamed from: a */
    public final void m24279a(AbstractC9413h abstractC9413h) {
        if (abstractC9413h != null) {
            this.f32363d = abstractC9413h;
            if (!C9366a.f32190e) {
                return;
            }
            C9366a.m24494b("kryo", "Update registered serializer: " + this.f32360a.getName() + " (" + abstractC9413h.getClass().getName() + ")");
            return;
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public final String toString() {
        return "[" + this.f32362c + ", " + C9408n.m24292d(this.f32360a) + "]";
    }
}
