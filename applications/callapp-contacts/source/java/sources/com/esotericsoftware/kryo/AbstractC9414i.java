package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.p278c.C9408n;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
/* renamed from: com.esotericsoftware.kryo.i */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i.class */
public interface AbstractC9414i<T extends AbstractC9413h> {

    /* renamed from: com.esotericsoftware.kryo.i$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i$a.class */
    public static abstract class AbstractC9415a<T extends AbstractC9413h> implements AbstractC9414i<T> {
    }

    /* renamed from: com.esotericsoftware.kryo.i$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i$b.class */
    public static final class C9416b extends AbstractC9415a<FieldSerializer> {

        /* renamed from: a */
        private final FieldSerializer.C9421c f32365a;

        public C9416b() {
            this.f32365a = new FieldSerializer.C9421c();
        }

        public C9416b(FieldSerializer.C9421c c9421c) {
            this.f32365a = c9421c;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9414i
        /* renamed from: a */
        public final /* synthetic */ AbstractC9413h mo24277a(C9380c c9380c, Class cls) {
            return new FieldSerializer(c9380c, cls, this.f32365a.clone());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.i$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i$c.class */
    public static class C9417c<T extends AbstractC9413h> extends AbstractC9415a<T> {

        /* renamed from: a */
        private final Class<T> f32366a;

        public C9417c(Class<T> cls) {
            this.f32366a = cls;
        }

        /* renamed from: a */
        private static <T extends AbstractC9413h> T m24278a(C9380c c9380c, Class<T> cls, Class cls2) {
            try {
                try {
                    return cls.getConstructor(C9380c.class, Class.class).newInstance(c9380c, cls2);
                } catch (NoSuchMethodException e) {
                    try {
                        return cls.getConstructor(C9380c.class).newInstance(c9380c);
                    } catch (NoSuchMethodException e2) {
                        try {
                            return cls.getConstructor(Class.class).newInstance(cls2);
                        } catch (NoSuchMethodException e3) {
                            return cls.newInstance();
                        }
                    }
                }
            } catch (Exception e4) {
                throw new IllegalArgumentException("Unable to create serializer \"" + cls.getName() + "\" for class: " + C9408n.m24292d(cls2), e4);
            }
        }

        @Override // com.esotericsoftware.kryo.AbstractC9414i
        /* renamed from: a */
        public final T mo24277a(C9380c c9380c, Class cls) {
            return (T) m24278a(c9380c, this.f32366a, cls);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.i$d */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i$d.class */
    public static final class C9418d<T extends AbstractC9413h> extends AbstractC9415a<T> {

        /* renamed from: a */
        private final T f32367a;

        public C9418d(T t) {
            this.f32367a = t;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9414i
        /* renamed from: a */
        public final T mo24277a(C9380c c9380c, Class cls) {
            return this.f32367a;
        }
    }

    /* renamed from: a */
    T mo24277a(C9380c c9380c, Class cls);
}
