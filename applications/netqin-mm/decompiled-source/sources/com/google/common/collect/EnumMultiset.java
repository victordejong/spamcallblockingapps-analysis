package com.google.common.collect;

import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4969d;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C4983g0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/EnumMultiset.class */
public final class EnumMultiset<E extends Enum<E>> extends AbstractC4969d<E> implements Serializable {
    public static final long serialVersionUID = 0;
    public transient int[] counts;
    public transient int distinctElements;
    public transient E[] enumConstants;
    public transient long size;
    public transient Class<E> type;

    /* renamed from: com.google.common.collect.EnumMultiset$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/EnumMultiset$a.class */
    public class C7451a extends EnumMultiset<E>.AbstractC7454c<E> {
        public C7451a() {
            super();
        }

        @Override // com.google.common.collect.EnumMultiset.AbstractC7454c
        /* renamed from: a */
        public E mo8418a(int i) {
            return (E) EnumMultiset.this.enumConstants[i];
        }
    }

    /* renamed from: com.google.common.collect.EnumMultiset$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/EnumMultiset$b.class */
    public class C7452b extends EnumMultiset<E>.AbstractC7454c<AbstractC4997j0.AbstractC4998a<E>> {

        /* renamed from: com.google.common.collect.EnumMultiset$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/EnumMultiset$b$a.class */
        public class C7453a extends Multisets.AbstractC7596b<E> {

            /* renamed from: a */
            public final /* synthetic */ int f30507a;

            public C7453a(int i) {
                this.f30507a = i;
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
            public int getCount() {
                return EnumMultiset.this.counts[this.f30507a];
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
            public E getElement() {
                return (E) EnumMultiset.this.enumConstants[this.f30507a];
            }
        }

        public C7452b() {
            super();
        }

        @Override // com.google.common.collect.EnumMultiset.AbstractC7454c
        /* renamed from: a */
        public AbstractC4997j0.AbstractC4998a<E> mo8418a(int i) {
            return new C7453a(i);
        }
    }

    /* renamed from: com.google.common.collect.EnumMultiset$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/EnumMultiset$c.class */
    public abstract class AbstractC7454c<T> implements Iterator<T> {

        /* renamed from: a */
        public int f30509a = 0;

        /* renamed from: b */
        public int f30510b = -1;

        public AbstractC7454c() {
        }

        /* renamed from: a */
        public abstract T mo8418a(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.f30509a < EnumMultiset.this.enumConstants.length) {
                int[] iArr = EnumMultiset.this.counts;
                int i = this.f30509a;
                if (iArr[i] > 0) {
                    return true;
                }
                this.f30509a = i + 1;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T a = mo8418a(this.f30509a);
                int i = this.f30509a;
                this.f30510b = i;
                this.f30509a = i + 1;
                return a;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30510b >= 0);
            if (EnumMultiset.this.counts[this.f30510b] > 0) {
                EnumMultiset.access$210(EnumMultiset.this);
                EnumMultiset.this.size -= EnumMultiset.this.counts[this.f30510b];
                EnumMultiset.this.counts[this.f30510b] = 0;
            }
            this.f30510b = -1;
        }
    }

    public EnumMultiset(Class<E> cls) {
        this.type = cls;
        C4933n.m24791a(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
    }

    public static /* synthetic */ int access$210(EnumMultiset enumMultiset) {
        int i = enumMultiset.distinctElements;
        enumMultiset.distinctElements = i - 1;
        return i;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        C4933n.m24790a(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        C4983g0.m24718a((Collection) enumMultiset, (Iterable) iterable);
        return enumMultiset;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> create = create(cls);
        C4983g0.m24718a((Collection) create, (Iterable) iterable);
        return create;
    }

    private boolean isActuallyE(Object obj) {
        boolean z = false;
        if (obj instanceof Enum) {
            Enum r0 = (Enum) obj;
            int ordinal = r0.ordinal();
            E[] eArr = this.enumConstants;
            z = false;
            if (ordinal < eArr.length) {
                z = false;
                if (eArr[ordinal] == r0) {
                    z = true;
                }
            }
        }
        return z;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Class<E> cls = (Class) objectInputStream.readObject();
        this.type = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
        C5023s0.m24624a(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.type);
        C5023s0.m24622a(this, objectOutputStream);
    }

    public int add(E e, int i) {
        checkIsE(e);
        C5006n.m24663a(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        int ordinal = e.ordinal();
        int i2 = this.counts[ordinal];
        long j = i2;
        long j2 = i;
        long j3 = j + j2;
        C4933n.m24785a(j3 <= 2147483647L, "too many occurrences: %s", j3);
        this.counts[ordinal] = (int) j3;
        if (i2 == 0) {
            this.distinctElements++;
        }
        this.size += j2;
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ int add(Object obj, int i) {
        return add((EnumMultiset<E>) ((Enum) obj), i);
    }

    public void checkIsE(Object obj) {
        C4933n.m24795a(obj);
        if (!isActuallyE(obj)) {
            throw new ClassCastException("Expected an " + this.type + " but got " + obj);
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.counts, 0);
        this.size = 0L;
        this.distinctElements = 0;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int count(Object obj) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        return this.counts[((Enum) obj).ordinal()];
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public int distinctElements() {
        return this.distinctElements;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public Iterator<E> elementIterator() {
        return new C7451a();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public Iterator<AbstractC4997j0.AbstractC4998a<E>> entryIterator() {
        return new C7452b();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
    public Iterator<E> iterator() {
        return Multisets.m8092a((AbstractC4997j0) this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int remove(Object obj, int i) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        Enum r0 = (Enum) obj;
        C5006n.m24663a(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        int ordinal = r0.ordinal();
        int[] iArr = this.counts;
        int i2 = iArr[ordinal];
        if (i2 == 0) {
            return 0;
        }
        if (i2 <= i) {
            iArr[ordinal] = 0;
            this.distinctElements--;
            this.size -= i2;
        } else {
            iArr[ordinal] = i2 - i;
            this.size -= i;
        }
        return i2;
    }

    public int setCount(E e, int i) {
        checkIsE(e);
        C5006n.m24663a(i, "count");
        int ordinal = e.ordinal();
        int[] iArr = this.counts;
        int i2 = iArr[ordinal];
        iArr[ordinal] = i;
        this.size += i - i2;
        if (i2 == 0 && i > 0) {
            this.distinctElements++;
        } else if (i2 > 0 && i == 0) {
            this.distinctElements--;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ int setCount(Object obj, int i) {
        return setCount((EnumMultiset<E>) ((Enum) obj), i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int size() {
        return Ints.m7808b(this.size);
    }
}
