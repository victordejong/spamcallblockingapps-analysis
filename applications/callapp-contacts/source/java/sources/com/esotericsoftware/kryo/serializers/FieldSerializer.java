package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.AbstractC9414i;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.kryo.p278c.AbstractC9388e;
import com.esotericsoftware.kryo.p278c.C9408n;
import com.esotericsoftware.p274b.C9366a;
import com.esotericsoftware.p275c.AbstractC9370c;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer.class */
public class FieldSerializer<T> extends AbstractC9413h<T> {
    final C9434b cachedFields;
    final C9421c config;
    private final AbstractC9388e.C9390b genericsHierarchy;
    final C9380c kryo;
    final Class type;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.esotericsoftware.kryo.serializers.FieldSerializer$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$a.class */
    public @interface AbstractC9419a {
        /* renamed from: a */
        Class m24276a() default Object.class;

        /* renamed from: b */
        Class<? extends AbstractC9413h> m24275b() default AbstractC9413h.class;

        /* renamed from: c */
        Class<? extends AbstractC9414i> m24274c() default AbstractC9414i.class;

        /* renamed from: d */
        boolean m24273d() default true;

        /* renamed from: e */
        boolean m24272e() default true;

        /* renamed from: f */
        boolean m24271f() default false;
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.FieldSerializer$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$b.class */
    public static abstract class AbstractC9420b {

        /* renamed from: a */
        final Field f32368a;

        /* renamed from: b */
        String f32369b;

        /* renamed from: c */
        Class f32370c;

        /* renamed from: d */
        AbstractC9413h f32371d;

        /* renamed from: e */
        boolean f32372e;

        /* renamed from: g */
        boolean f32374g;

        /* renamed from: i */
        AbstractC9370c f32376i;

        /* renamed from: k */
        long f32378k;

        /* renamed from: f */
        boolean f32373f = true;

        /* renamed from: h */
        boolean f32375h = true;

        /* renamed from: j */
        int f32377j = -1;

        public AbstractC9420b(Field field) {
            this.f32368a = field;
        }

        /* renamed from: a */
        public abstract void mo24203a(C9374a c9374a, Object obj);

        /* renamed from: a */
        public abstract void mo24202a(C9376c c9376c, Object obj);

        /* renamed from: b */
        public abstract void mo24201b(Object obj, Object obj2);

