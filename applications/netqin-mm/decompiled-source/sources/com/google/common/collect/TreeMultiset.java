package com.google.common.collect;

import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4988h;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.AbstractC5033w0;
import p131c.p161d.p266c.p269c.C4983g0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeMultiset.class */
public final class TreeMultiset<E> extends AbstractC4988h<E> implements Serializable {
    public static final long serialVersionUID = 1;
    public final transient C7664e<E> header;
    public final transient GeneralRange<E> range;
    public final transient C7665f<C7664e<E>> rootReference;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeMultiset$Aggregate.class */
    public enum Aggregate {
        SIZE { // from class: com.google.common.collect.TreeMultiset.Aggregate.1
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            public int nodeAggregate(C7664e<?> eVar) {
                return eVar.f30791b;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            public long treeAggregate(C7664e<?> eVar) {
                return eVar == null ? 0L : eVar.f30793d;
            }
        },
        DISTINCT { // from class: com.google.common.collect.TreeMultiset.Aggregate.2
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            public int nodeAggregate(C7664e<?> eVar) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            public long treeAggregate(C7664e<?> eVar) {
                return eVar == null ? 0L : eVar.f30792c;
            }
        };

        /* synthetic */ Aggregate(C7660a aVar) {
            this();
        }

        public abstract int nodeAggregate(C7664e<?> eVar);

        public abstract long treeAggregate(C7664e<?> eVar);
    }

    /* renamed from: com.google.common.collect.TreeMultiset$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeMultiset$a.class */
    public class C7660a extends Multisets.AbstractC7596b<E> {

        /* renamed from: a */
        public final /* synthetic */ C7664e f30781a;

