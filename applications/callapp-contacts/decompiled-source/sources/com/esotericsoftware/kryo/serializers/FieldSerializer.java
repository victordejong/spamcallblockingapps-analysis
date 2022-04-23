package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.c.e;
import com.esotericsoftware.kryo.c.n;
import com.esotericsoftware.kryo.h;
import com.esotericsoftware.kryo.i;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer.class */
public class FieldSerializer<T> extends h<T> {
    final com.esotericsoftware.kryo.serializers.b cachedFields;
    final c config;
    private final e.b genericsHierarchy;
    final com.esotericsoftware.kryo.c kryo;
    final Class type;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$a.class */
    public @interface a {
        Class a() default Object.class;

        Class<? extends h> b() default h.class;

        Class<? extends i> c() default i.class;

        boolean d() default true;

        boolean e() default true;

        boolean f() default false;
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$b.class */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        final Field f19046a;

        /* renamed from: b  reason: collision with root package name */
        String f19047b;

        /* renamed from: c  reason: collision with root package name */
        Class f19048c;

        /* renamed from: d  reason: collision with root package name */
        h f19049d;
        boolean e;
        boolean g;
        com.esotericsoftware.c.c i;
        long k;
        boolean f = true;
        boolean h = true;
        int j = -1;

        public b(Field field) {
            this.f19046a = field;
        }

        public abstract void a(com.esotericsoftware.kryo.a.a aVar, Object obj);

        public abstract void a(com.esotericsoftware.kryo.a.c cVar, Object obj);

        public abstract void b(Object obj, Object obj2);