        public String toString() {
            return this.f32369b;
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.FieldSerializer$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$c.class */
    public static class C9421c implements Cloneable {

        /* renamed from: g */
        boolean f32382g;

        /* renamed from: i */
        boolean f32384i;

        /* renamed from: k */
        boolean f32386k;

        /* renamed from: d */
        boolean f32379d = true;

        /* renamed from: e */
        boolean f32380e = true;

        /* renamed from: f */
        boolean f32381f = true;

        /* renamed from: h */
        boolean f32383h = true;

        /* renamed from: j */
        boolean f32385j = true;

        /* renamed from: a */
        public C9421c clone() {
            try {
                return (C9421c) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new KryoException(e);
            }
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.esotericsoftware.kryo.serializers.FieldSerializer$d */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$d.class */
    public @interface AbstractC9422d {
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.esotericsoftware.kryo.serializers.FieldSerializer$e */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$e.class */
    public @interface AbstractC9423e {
        /* renamed from: a */
        String m24270a();
    }

    public FieldSerializer(C9380c c9380c, Class cls) {
        this(c9380c, cls, new C9421c());
    }

    public FieldSerializer(C9380c c9380c, Class cls, C9421c c9421c) {
        if (cls != null) {
            if (cls.isPrimitive()) {
                throw new IllegalArgumentException("type cannot be a primitive class: ".concat(String.valueOf(cls)));
            }
            if (c9421c == null) {
                throw new IllegalArgumentException("config cannot be null.");
            }
            this.kryo = c9380c;
            this.type = cls;
            this.config = c9421c;
            this.genericsHierarchy = new AbstractC9388e.C9390b(cls);
            C9434b c9434b = new C9434b(this);
            this.cachedFields = c9434b;
            c9434b.m24269a();
            return;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public T copy(C9380c c9380c, T t) {
        T createCopy = createCopy(c9380c, t);
        c9380c.m24381a(createCopy);
        int length = this.cachedFields.f32390d.length;
        for (int i = 0; i < length; i++) {
            this.cachedFields.f32390d[i].mo24201b(t, createCopy);
        }
        return createCopy;
    }

    public T create(C9380c c9380c, C9374a c9374a, Class<? extends T> cls) {
        return (T) c9380c.m24370e(cls);
    }

    protected T createCopy(C9380c c9380c, T t) {
        return (T) c9380c.m24370e(t.getClass());
    }

    public AbstractC9420b[] getCopyFields() {
        return this.cachedFields.f32390d;
    }

    public AbstractC9420b getField(String str) {
        AbstractC9420b[] abstractC9420bArr;
        for (AbstractC9420b abstractC9420b : this.cachedFields.f32389c) {
            if (abstractC9420b.f32369b.equals(str)) {
                return abstractC9420b;
            }
        }
        throw new IllegalArgumentException("Field \"" + str + "\" not found on class: " + this.type.getName());
    }

    public C9421c getFieldSerializerConfig() {
        return this.config;
    }

    public AbstractC9420b[] getFields() {
        return this.cachedFields.f32389c;
    }

    public C9380c getKryo() {
        return this.kryo;
    }

    public Class getType() {
        return this.type;
    }

    public void initializeCachedFields() {
    }

    public void log(String str, AbstractC9420b abstractC9420b, int i) {
        String str2;
        if (abstractC9420b instanceof C9504m) {
            C9504m c9504m = (C9504m) abstractC9420b;
            Class<?> m24214a = c9504m.m24214a();
            Class<?> cls = m24214a;
            if (m24214a == null) {
                cls = abstractC9420b.f32368a.getType();
            }
            str2 = C9408n.m24302a(cls, c9504m.f32423m);
        } else {
            str2 = abstractC9420b.f32370c != null ? abstractC9420b.f32370c.getSimpleName() : abstractC9420b.f32368a.getType().getSimpleName();
        }
        C9366a.m24494b("kryo", str + " field " + str2 + ": " + abstractC9420b.f32369b + " (" + C9408n.m24292d(abstractC9420b.f32368a.getDeclaringClass()) + ')' + C9408n.m24304a(i));
    }

    public void popTypeVariables(int i) {
        AbstractC9388e generics = this.kryo.getGenerics();
        if (i > 0) {
            generics.mo24347a(i);
        }
        generics.mo24348a();
    }

    public int pushTypeVariables() {
        AbstractC9388e.C9389a[] mo24343b = this.kryo.getGenerics().mo24343b();
        if (mo24343b == null) {
            return 0;
        }
        int mo24345a = this.kryo.getGenerics().mo24345a(this.genericsHierarchy, mo24343b);
        if (C9366a.f32190e && mo24345a > 0) {
            C9366a.m24494b("kryo", "Generics: " + this.kryo.getGenerics());
        }
        return mo24345a;
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public T read(C9380c c9380c, C9374a c9374a, Class<? extends T> cls) {
        int pushTypeVariables = pushTypeVariables();
        T create = create(c9380c, c9374a, cls);
        c9380c.m24381a(create);
        AbstractC9420b[] abstractC9420bArr = this.cachedFields.f32389c;
        int length = abstractC9420bArr.length;
        for (int i = 0; i < length; i++) {
            if (C9366a.f32190e) {
                log("Read", abstractC9420bArr[i], c9374a.m24458b());
            }
            abstractC9420bArr[i].mo24203a(c9374a, create);
        }
        popTypeVariables(pushTypeVariables);
        return create;
    }

    public void removeField(AbstractC9420b abstractC9420b) {
        boolean z;
        C9434b c9434b = this.cachedFields;
        int i = 0;
        while (true) {
            if (i >= c9434b.f32389c.length) {
                z = false;
                break;
            }
            AbstractC9420b abstractC9420b2 = c9434b.f32389c[i];
            if (abstractC9420b2 == abstractC9420b) {
                int length = c9434b.f32389c.length - 1;
                AbstractC9420b[] abstractC9420bArr = new AbstractC9420b[length];
                System.arraycopy(c9434b.f32389c, 0, abstractC9420bArr, 0, i);
                System.arraycopy(c9434b.f32389c, i + 1, abstractC9420bArr, i, length - i);
                c9434b.f32389c = abstractC9420bArr;
                c9434b.f32391e.add(abstractC9420b2.f32368a);
                z = true;
                break;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= c9434b.f32390d.length) {
                break;
            }
            AbstractC9420b abstractC9420b3 = c9434b.f32390d[i2];
            if (abstractC9420b3 == abstractC9420b) {
                int length2 = c9434b.f32390d.length - 1;
                AbstractC9420b[] abstractC9420bArr2 = new AbstractC9420b[length2];
                System.arraycopy(c9434b.f32390d, 0, abstractC9420bArr2, 0, i2);
                System.arraycopy(c9434b.f32390d, i2 + 1, abstractC9420bArr2, i2, length2 - i2);
                c9434b.f32390d = abstractC9420bArr2;
                c9434b.f32391e.add(abstractC9420b3.f32368a);
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Field \"" + abstractC9420b + "\" not found on class: " + c9434b.f32388b.type.getName());
    }

    public void removeField(String str) {
        boolean z;
        C9434b c9434b = this.cachedFields;
        int i = 0;
        while (true) {
            if (i >= c9434b.f32389c.length) {
                z = false;
                break;
            }
            AbstractC9420b abstractC9420b = c9434b.f32389c[i];
            if (abstractC9420b.f32369b.equals(str)) {
                int length = c9434b.f32389c.length - 1;
                AbstractC9420b[] abstractC9420bArr = new AbstractC9420b[length];
                System.arraycopy(c9434b.f32389c, 0, abstractC9420bArr, 0, i);
                System.arraycopy(c9434b.f32389c, i + 1, abstractC9420bArr, i, length - i);
                c9434b.f32389c = abstractC9420bArr;
                c9434b.f32391e.add(abstractC9420b.f32368a);
                z = true;
                break;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= c9434b.f32390d.length) {
                break;
            }
            AbstractC9420b abstractC9420b2 = c9434b.f32390d[i2];
            if (abstractC9420b2.f32369b.equals(str)) {
                int length2 = c9434b.f32390d.length - 1;
                AbstractC9420b[] abstractC9420bArr2 = new AbstractC9420b[length2];
                System.arraycopy(c9434b.f32390d, 0, abstractC9420bArr2, 0, i2);
                System.arraycopy(c9434b.f32390d, i2 + 1, abstractC9420bArr2, i2, length2 - i2);
                c9434b.f32390d = abstractC9420bArr2;
                c9434b.f32391e.add(abstractC9420b2.f32368a);
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Field \"" + str + "\" not found on class: " + c9434b.f32388b.type.getName());
    }

    public void updateFields() {
        if (C9366a.f32190e) {
            C9366a.m24494b("kryo", "Update fields: " + C9408n.m24292d(this.type));
        }
        this.cachedFields.m24269a();
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public void write(C9380c c9380c, C9376c c9376c, T t) {
        int pushTypeVariables = pushTypeVariables();
        AbstractC9420b[] abstractC9420bArr = this.cachedFields.f32389c;
        int length = abstractC9420bArr.length;
        for (int i = 0; i < length; i++) {
            if (C9366a.f32190e) {
                log("Write", abstractC9420bArr[i], c9376c.m24404b());
            }
            abstractC9420bArr[i].mo24202a(c9376c, t);
        }
        popTypeVariables(pushTypeVariables);
    }
}
