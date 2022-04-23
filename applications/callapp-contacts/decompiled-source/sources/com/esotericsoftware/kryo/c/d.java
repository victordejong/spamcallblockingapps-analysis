package com.esotericsoftware.kryo.c;

import com.esotericsoftware.kryo.KryoException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import org.objenesis.a.a;
import org.objenesis.b.b;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/d.class */
public final class d implements b {

    /* renamed from: a  reason: collision with root package name */
    public b f18986a;

    public d() {
    }

    public d(b bVar) {
        this.f18986a = bVar;
    }

    @Override // org.objenesis.b.b
    public final a a(final Class cls) {
        final Constructor constructor;
        if (!n.f19036a) {
            if (!(cls.getEnclosingClass() != null && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers()))) {
                try {
                    final com.esotericsoftware.c.b a2 = com.esotericsoftware.c.b.a(cls);
                    return new a() { // from class: com.esotericsoftware.kryo.c.d.1
                        @Override // org.objenesis.a.a
                        public final Object a() {
                            try {
                                return a2.a();
                            } catch (Exception e) {
                                throw new KryoException("Error constructing instance of class: " + n.d(cls), e);
                            }
                        }
                    };
                } catch (Exception e) {
                }
            }
        }
        try {
            try {
                constructor = cls.getConstructor(null);
            } catch (Exception e2) {
                b bVar = this.f18986a;
                if (bVar != null) {
                    return bVar.a(cls);
                }
                if (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
                    StringBuilder sb = new StringBuilder("Class cannot be created (missing no-arg constructor): " + n.d(cls));
                    if (cls.getSimpleName().equals("")) {
                        sb.append("\nNote: This is an anonymous class, which is not serializable by default in Kryo. Possible solutions:\n1. Remove uses of anonymous classes, including double brace initialization, from the containing\nclass. This is the safest solution, as anonymous classes don't have predictable names for serialization.\n2. Register a FieldSerializer for the containing class and call FieldSerializer\n");
                        sb.append("setIgnoreSyntheticFields(false) on it. This is not safe but may be sufficient temporarily.");
                    }
                    throw new KryoException(sb.toString());
                }
                throw new KryoException("Class cannot be created (non-static member class): " + n.d(cls));
            }
        } catch (Exception e3) {
            constructor = cls.getDeclaredConstructor(null);
            constructor.setAccessible(true);
        }
        return new a() { // from class: com.esotericsoftware.kryo.c.d.2
            @Override // org.objenesis.a.a
            public final Object a() {
                try {
                    return constructor.newInstance(new Object[0]);
                } catch (Exception e4) {
                    throw new KryoException("Error constructing instance of class: " + n.d(cls), e4);
                }
            }
        };
    }
}
