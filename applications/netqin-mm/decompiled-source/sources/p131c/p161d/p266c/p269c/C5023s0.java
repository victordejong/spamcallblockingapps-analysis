package p131c.p161d.p266c.p269c;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Map;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
/* renamed from: c.d.c.c.s0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/s0.class */
public final class C5023s0 {

    /* renamed from: c.d.c.c.s0$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/s0$b.class */
    public static final class C5025b<T> {

        /* renamed from: a */
        public final Field f17642a;

        public C5025b(Field field) {
            this.f17642a = field;
            field.setAccessible(true);
        }

        /* renamed from: a */
        public void m24616a(T t, int i) {
            try {
                this.f17642a.set(t, Integer.valueOf(i));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        /* renamed from: a */
        public void m24615a(T t, Object obj) {
            try {
                this.f17642a.set(t, obj);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: a */
    public static int m24621a(ObjectInputStream objectInputStream) throws IOException {
        return objectInputStream.readInt();
    }

    /* renamed from: a */
    public static <T> C5025b<T> m24620a(Class<T> cls, String str) {
        try {
            return new C5025b<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public static <K, V> void m24627a(AbstractC4995i0<K, V> i0Var, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        m24626a(i0Var, objectInputStream, objectInputStream.readInt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <K, V> void m24626a(AbstractC4995i0<K, V> i0Var, ObjectInputStream objectInputStream, int i) throws IOException, ClassNotFoundException {
        for (int i2 = 0; i2 < i; i2++) {
            Collection collection = i0Var.get(objectInputStream.readObject());
            int readInt = objectInputStream.readInt();
            for (int i3 = 0; i3 < readInt; i3++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }

    /* renamed from: a */
    public static <K, V> void m24625a(AbstractC4995i0<K, V> i0Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(i0Var.asMap().size());
        for (Map.Entry<K, Collection<V>> entry : i0Var.asMap().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            for (V v : entry.getValue()) {
                objectOutputStream.writeObject(v);
            }
        }
    }

    /* renamed from: a */
    public static <E> void m24624a(AbstractC4997j0<E> j0Var, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        m24623a(j0Var, objectInputStream, objectInputStream.readInt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <E> void m24623a(AbstractC4997j0<E> j0Var, ObjectInputStream objectInputStream, int i) throws IOException, ClassNotFoundException {
        for (int i2 = 0; i2 < i; i2++) {
            j0Var.add(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    /* renamed from: a */
    public static <E> void m24622a(AbstractC4997j0<E> j0Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(j0Var.entrySet().size());
        for (AbstractC4997j0.AbstractC4998a<E> aVar : j0Var.entrySet()) {
            objectOutputStream.writeObject(aVar.getElement());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }

    /* renamed from: a */
    public static <K, V> void m24619a(Map<K, V> map, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        m24618a(map, objectInputStream, objectInputStream.readInt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <K, V> void m24618a(Map<K, V> map, ObjectInputStream objectInputStream, int i) throws IOException, ClassNotFoundException {
        for (int i2 = 0; i2 < i; i2++) {
            map.put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* renamed from: a */
    public static <K, V> void m24617a(Map<K, V> map, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }
}
