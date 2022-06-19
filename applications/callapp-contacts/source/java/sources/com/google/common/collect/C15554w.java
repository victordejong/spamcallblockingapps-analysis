package com.google.common.collect;

import com.google.common.collect.AbstractC15549v;
import com.google.common.collect.AbstractC15556x;
import com.google.common.collect.AbstractC15559y;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
/* renamed from: com.google.common.collect.w */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/w.class */
public class C15554w<K, V> extends AbstractC15559y<K, V> implements AbstractC15407ac<K, V> {

    /* renamed from: com.google.common.collect.w$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/w$a.class */
    public static final class C15555a<K, V> extends AbstractC15559y.C15562a<K, V> {
        /* renamed from: a */
        public final C15555a<K, V> m8705a(K k, V... vArr) {
            super.mo8668b(k, vArr);
            return this;
        }

        /* renamed from: a */
        public final C15554w<K, V> m8706a() {
            return (C15554w) super.mo8669b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractC15559y.C15562a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC15559y.C15562a mo8670a(Object obj, Iterable iterable) {
            super.mo8670a((C15555a<K, V>) obj, iterable);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractC15559y.C15562a
        /* renamed from: b */
        public final /* synthetic */ AbstractC15559y.C15562a mo8668b(Object obj, Object[] objArr) {
            return m8705a((C15555a<K, V>) obj, objArr);
        }

        @Override // com.google.common.collect.AbstractC15559y.C15562a
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ AbstractC15559y mo8669b() {
            return (C15554w) super.mo8669b();
        }
    }

    public C15554w(AbstractC15556x<K, AbstractC15549v<V>> abstractC15556x, int i) {
        super(abstractC15556x, i);
    }

    /* renamed from: a */
    public static <K, V> C15555a<K, V> m8709a() {
        return new C15555a<>();
    }

    /* renamed from: a */
    public static <K, V> C15554w<K, V> m8708a(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return C15540o.f55846a;
        }
        AbstractC15556x.C15557a c15557a = new AbstractC15556x.C15557a(collection.size());
        int i = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            AbstractC15549v m8725a = comparator == null ? AbstractC15549v.m8725a((Collection) value) : AbstractC15549v.m8724a((Comparator) comparator, (Iterable) value);
            if (!m8725a.isEmpty()) {
                c15557a.m8693a(key, m8725a);
                i += m8725a.size();
            }
        }
        return new C15554w<>(c15557a.m8695a(), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Invalid key count ");
            sb.append(readInt);
            throw new InvalidObjectException(sb.toString());
        }
        AbstractC15556x.C15557a m8702b = AbstractC15556x.m8702b();
        int i = 0;
        for (int i2 = 0; i2 < readInt; i2++) {
            Object readObject = objectInputStream.readObject();
            int readInt2 = objectInputStream.readInt();
            if (readInt2 <= 0) {
                StringBuilder sb2 = new StringBuilder(31);
                sb2.append("Invalid value count ");
                sb2.append(readInt2);
                throw new InvalidObjectException(sb2.toString());
            }
            AbstractC15549v.C15550a m8718i = AbstractC15549v.m8718i();
            for (int i3 = 0; i3 < readInt2; i3++) {
                m8718i.m8715b(objectInputStream.readObject());
            }
            m8702b.m8693a(readObject, m8718i.m8717a());
            i += readInt2;
        }
        try {
            try {
                AbstractC15559y.C15564c.f55882a.f55757a.set(this, m8702b.m8695a());
                try {
                    AbstractC15559y.C15564c.f55883b.f55757a.set(this, Integer.valueOf(i));
                } catch (IllegalAccessException e) {
                    throw new AssertionError(e);
                }
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        } catch (IllegalArgumentException e3) {
            throw ((InvalidObjectException) new InvalidObjectException(e3.getMessage()).initCause(e3));
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(mo8688b().size());
        for (Map.Entry<K, Collection<V>> entry : mo8688b().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            for (V v : entry.getValue()) {
                objectOutputStream.writeObject(v);
            }
        }
    }

    /* renamed from: c */
    public final AbstractC15549v<V> mo8682d(K k) {
        AbstractC15549v<V> abstractC15549v = (AbstractC15549v) this.f55869b.get(k);
        AbstractC15549v<V> abstractC15549v2 = abstractC15549v;
        if (abstractC15549v == null) {
            abstractC15549v2 = AbstractC15549v.m8720g();
        }
        return abstractC15549v2;
    }
}
