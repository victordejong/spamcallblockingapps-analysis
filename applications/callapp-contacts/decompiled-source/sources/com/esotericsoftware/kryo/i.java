package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.c.n;
import com.esotericsoftware.kryo.h;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i.class */
public interface i<T extends h> {

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i$a.class */
    public static abstract class a<T extends h> implements i<T> {
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i$b.class */
    public static final class b extends a<FieldSerializer> {

        /* renamed from: a  reason: collision with root package name */
        private final FieldSerializer.c f19043a;

        public b() {
            this.f19043a = new FieldSerializer.c();
        }

        public b(FieldSerializer.c cVar) {
            this.f19043a = cVar;
        }

        @Override // com.esotericsoftware.kryo.i
        public final /* synthetic */ h a(com.esotericsoftware.kryo.c cVar, Class cls) {
            return new FieldSerializer(cVar, cls, this.f19043a.clone());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i$c.class */
    public static class c<T extends h> extends a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<T> f19044a;

        public c(Class<T> cls) {
            this.f19044a = cls;
        }

        private static <T extends h> T a(com.esotericsoftware.kryo.c cVar, Class<T> cls, Class cls2) {
            try {
                try {
                    return cls.getConstructor(com.esotericsoftware.kryo.c.class, Class.class).newInstance(cVar, cls2);
                } catch (NoSuchMethodException e) {
                    try {
                        return cls.getConstructor(com.esotericsoftware.kryo.c.class).newInstance(cVar);
                    } catch (NoSuchMethodException e2) {
                        try {
                            return cls.getConstructor(Class.class).newInstance(cls2);
                        } catch (NoSuchMethodException e3) {
                            return cls.newInstance();
                        }
                    }
                }
            } catch (Exception e4) {
                throw new IllegalArgumentException("Unable to create serializer \"" + cls.getName() + "\" for class: " + n.d(cls2), e4);
            }
        }

        @Override // com.esotericsoftware.kryo.i
        public final T a(com.esotericsoftware.kryo.c cVar, Class cls) {
            return (T) a(cVar, this.f19044a, cls);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/i$d.class */
    public static final class d<T extends h> extends a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T f19045a;

        public d(T t) {
            this.f19045a = t;
        }

        @Override // com.esotericsoftware.kryo.i
        public final T a(com.esotericsoftware.kryo.c cVar, Class cls) {
            return this.f19045a;
        }
    }

    T a(com.esotericsoftware.kryo.c cVar, Class cls);
}
