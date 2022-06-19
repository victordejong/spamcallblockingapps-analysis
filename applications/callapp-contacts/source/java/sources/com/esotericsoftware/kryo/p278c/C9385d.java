package com.esotericsoftware.kryo.p278c;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.p275c.AbstractC9369b;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import org.objenesis.p596a.AbstractC21005a;
import org.objenesis.p603b.AbstractC21022b;
/* renamed from: com.esotericsoftware.kryo.c.d */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/d.class */
public final class C9385d implements AbstractC21022b {

    /* renamed from: a */
    public AbstractC21022b f32289a;

    public C9385d() {
    }

    public C9385d(AbstractC21022b abstractC21022b) {
        this.f32289a = abstractC21022b;
    }

    @Override // org.objenesis.p603b.AbstractC21022b
    /* renamed from: a */
    public final AbstractC21005a mo125a(final Class cls) {
        Constructor constructor;
        if (!C9408n.f32357a) {
            if (!(cls.getEnclosingClass() != null && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers()))) {
                try {
                    final AbstractC9369b m24483a = AbstractC9369b.m24483a(cls);
                    return new AbstractC21005a() { // from class: com.esotericsoftware.kryo.c.d.1
                        @Override // org.objenesis.p596a.AbstractC21005a
                        /* renamed from: a */
                        public final Object mo133a() {
                            try {
                                return m24483a.m24484a();
                            } catch (Exception e) {
                                throw new KryoException("Error constructing instance of class: " + C9408n.m24292d(cls), e);
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
                AbstractC21022b abstractC21022b = this.f32289a;
                if (abstractC21022b != null) {
                    return abstractC21022b.mo125a(cls);
                }
                if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
                    throw new KryoException("Class cannot be created (non-static member class): " + C9408n.m24292d(cls));
                }
                StringBuilder sb = new StringBuilder("Class cannot be created (missing no-arg constructor): " + C9408n.m24292d(cls));
                if (cls.getSimpleName().equals("")) {
                    sb.append("\nNote: This is an anonymous class, which is not serializable by default in Kryo. Possible solutions:\n1. Remove uses of anonymous classes, including double brace initialization, from the containing\nclass. This is the safest solution, as anonymous classes don't have predictable names for serialization.\n2. Register a FieldSerializer for the containing class and call FieldSerializer\n");
                    sb.append("setIgnoreSyntheticFields(false) on it. This is not safe but may be sufficient temporarily.");
                }
                throw new KryoException(sb.toString());
            }
        } catch (Exception e3) {
            constructor = cls.getDeclaredConstructor(null);
            constructor.setAccessible(true);
        }
        final Constructor constructor2 = constructor;
        return new AbstractC21005a() { // from class: com.esotericsoftware.kryo.c.d.2
            @Override // org.objenesis.p596a.AbstractC21005a
            /* renamed from: a */
            public final Object mo133a() {
                try {
                    return constructor2.newInstance(new Object[0]);
                } catch (Exception e4) {
                    throw new KryoException("Error constructing instance of class: " + C9408n.m24292d(cls), e4);
                }
            }
        };
    }
}