        public String toString() {
            return this.f19047b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$c.class */
    public static class c implements Cloneable {
        boolean g;
        boolean i;
        boolean k;

        /* renamed from: d  reason: collision with root package name */
        boolean f19050d = true;
        boolean e = true;
        boolean f = true;
        boolean h = true;
        boolean j = true;

        /* renamed from: a */
        public c clone() {
            try {
                return (c) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new KryoException(e);
            }
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$d.class */
    public @interface d {
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/FieldSerializer$e.class */
    public @interface e {
        String a();
    }

    public FieldSerializer(com.esotericsoftware.kryo.c cVar, Class cls) {
        this(cVar, cls, new c());
    }

    public FieldSerializer(com.esotericsoftware.kryo.c cVar, Class cls, c cVar2) {
        if (cls == null) {
            throw new IllegalArgumentException("type cannot be null.");
        } else if (cls.isPrimitive()) {
            throw new IllegalArgumentException("type cannot be a primitive class: ".concat(String.valueOf(cls)));
        } else if (cVar2 != null) {
            this.kryo = cVar;
            this.type = cls;
            this.config = cVar2;
            this.genericsHierarchy = new e.b(cls);
            com.esotericsoftware.kryo.serializers.b bVar = new com.esotericsoftware.kryo.serializers.b(this);
            this.cachedFields = bVar;
            bVar.a();
        } else {
            throw new IllegalArgumentException("config cannot be null.");
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public T copy(com.esotericsoftware.kryo.c cVar, T t) {
        T createCopy = createCopy(cVar, t);
        cVar.a(createCopy);
        int length = this.cachedFields.f19054d.length;
        for (int i = 0; i < length; i++) {
            this.cachedFields.f19054d[i].b(t, createCopy);
        }
        return createCopy;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T create(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends T> cls) {
        return (T) cVar.e(cls);
    }

    protected T createCopy(com.esotericsoftware.kryo.c cVar, T t) {
        return (T) cVar.e(t.getClass());
    }

    public b[] getCopyFields() {
        return this.cachedFields.f19054d;
    }

    public b getField(String str) {
        b[] bVarArr;
        for (b bVar : this.cachedFields.f19053c) {
            if (bVar.f19047b.equals(str)) {
                return bVar;
            }
        }
        throw new IllegalArgumentException("Field \"" + str + "\" not found on class: " + this.type.getName());
    }

    public c getFieldSerializerConfig() {
        return this.config;
    }

    public b[] getFields() {
        return this.cachedFields.f19053c;
    }

    public com.esotericsoftware.kryo.c getKryo() {
        return this.kryo;
    }

    public Class getType() {
        return this.type;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initializeCachedFields() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void log(String str, b bVar, int i) {
        String str2;
        if (bVar instanceof m) {
            m mVar = (m) bVar;
            Class<?> a2 = mVar.a();
            Class<?> cls = a2;
            if (a2 == null) {
                cls = bVar.f19046a.getType();
            }
            str2 = n.a(cls, mVar.m);
        } else {
            str2 = bVar.f19048c != null ? bVar.f19048c.getSimpleName() : bVar.f19046a.getType().getSimpleName();
        }
        com.esotericsoftware.b.a.b("kryo", str + " field " + str2 + ": " + bVar.f19047b + " (" + n.d(bVar.f19046a.getDeclaringClass()) + ')' + n.a(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void popTypeVariables(int i) {
        com.esotericsoftware.kryo.c.e generics = this.kryo.getGenerics();
        if (i > 0) {
            generics.a(i);
        }
        generics.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int pushTypeVariables() {
        e.a[] b2 = this.kryo.getGenerics().b();
        if (b2 == null) {
            return 0;
        }
        int a2 = this.kryo.getGenerics().a(this.genericsHierarchy, b2);
        if (com.esotericsoftware.b.a.e && a2 > 0) {
            com.esotericsoftware.b.a.b("kryo", "Generics: " + this.kryo.getGenerics());
        }
        return a2;
    }

    @Override // com.esotericsoftware.kryo.h
    public T read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends T> cls) {
        int pushTypeVariables = pushTypeVariables();
        T create = create(cVar, aVar, cls);
        cVar.a(create);
        b[] bVarArr = this.cachedFields.f19053c;
        int length = bVarArr.length;
        for (int i = 0; i < length; i++) {
            if (com.esotericsoftware.b.a.e) {
                log("Read", bVarArr[i], aVar.b());
            }
            bVarArr[i].a(aVar, create);
        }
        popTypeVariables(pushTypeVariables);
        return create;
    }

    public void removeField(b bVar) {
        boolean z;
        com.esotericsoftware.kryo.serializers.b bVar2 = this.cachedFields;
        int i = 0;
        while (true) {
            z = true;
            if (i >= bVar2.f19053c.length) {
                z = false;
                break;
            }
            b bVar3 = bVar2.f19053c[i];
            if (bVar3 == bVar) {
                int length = bVar2.f19053c.length - 1;
                b[] bVarArr = new b[length];
                System.arraycopy(bVar2.f19053c, 0, bVarArr, 0, i);
                System.arraycopy(bVar2.f19053c, i + 1, bVarArr, i, length - i);
                bVar2.f19053c = bVarArr;
                bVar2.e.add(bVar3.f19046a);
                z = true;
                break;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= bVar2.f19054d.length) {
                break;
            }
            b bVar4 = bVar2.f19054d[i2];
            if (bVar4 == bVar) {
                int length2 = bVar2.f19054d.length - 1;
                b[] bVarArr2 = new b[length2];
                System.arraycopy(bVar2.f19054d, 0, bVarArr2, 0, i2);
                System.arraycopy(bVar2.f19054d, i2 + 1, bVarArr2, i2, length2 - i2);
                bVar2.f19054d = bVarArr2;
                bVar2.e.add(bVar4.f19046a);
                break;
            }
            i2++;
        }
        if (!z) {
            throw new IllegalArgumentException("Field \"" + bVar + "\" not found on class: " + bVar2.f19052b.type.getName());
        }
    }

    public void removeField(String str) {
        boolean z;
        com.esotericsoftware.kryo.serializers.b bVar = this.cachedFields;
        int i = 0;
        while (true) {
            z = true;
            if (i >= bVar.f19053c.length) {
                z = false;
                break;
            }
            b bVar2 = bVar.f19053c[i];
            if (bVar2.f19047b.equals(str)) {
                int length = bVar.f19053c.length - 1;
                b[] bVarArr = new b[length];
                System.arraycopy(bVar.f19053c, 0, bVarArr, 0, i);
                System.arraycopy(bVar.f19053c, i + 1, bVarArr, i, length - i);
                bVar.f19053c = bVarArr;
                bVar.e.add(bVar2.f19046a);
                z = true;
                break;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= bVar.f19054d.length) {
                break;
            }
            b bVar3 = bVar.f19054d[i2];
            if (bVar3.f19047b.equals(str)) {
                int length2 = bVar.f19054d.length - 1;
                b[] bVarArr2 = new b[length2];
                System.arraycopy(bVar.f19054d, 0, bVarArr2, 0, i2);
                System.arraycopy(bVar.f19054d, i2 + 1, bVarArr2, i2, length2 - i2);
                bVar.f19054d = bVarArr2;
                bVar.e.add(bVar3.f19046a);
                break;
            }
            i2++;
        }
        if (!z) {
            throw new IllegalArgumentException("Field \"" + str + "\" not found on class: " + bVar.f19052b.type.getName());
        }
    }

    public void updateFields() {
        if (com.esotericsoftware.b.a.e) {
            com.esotericsoftware.b.a.b("kryo", "Update fields: " + n.d(this.type));
        }
        this.cachedFields.a();
    }

    @Override // com.esotericsoftware.kryo.h
    public void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, T t) {
        int pushTypeVariables = pushTypeVariables();
        b[] bVarArr = this.cachedFields.f19053c;
        int length = bVarArr.length;
        for (int i = 0; i < length; i++) {
            if (com.esotericsoftware.b.a.e) {
                log("Write", bVarArr[i], cVar2.b());
            }
            bVarArr[i].a(cVar2, t);
        }
        popTypeVariables(pushTypeVariables);
    }
}
