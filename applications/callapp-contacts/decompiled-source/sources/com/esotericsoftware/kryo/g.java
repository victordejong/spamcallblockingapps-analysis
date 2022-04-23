package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.c.n;
import org.objenesis.a.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final Class f19039a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f19040b;

    /* renamed from: c  reason: collision with root package name */
    public final int f19041c;

    /* renamed from: d  reason: collision with root package name */
    public h f19042d;
    a e;

    public g(Class cls, h hVar, int i) {
        if (cls == null) {
            throw new IllegalArgumentException("type cannot be null.");
        } else if (hVar != null) {
            this.f19039a = cls;
            this.f19042d = hVar;
            this.f19041c = i;
            this.f19040b = n.b(cls.getName());
        } else {
            throw new IllegalArgumentException("serializer cannot be null.");
        }
    }

    public final void a(h hVar) {
        if (hVar != null) {
            this.f19042d = hVar;
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Update registered serializer: " + this.f19039a.getName() + " (" + hVar.getClass().getName() + ")");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public final String toString() {
        return "[" + this.f19041c + ", " + n.d(this.f19039a) + "]";
    }
}
