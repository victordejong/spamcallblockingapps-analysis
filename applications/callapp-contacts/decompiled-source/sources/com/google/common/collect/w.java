package com.google.common.collect;

import com.google.common.collect.v;
import com.google.common.collect.x;
import com.google.common.collect.y;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/w.class */
public class w<K, V> extends y<K, V> implements ac<K, V> {

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/w$a.class */
    public static final class a<K, V> extends y.a<K, V> {
        public final a<K, V> a(K k, V... vArr) {
            super.b(k, vArr);
            return this;
        }

        public final w<K, V> a() {
            return (w) super.b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y.a
        public final /* bridge */ /* synthetic */ y.a a(Object obj, Iterable iterable) {
            super.a((a<K, V>) obj, iterable);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.y.a
        public final /* synthetic */ y.a b(Object obj, Object[] objArr) {
            return a((a<K, V>) obj, objArr);
        }

        @Override // com.google.common.collect.y.a
        public final /* bridge */ /* synthetic */ y b() {
            return (w) super.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(x<K, v<V>> xVar, int i) {
        super(xVar, i);
    }

    public static <K, V> a<K, V> a() {
        return new a<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> w<K, V> a(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return o.f32106a;
        }
        x.a aVar = new x.a(collection.size());
        int i = 0;
        Iterator<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> it2 = collection.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Object key = entry.getKey();
            Collection collection2 = (Collection) entry.getValue();
            v a2 = comparator == null ? v.a(collection2) : v.a((Comparator) comparator, (Iterable) collection2);
            if (!a2.isEmpty()) {
                aVar.a(key, a2);
                i += a2.size();
            }
        }
        return new w<>(aVar.a(), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            x.a b2 = x.b();
            int i = 0;
            for (int i2 = 0; i2 < readInt; i2++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    v.a i3 = v.i();
                    for (int i4 = 0; i4 < readInt2; i4++) {
                        i3.b(objectInputStream.readObject());
                    }
                    b2.a(readObject, i3.a());
                    i += readInt2;
                } else {
                    StringBuilder sb = new StringBuilder(31);
                    sb.append("Invalid value count ");
                    sb.append(readInt2);
                    throw new InvalidObjectException(sb.toString());
                }
            }
            try {
                try {
                    y.c.f32142a.f32029a.set(this, b2.a());
                    try {
                        y.c.f32143b.f32029a.set(this, Integer.valueOf(i));
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    }
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                }
            } catch (IllegalArgumentException e3) {
                throw ((InvalidObjectException) new InvalidObjectException(e3.getMessage()).initCause(e3));
            }
        } else {
            StringBuilder sb2 = new StringBuilder(29);
            sb2.append("Invalid key count ");
            sb2.append(readInt);
            throw new InvalidObjectException(sb2.toString());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(b().size());
        for (Map.Entry<K, Collection<V>> entry : b().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            for (V v : entry.getValue()) {
                objectOutputStream.writeObject(v);
            }
        }
    }

    /* renamed from: c */
    public final v<V> d(K k) {
        v<V> vVar = (v) this.f32129b.get(k);
        v<V> vVar2 = vVar;
        if (vVar == null) {
            vVar2 = v.g();
        }
        return vVar2;
    }
}