        public C7660a(C7664e eVar) {
            this.f30781a = eVar;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
        public int getCount() {
            int c = this.f30781a.m7996c();
            int i = c;
            if (c == 0) {
                i = TreeMultiset.this.count(getElement());
            }
            return i;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
        public E getElement() {
            return (E) this.f30781a.m7991d();
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeMultiset$b.class */
    public class C7661b implements Iterator<AbstractC4997j0.AbstractC4998a<E>> {

        /* renamed from: a */
        public C7664e<E> f30783a;

        /* renamed from: b */
        public AbstractC4997j0.AbstractC4998a<E> f30784b;

        public C7661b() {
            this.f30783a = TreeMultiset.this.firstNode();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f30783a == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooHigh(this.f30783a.m7991d())) {
                return true;
            }
            this.f30783a = null;
            return false;
        }

        @Override // java.util.Iterator
        public AbstractC4997j0.AbstractC4998a<E> next() {
            if (hasNext()) {
                AbstractC4997j0.AbstractC4998a<E> wrapEntry = TreeMultiset.this.wrapEntry(this.f30783a);
                this.f30784b = wrapEntry;
                if (this.f30783a.f30798i == TreeMultiset.this.header) {
                    this.f30783a = null;
                } else {
                    this.f30783a = this.f30783a.f30798i;
                }
                return wrapEntry;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30784b != null);
            TreeMultiset.this.setCount(this.f30784b.getElement(), 0);
            this.f30784b = null;
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeMultiset$c.class */
    public class C7662c implements Iterator<AbstractC4997j0.AbstractC4998a<E>> {

        /* renamed from: a */
        public C7664e<E> f30786a;

        /* renamed from: b */
        public AbstractC4997j0.AbstractC4998a<E> f30787b = null;

        public C7662c() {
            this.f30786a = TreeMultiset.this.lastNode();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f30786a == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooLow(this.f30786a.m7991d())) {
                return true;
            }
            this.f30786a = null;
            return false;
        }

        @Override // java.util.Iterator
        public AbstractC4997j0.AbstractC4998a<E> next() {
            if (hasNext()) {
                AbstractC4997j0.AbstractC4998a<E> wrapEntry = TreeMultiset.this.wrapEntry(this.f30786a);
                this.f30787b = wrapEntry;
                if (this.f30786a.f30797h == TreeMultiset.this.header) {
                    this.f30786a = null;
                } else {
                    this.f30786a = this.f30786a.f30797h;
                }
                return wrapEntry;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30787b != null);
            TreeMultiset.this.setCount(this.f30787b.getElement(), 0);
            this.f30787b = null;
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeMultiset$d.class */
    public static /* synthetic */ class C7663d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f30789a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[BoundType.values().length];
            f30789a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30789a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeMultiset$e.class */
    public static final class C7664e<E> {

        /* renamed from: a */
        public final E f30790a;

        /* renamed from: b */
        public int f30791b;

        /* renamed from: c */
        public int f30792c;

        /* renamed from: d */
        public long f30793d;

        /* renamed from: e */
        public int f30794e;

        /* renamed from: f */
        public C7664e<E> f30795f;

        /* renamed from: g */
        public C7664e<E> f30796g;

        /* renamed from: h */
        public C7664e<E> f30797h;

        /* renamed from: i */
        public C7664e<E> f30798i;

        public C7664e(E e, int i) {
            C4933n.m24791a(i > 0);
            this.f30790a = e;
            this.f30791b = i;
            this.f30793d = i;
            this.f30792c = 1;
            this.f30794e = 1;
            this.f30795f = null;
            this.f30796g = null;
        }

        /* renamed from: k */
        public static int m7976k(C7664e<?> eVar) {
            return eVar == null ? 0 : eVar.f30794e;
        }

        /* renamed from: l */
        public static long m7975l(C7664e<?> eVar) {
            return eVar == null ? 0L : eVar.f30793d;
        }

        /* renamed from: a */
        public final int m8012a() {
            return m7976k(this.f30795f) - m7976k(this.f30796g);
        }

        /* renamed from: a */
        public final C7664e<E> m8011a(C7664e<E> eVar) {
            C7664e<E> eVar2 = this.f30796g;
            if (eVar2 == null) {
                return this.f30795f;
            }
            this.f30796g = eVar2.m8011a(eVar);
            this.f30792c--;
            this.f30793d -= eVar.f30791b;
            return m7988e();
        }

        /* renamed from: a */
        public final C7664e<E> m8007a(E e, int i) {
            C7664e<E> eVar = new C7664e<>(e, i);
            this.f30795f = eVar;
            TreeMultiset.successor(this.f30797h, eVar, this);
            this.f30794e = Math.max(2, this.f30794e);
            this.f30792c++;
            this.f30793d += i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public final C7664e<E> m8006a(Comparator<? super E> comparator, E e) {
            int compare = comparator.compare(e, (E) this.f30790a);
            if (compare < 0) {
                C7664e<E> eVar = this.f30795f;
                return eVar == null ? this : (C7664e) C4924j.m24819a(eVar.m8006a((Comparator<? super Comparator<? super E>>) comparator, (Comparator<? super E>) e), this);
            } else if (compare == 0) {
                return this;
            } else {
                C7664e<E> eVar2 = this.f30796g;
                return eVar2 == null ? null : eVar2.m8006a((Comparator<? super Comparator<? super E>>) comparator, (Comparator<? super E>) e);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public C7664e<E> m8005a(Comparator<? super E> comparator, E e, int i, int i2, int[] iArr) {
            int compare = comparator.compare(e, (E) this.f30790a);
            if (compare < 0) {
                C7664e<E> eVar = this.f30795f;
                if (eVar == null) {
                    iArr[0] = 0;
                    if (i == 0 && i2 > 0) {
                        m8007a((C7664e<E>) e, i2);
                    }
                    return this;
                }
                this.f30795f = eVar.m8005a(comparator, e, i, i2, iArr);
                if (iArr[0] == i) {
                    if (i2 == 0 && iArr[0] != 0) {
                        this.f30792c--;
                    } else if (i2 > 0 && iArr[0] == 0) {
                        this.f30792c++;
                    }
                    this.f30793d += i2 - iArr[0];
                }
                return m7988e();
            } else if (compare > 0) {
                C7664e<E> eVar2 = this.f30796g;
                if (eVar2 == null) {
                    iArr[0] = 0;
                    if (i == 0 && i2 > 0) {
                        m7999b((C7664e<E>) e, i2);
                    }
                    return this;
                }
                this.f30796g = eVar2.m8005a(comparator, e, i, i2, iArr);
                if (iArr[0] == i) {
                    if (i2 == 0 && iArr[0] != 0) {
                        this.f30792c--;
                    } else if (i2 > 0 && iArr[0] == 0) {
                        this.f30792c++;
                    }
                    this.f30793d += i2 - iArr[0];
                }
                return m7988e();
            } else {
                int i3 = this.f30791b;
                iArr[0] = i3;
                if (i == i3) {
                    if (i2 == 0) {
                        return m8003b();
                    }
                    this.f30793d += i2 - i3;
                    this.f30791b = i2;
                }
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public C7664e<E> m8004a(Comparator<? super E> comparator, E e, int i, int[] iArr) {
            int compare = comparator.compare(e, (E) this.f30790a);
            boolean z = true;
            if (compare < 0) {
                C7664e<E> eVar = this.f30795f;
                if (eVar == null) {
                    iArr[0] = 0;
                    m8007a((C7664e<E>) e, i);
                    return this;
                }
                int i2 = eVar.f30794e;
                this.f30795f = eVar.m8004a(comparator, e, i, iArr);
                if (iArr[0] == 0) {
                    this.f30792c++;
                }
                this.f30793d += i;
                return this.f30795f.f30794e == i2 ? this : m7988e();
            } else if (compare > 0) {
                C7664e<E> eVar2 = this.f30796g;
                if (eVar2 == null) {
                    iArr[0] = 0;
                    m7999b((C7664e<E>) e, i);
                    return this;
                }
                int i3 = eVar2.f30794e;
                this.f30796g = eVar2.m8004a(comparator, e, i, iArr);
                if (iArr[0] == 0) {
                    this.f30792c++;
                }
                this.f30793d += i;
                return this.f30796g.f30794e == i3 ? this : m7988e();
            } else {
                int i4 = this.f30791b;
                iArr[0] = i4;
                long j = i4;
                long j2 = i;
                if (j + j2 > 2147483647L) {
                    z = false;
                }
                C4933n.m24791a(z);
                this.f30791b += i;
                this.f30793d += j2;
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public int m7998b(Comparator<? super E> comparator, E e) {
            int compare = comparator.compare(e, (E) this.f30790a);
            int i = 0;
            int i2 = 0;
            if (compare < 0) {
                C7664e<E> eVar = this.f30795f;
                if (eVar != null) {
                    i2 = eVar.m7998b((Comparator<? super Comparator<? super E>>) comparator, (Comparator<? super E>) e);
                }
                return i2;
            } else if (compare <= 0) {
                return this.f30791b;
            } else {
                C7664e<E> eVar2 = this.f30796g;
                if (eVar2 != null) {
                    i = eVar2.m7998b((Comparator<? super Comparator<? super E>>) comparator, (Comparator<? super E>) e);
                }
                return i;
            }
        }

        /* renamed from: b */
        public final C7664e<E> m8003b() {
            int i = this.f30791b;
            this.f30791b = 0;
            TreeMultiset.successor(this.f30797h, this.f30798i);
            C7664e<E> eVar = this.f30795f;
            if (eVar == null) {
                return this.f30796g;
            }
            C7664e<E> eVar2 = this.f30796g;
            if (eVar2 == null) {
                return eVar;
            }
            if (eVar.f30794e >= eVar2.f30794e) {
                C7664e<E> eVar3 = this.f30797h;
                eVar3.f30795f = eVar.m8011a(eVar3);
                eVar3.f30796g = this.f30796g;
                eVar3.f30792c = this.f30792c - 1;
                eVar3.f30793d = this.f30793d - i;
                return eVar3.m7988e();
            }
            C7664e<E> eVar4 = this.f30798i;
            eVar4.f30796g = eVar2.m8002b(eVar4);
            eVar4.f30795f = this.f30795f;
            eVar4.f30792c = this.f30792c - 1;
            eVar4.f30793d = this.f30793d - i;
            return eVar4.m7988e();
        }

        /* renamed from: b */
        public final C7664e<E> m8002b(C7664e<E> eVar) {
            C7664e<E> eVar2 = this.f30795f;
            if (eVar2 == null) {
                return this.f30796g;
            }
            this.f30795f = eVar2.m8002b(eVar);
            this.f30792c--;
            this.f30793d -= eVar.f30791b;
            return m7988e();
        }

        /* renamed from: b */
        public final C7664e<E> m7999b(E e, int i) {
            C7664e<E> eVar = new C7664e<>(e, i);
            this.f30796g = eVar;
            TreeMultiset.successor(this, eVar, this.f30798i);
            this.f30794e = Math.max(2, this.f30794e);
            this.f30792c++;
            this.f30793d += i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public C7664e<E> m7997b(Comparator<? super E> comparator, E e, int i, int[] iArr) {
            int compare = comparator.compare(e, (E) this.f30790a);
            if (compare < 0) {
                C7664e<E> eVar = this.f30795f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f30795f = eVar.m7997b(comparator, e, i, iArr);
                if (iArr[0] > 0) {
                    if (i >= iArr[0]) {
                        this.f30792c--;
                        this.f30793d -= iArr[0];
                    } else {
                        this.f30793d -= i;
                    }
                }
                return iArr[0] == 0 ? this : m7988e();
            } else if (compare > 0) {
                C7664e<E> eVar2 = this.f30796g;
                if (eVar2 == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f30796g = eVar2.m7997b(comparator, e, i, iArr);
                if (iArr[0] > 0) {
                    if (i >= iArr[0]) {
                        this.f30792c--;
                        this.f30793d -= iArr[0];
                    } else {
                        this.f30793d -= i;
                    }
                }
                return m7988e();
            } else {
                int i2 = this.f30791b;
                iArr[0] = i2;
                if (i >= i2) {
                    return m8003b();
                }
                this.f30791b = i2 - i;
                this.f30793d -= i;
                return this;
            }
        }

        /* renamed from: c */
        public int m7996c() {
            return this.f30791b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        public final C7664e<E> m7993c(Comparator<? super E> comparator, E e) {
            int compare = comparator.compare(e, (E) this.f30790a);
            if (compare > 0) {
                C7664e<E> eVar = this.f30796g;
                return eVar == null ? this : (C7664e) C4924j.m24819a(eVar.m7993c((Comparator<? super Comparator<? super E>>) comparator, (Comparator<? super E>) e), this);
            } else if (compare == 0) {
                return this;
            } else {
                C7664e<E> eVar2 = this.f30795f;
                return eVar2 == null ? null : eVar2.m7993c((Comparator<? super Comparator<? super E>>) comparator, (Comparator<? super E>) e);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        public C7664e<E> m7992c(Comparator<? super E> comparator, E e, int i, int[] iArr) {
            int i2;
            int compare = comparator.compare(e, (E) this.f30790a);
            if (compare < 0) {
                C7664e<E> eVar = this.f30795f;
                if (eVar == null) {
                    iArr[0] = 0;
                    if (i > 0) {
                        m8007a((C7664e<E>) e, i);
                    }
                    return this;
                }
                this.f30795f = eVar.m7992c(comparator, e, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.f30792c--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.f30792c++;
                }
                this.f30793d += i - iArr[0];
                return m7988e();
            } else if (compare > 0) {
                C7664e<E> eVar2 = this.f30796g;
                if (eVar2 == null) {
                    iArr[0] = 0;
                    if (i > 0) {
                        m7999b((C7664e<E>) e, i);
                    }
                    return this;
                }
                this.f30796g = eVar2.m7992c(comparator, e, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.f30792c--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.f30792c++;
                }
                this.f30793d += i - iArr[0];
                return m7988e();
            } else {
                iArr[0] = this.f30791b;
                if (i == 0) {
                    return m8003b();
                }
                this.f30793d += i - i2;
                this.f30791b = i;
                return this;
            }
        }

        /* renamed from: d */
        public E m7991d() {
            return this.f30790a;
        }

        /* renamed from: e */
        public final C7664e<E> m7988e() {
            int a = m8012a();
            if (a == -2) {
                if (this.f30796g.m8012a() > 0) {
                    this.f30796g = this.f30796g.m7978j();
                }
                return m7980i();
            } else if (a != 2) {
                m7984g();
                return this;
            } else {
                if (this.f30795f.m8012a() < 0) {
                    this.f30795f = this.f30795f.m7980i();
                }
                return m7978j();
            }
        }

        /* renamed from: f */
        public final void m7986f() {
            m7982h();
            m7984g();
        }

        /* renamed from: g */
        public final void m7984g() {
            this.f30794e = Math.max(m7976k(this.f30795f), m7976k(this.f30796g)) + 1;
        }

        /* renamed from: h */
        public final void m7982h() {
            this.f30792c = TreeMultiset.distinctElements(this.f30795f) + 1 + TreeMultiset.distinctElements(this.f30796g);
            this.f30793d = this.f30791b + m7975l(this.f30795f) + m7975l(this.f30796g);
        }

        /* renamed from: i */
        public final C7664e<E> m7980i() {
            C4933n.m24776b(this.f30796g != null);
            C7664e<E> eVar = this.f30796g;
            this.f30796g = eVar.f30795f;
            eVar.f30795f = this;
            eVar.f30793d = this.f30793d;
            eVar.f30792c = this.f30792c;
            m7986f();
            eVar.m7984g();
            return eVar;
        }

        /* renamed from: j */
        public final C7664e<E> m7978j() {
            C4933n.m24776b(this.f30795f != null);
            C7664e<E> eVar = this.f30795f;
            this.f30795f = eVar.f30796g;
            eVar.f30796g = this;
            eVar.f30793d = this.f30793d;
            eVar.f30792c = this.f30792c;
            m7986f();
            eVar.m7984g();
            return eVar;
        }

        public String toString() {
            return Multisets.m8083a(m7991d(), m7996c()).toString();
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeMultiset$f.class */
    public static final class C7665f<T> {

        /* renamed from: a */
        public T f30799a;

        public C7665f() {
        }

        public /* synthetic */ C7665f(C7660a aVar) {
            this();
        }

        /* renamed from: a */
        public void m7974a() {
            this.f30799a = null;
        }

        /* renamed from: a */
        public void m7973a(T t, T t2) {
            if (this.f30799a == t) {
                this.f30799a = t2;
                return;
            }
            throw new ConcurrentModificationException();
        }

        /* renamed from: b */
        public T m7972b() {
            return this.f30799a;
        }
    }

    public TreeMultiset(C7665f<C7664e<E>> fVar, GeneralRange<E> generalRange, C7664e<E> eVar) {
        super(generalRange.comparator());
        this.rootReference = fVar;
        this.range = generalRange;
        this.header = eVar;
    }

    public TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = GeneralRange.all(comparator);
        C7664e<E> eVar = new C7664e<>(null, 1);
        this.header = eVar;
        successor(eVar, eVar);
        this.rootReference = new C7665f<>(null);
    }

    private long aggregateAboveRange(Aggregate aggregate, C7664e<E> eVar) {
        long treeAggregate;
        long aggregateAboveRange;
        if (eVar == null) {
            return 0L;
        }
        int compare = comparator().compare(this.range.getUpperEndpoint(), eVar.f30790a);
        if (compare > 0) {
            return aggregateAboveRange(aggregate, eVar.f30796g);
        }
        if (compare == 0) {
            int i = C7663d.f30789a[this.range.getUpperBoundType().ordinal()];
            if (i == 1) {
                treeAggregate = aggregate.nodeAggregate(eVar);
                aggregateAboveRange = aggregate.treeAggregate(eVar.f30796g);
            } else if (i == 2) {
                return aggregate.treeAggregate(eVar.f30796g);
            } else {
                throw new AssertionError();
            }
        } else {
            treeAggregate = aggregate.treeAggregate(eVar.f30796g) + aggregate.nodeAggregate(eVar);
            aggregateAboveRange = aggregateAboveRange(aggregate, eVar.f30795f);
        }
        return treeAggregate + aggregateAboveRange;
    }

    private long aggregateBelowRange(Aggregate aggregate, C7664e<E> eVar) {
        long treeAggregate;
        long aggregateBelowRange;
        if (eVar == null) {
            return 0L;
        }
        int compare = comparator().compare(this.range.getLowerEndpoint(), eVar.f30790a);
        if (compare < 0) {
            return aggregateBelowRange(aggregate, eVar.f30795f);
        }
        if (compare == 0) {
            int i = C7663d.f30789a[this.range.getLowerBoundType().ordinal()];
            if (i == 1) {
                treeAggregate = aggregate.nodeAggregate(eVar);
                aggregateBelowRange = aggregate.treeAggregate(eVar.f30795f);
            } else if (i == 2) {
                return aggregate.treeAggregate(eVar.f30795f);
            } else {
                throw new AssertionError();
            }
        } else {
            treeAggregate = aggregate.treeAggregate(eVar.f30795f) + aggregate.nodeAggregate(eVar);
            aggregateBelowRange = aggregateBelowRange(aggregate, eVar.f30796g);
        }
        return treeAggregate + aggregateBelowRange;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long aggregateForEntries(com.google.common.collect.TreeMultiset.Aggregate r7) {
        /*
            r6 = this;
            r0 = r6
            com.google.common.collect.TreeMultiset$f<com.google.common.collect.TreeMultiset$e<E>> r0 = r0.rootReference
            java.lang.Object r0 = r0.m7972b()
            com.google.common.collect.TreeMultiset$e r0 = (com.google.common.collect.TreeMultiset.C7664e) r0
            r8 = r0
            r0 = r7
            r1 = r8
            long r0 = r0.treeAggregate(r1)
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r6
            com.google.common.collect.GeneralRange<E> r0 = r0.range
            boolean r0 = r0.hasLowerBound()
            if (r0 == 0) goto L_0x0028
            r0 = r9
            r1 = r6
            r2 = r7
            r3 = r8
            long r1 = r1.aggregateBelowRange(r2, r3)
            long r0 = r0 - r1
            r11 = r0
        L_0x0028:
            r0 = r11
            r9 = r0
            r0 = r6
            com.google.common.collect.GeneralRange<E> r0 = r0.range
            boolean r0 = r0.hasUpperBound()
            if (r0 == 0) goto L_0x003f
            r0 = r11
            r1 = r6
            r2 = r7
            r3 = r8
            long r1 = r1.aggregateAboveRange(r2, r3)
            long r0 = r0 - r1
            r9 = r0
        L_0x003f:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.TreeMultiset.aggregateForEntries(com.google.common.collect.TreeMultiset$Aggregate):long");
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> create = create();
        C4983g0.m24718a((Collection) create, (Iterable) iterable);
        return create;
    }

    public static <E> TreeMultiset<E> create(Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(Ordering.natural()) : new TreeMultiset<>(comparator);
    }

    public static int distinctElements(C7664e<?> eVar) {
        return eVar == null ? 0 : eVar.f30792c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C7664e<E> firstNode() {
        C7664e<E> eVar;
        if (this.rootReference.m7972b() == null) {
            return null;
        }
        if (this.range.hasLowerBound()) {
            E lowerEndpoint = this.range.getLowerEndpoint();
            C7664e<E> a = this.rootReference.m7972b().m8006a((Comparator<? super Comparator>) comparator(), (Comparator) lowerEndpoint);
            if (a == null) {
                return null;
            }
            eVar = a;
            if (this.range.getLowerBoundType() == BoundType.OPEN) {
                eVar = a;
                if (comparator().compare(lowerEndpoint, a.m7991d()) == 0) {
                    eVar = a.f30798i;
                }
            }
        } else {
            eVar = this.header.f30798i;
        }
        C7664e<E> eVar2 = null;
        if (eVar != this.header) {
            eVar2 = !this.range.contains(eVar.m7991d()) ? null : eVar;
        }
        return eVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C7664e<E> lastNode() {
        C7664e<E> eVar;
        if (this.rootReference.m7972b() == null) {
            return null;
        }
        if (this.range.hasUpperBound()) {
            E upperEndpoint = this.range.getUpperEndpoint();
            C7664e<E> c = this.rootReference.m7972b().m7993c((Comparator<? super Comparator>) comparator(), (Comparator) upperEndpoint);
            if (c == null) {
                return null;
            }
            eVar = c;
            if (this.range.getUpperBoundType() == BoundType.OPEN) {
                eVar = c;
                if (comparator().compare(upperEndpoint, c.m7991d()) == 0) {
                    eVar = c.f30797h;
                }
            }
        } else {
            eVar = this.header.f30797h;
        }
        C7664e<E> eVar2 = null;
        if (eVar != this.header) {
            eVar2 = !this.range.contains(eVar.m7991d()) ? null : eVar;
        }
        return eVar2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        C5023s0.m24620a(AbstractC4988h.class, "comparator").m24615a((C5023s0.C5025b) this, (Object) comparator);
        C5023s0.m24620a(TreeMultiset.class, "range").m24615a((C5023s0.C5025b) this, (Object) GeneralRange.all(comparator));
        C5023s0.m24620a(TreeMultiset.class, "rootReference").m24615a((C5023s0.C5025b) this, (Object) new C7665f(null));
        C7664e eVar = new C7664e(null, 1);
        C5023s0.m24620a(TreeMultiset.class, "header").m24615a((C5023s0.C5025b) this, (Object) eVar);
        successor(eVar, eVar);
        C5023s0.m24624a(this, objectInputStream);
    }

    public static <T> void successor(C7664e<T> eVar, C7664e<T> eVar2) {
        eVar.f30798i = eVar2;
        eVar2.f30797h = eVar;
    }

    public static <T> void successor(C7664e<T> eVar, C7664e<T> eVar2, C7664e<T> eVar3) {
        successor(eVar, eVar2);
        successor(eVar2, eVar3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AbstractC4997j0.AbstractC4998a<E> wrapEntry(C7664e<E> eVar) {
        return new C7660a(eVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        C5023s0.m24622a(this, objectOutputStream);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int add(E e, int i) {
        C5006n.m24663a(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        C4933n.m24791a(this.range.contains(e));
        C7664e<E> b = this.rootReference.m7972b();
        if (b == null) {
            comparator().compare(e, e);
            C7664e<E> eVar = new C7664e<>(e, i);
            C7664e<E> eVar2 = this.header;
            successor(eVar2, eVar, eVar2);
            this.rootReference.m7973a(b, eVar);
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.m7973a(b, b.m8004a(comparator(), e, i, iArr));
        return iArr[0];
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        if (this.range.hasLowerBound() || this.range.hasUpperBound()) {
            Iterators.m8258b(entryIterator());
            return;
        }
        C7664e<E> eVar = this.header.f30798i;
        while (true) {
            C7664e<E> eVar2 = this.header;
            if (eVar != eVar2) {
                eVar = eVar.f30798i;
                eVar.f30791b = 0;
                eVar.f30795f = null;
                eVar.f30796g = null;
                eVar.f30797h = null;
                eVar.f30798i = null;
            } else {
                successor(eVar2, eVar2);
                this.rootReference.m7974a();
                return;
            }
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4988h, p131c.p161d.p266c.p269c.AbstractC5033w0, p131c.p161d.p266c.p269c.AbstractC5029u0
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int count(Object obj) {
        try {
            C7664e<E> b = this.rootReference.m7972b();
            if (!this.range.contains(obj) || b == null) {
                return 0;
            }
            return b.m7998b((Comparator<? super Comparator<? super E>>) comparator(), (Comparator<? super E>) obj);
        } catch (ClassCastException | NullPointerException e) {
            return 0;
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4988h
    public Iterator<AbstractC4997j0.AbstractC4998a<E>> descendingEntryIterator() {
        return new C7662c();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4988h, p131c.p161d.p266c.p269c.AbstractC5033w0
    public /* bridge */ /* synthetic */ AbstractC5033w0 descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public int distinctElements() {
        return Ints.m7808b(aggregateForEntries(Aggregate.DISTINCT));
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public Iterator<E> elementIterator() {
        return Multisets.m8082a(entryIterator());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4988h, p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public Iterator<AbstractC4997j0.AbstractC4998a<E>> entryIterator() {
        return new C7661b();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4988h, p131c.p161d.p266c.p269c.AbstractC5033w0
    public /* bridge */ /* synthetic */ AbstractC4997j0.AbstractC4998a firstEntry() {
        return super.firstEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> headMultiset(E e, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.upTo(comparator(), e, boundType)), this.header);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
    public Iterator<E> iterator() {
        return Multisets.m8092a((AbstractC4997j0) this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4988h, p131c.p161d.p266c.p269c.AbstractC5033w0
    public /* bridge */ /* synthetic */ AbstractC4997j0.AbstractC4998a lastEntry() {
        return super.lastEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4988h, p131c.p161d.p266c.p269c.AbstractC5033w0
    public /* bridge */ /* synthetic */ AbstractC4997j0.AbstractC4998a pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4988h, p131c.p161d.p266c.p269c.AbstractC5033w0
    public /* bridge */ /* synthetic */ AbstractC4997j0.AbstractC4998a pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int remove(Object obj, int i) {
        C5006n.m24663a(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        C7664e<E> b = this.rootReference.m7972b();
        int[] iArr = new int[1];
        try {
            if (!this.range.contains(obj) || b == null) {
                return 0;
            }
            this.rootReference.m7973a(b, b.m7997b(comparator(), obj, i, iArr));
            return iArr[0];
        } catch (ClassCastException | NullPointerException e) {
            return 0;
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int setCount(E e, int i) {
        C5006n.m24663a(i, "count");
        boolean z = true;
        if (!this.range.contains(e)) {
            if (i != 0) {
                z = false;
            }
            C4933n.m24791a(z);
            return 0;
        }
        C7664e<E> b = this.rootReference.m7972b();
        if (b != null) {
            int[] iArr = new int[1];
            this.rootReference.m7973a(b, b.m7992c(comparator(), e, i, iArr));
            return iArr[0];
        } else if (i <= 0) {
            return 0;
        } else {
            add(e, i);
            return 0;
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public boolean setCount(E e, int i, int i2) {
        C5006n.m24663a(i2, "newCount");
        C5006n.m24663a(i, "oldCount");
        C4933n.m24791a(this.range.contains(e));
        C7664e<E> b = this.rootReference.m7972b();
        boolean z = false;
        if (b != null) {
            int[] iArr = new int[1];
            this.rootReference.m7973a(b, b.m8005a(comparator(), e, i, i2, iArr));
            if (iArr[0] == i) {
                z = true;
            }
            return z;
        } else if (i != 0) {
            return false;
        } else {
            if (i2 <= 0) {
                return true;
            }
            add(e, i2);
            return true;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int size() {
        return Ints.m7808b(aggregateForEntries(Aggregate.SIZE));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4988h, p131c.p161d.p266c.p269c.AbstractC5033w0
    public /* bridge */ /* synthetic */ AbstractC5033w0 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> tailMultiset(E e, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.downTo(comparator(), e, boundType)), this.header);
    }
}
