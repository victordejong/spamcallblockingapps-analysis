package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap.class */
public final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final Comparator<Comparable> NATURAL_ORDER = new C7896a();
    public Comparator<? super K> comparator;
    public LinkedHashTreeMap<K, V>.C7899d entrySet;
    public final C7904g<K, V> header;
    public LinkedHashTreeMap<K, V>.C7901e keySet;
    public int modCount;
    public int size;
    public C7904g<K, V>[] table;
    public int threshold;

    /* renamed from: com.google.gson.internal.LinkedHashTreeMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$a.class */
    public class C7896a implements Comparator<Comparable> {
        /* renamed from: a */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* renamed from: com.google.gson.internal.LinkedHashTreeMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$b.class */
    public static final class C7897b<K, V> {

        /* renamed from: a */
        public C7904g<K, V> f31059a;

        /* renamed from: b */
        public int f31060b;

        /* renamed from: c */
        public int f31061c;

        /* renamed from: d */
        public int f31062d;

        /* renamed from: a */
        public C7904g<K, V> m7111a() {
            C7904g<K, V> gVar = this.f31059a;
            if (gVar.f31070a == null) {
                return gVar;
            }
            throw new IllegalStateException();
        }

        /* renamed from: a */
        public void m7110a(int i) {
            this.f31060b = ((Integer.highestOneBit(i) * 2) - 1) - i;
            this.f31062d = 0;
            this.f31061c = 0;
            this.f31059a = null;
        }

        /* renamed from: a */
        public void m7109a(C7904g<K, V> gVar) {
            gVar.f31072c = null;
            gVar.f31070a = null;
            gVar.f31071b = null;
            gVar.f31078i = 1;
            int i = this.f31060b;
            if (i > 0) {
                int i2 = this.f31062d;
                if ((i2 & 1) == 0) {
                    this.f31062d = i2 + 1;
                    this.f31060b = i - 1;
                    this.f31061c++;
                }
            }
            gVar.f31070a = this.f31059a;
            this.f31059a = gVar;
            int i3 = this.f31062d + 1;
            this.f31062d = i3;
            int i4 = this.f31060b;
            if (i4 > 0 && (i3 & 1) == 0) {
                this.f31062d = i3 + 1;
                this.f31060b = i4 - 1;
                this.f31061c++;
            }
            int i5 = 4;
            while (true) {
                int i6 = i5 - 1;
                if ((this.f31062d & i6) == i6) {
                    int i7 = this.f31061c;
                    if (i7 == 0) {
                        C7904g<K, V> gVar2 = this.f31059a;
                        C7904g<K, V> gVar3 = gVar2.f31070a;
                        C7904g<K, V> gVar4 = gVar3.f31070a;
                        gVar3.f31070a = gVar4.f31070a;
                        this.f31059a = gVar3;
                        gVar3.f31071b = gVar4;
                        gVar3.f31072c = gVar2;
                        gVar3.f31078i = gVar2.f31078i + 1;
                        gVar4.f31070a = gVar3;
                        gVar2.f31070a = gVar3;
                    } else if (i7 == 1) {
                        C7904g<K, V> gVar5 = this.f31059a;
                        C7904g<K, V> gVar6 = gVar5.f31070a;
                        this.f31059a = gVar6;
                        gVar6.f31072c = gVar5;
                        gVar6.f31078i = gVar5.f31078i + 1;
                        gVar5.f31070a = gVar6;
                        this.f31061c = 0;
                    } else if (i7 == 2) {
                        this.f31061c = 0;
                    }
                    i5 *= 2;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: com.google.gson.internal.LinkedHashTreeMap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$c.class */
    public static class C7898c<K, V> {

        /* renamed from: a */
        public C7904g<K, V> f31063a;

        /* renamed from: a */
        public C7904g<K, V> m7108a() {
            C7904g<K, V> gVar = this.f31063a;
            if (gVar == null) {
                return null;
            }
            C7904g<K, V> gVar2 = gVar.f31070a;
            gVar.f31070a = null;
            gVar2 = gVar.f31072c;
            while (gVar2 != null) {
                gVar2.f31070a = gVar2;
                gVar2 = gVar2.f31071b;
            }
            this.f31063a = gVar2;
            return gVar;
        }

        /* renamed from: a */
        public void m7107a(C7904g<K, V> gVar) {
            C7904g<K, V> gVar2 = null;
            while (gVar != null) {
                gVar.f31070a = gVar2;
                gVar = gVar.f31071b;
                gVar2 = gVar;
            }
            this.f31063a = gVar2;
        }
    }

    /* renamed from: com.google.gson.internal.LinkedHashTreeMap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$d.class */
    public final class C7899d extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: com.google.gson.internal.LinkedHashTreeMap$d$a */
        /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$d$a.class */
        public class C7900a extends LinkedHashTreeMap<K, V>.AbstractC7903f<Map.Entry<K, V>> {
            public C7900a(C7899d dVar) {
                super();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                return m7106a();
            }
        }

        public C7899d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedHashTreeMap.this.findByEntry((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C7900a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            C7904g<K, V> findByEntry;
            if (!(obj instanceof Map.Entry) || (findByEntry = LinkedHashTreeMap.this.findByEntry((Map.Entry) obj)) == null) {
                return false;
            }
            LinkedHashTreeMap.this.removeInternal(findByEntry, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.size;
        }
    }

    /* renamed from: com.google.gson.internal.LinkedHashTreeMap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$e.class */
    public final class C7901e extends AbstractSet<K> {

        /* renamed from: com.google.gson.internal.LinkedHashTreeMap$e$a */
        /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$e$a.class */
        public class C7902a extends LinkedHashTreeMap<K, V>.AbstractC7903f<K> {
            public C7902a(C7901e eVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return m7106a().f31075f;
            }
        }

        public C7901e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedHashTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C7902a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedHashTreeMap.this.removeInternalByKey(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.size;
        }
    }

    /* renamed from: com.google.gson.internal.LinkedHashTreeMap$f */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$f.class */
    public abstract class AbstractC7903f<T> implements Iterator<T> {

        /* renamed from: a */
        public C7904g<K, V> f31066a;

        /* renamed from: b */
        public C7904g<K, V> f31067b = null;

        /* renamed from: c */
        public int f31068c;

        public AbstractC7903f() {
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            this.f31066a = linkedHashTreeMap.header.f31073d;
            this.f31068c = linkedHashTreeMap.modCount;
        }

        /* renamed from: a */
        public final C7904g<K, V> m7106a() {
            C7904g<K, V> gVar = this.f31066a;
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            if (gVar == linkedHashTreeMap.header) {
                throw new NoSuchElementException();
            } else if (linkedHashTreeMap.modCount == this.f31068c) {
                this.f31066a = gVar.f31073d;
                this.f31067b = gVar;
                return gVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f31066a != LinkedHashTreeMap.this.header;
        }

        @Override // java.util.Iterator
        public final void remove() {
            C7904g<K, V> gVar = this.f31067b;
            if (gVar != null) {
                LinkedHashTreeMap.this.removeInternal(gVar, true);
                this.f31067b = null;
                this.f31068c = LinkedHashTreeMap.this.modCount;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: com.google.gson.internal.LinkedHashTreeMap$g */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$g.class */
    public static final class C7904g<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        public C7904g<K, V> f31070a;

        /* renamed from: b */
        public C7904g<K, V> f31071b;

        /* renamed from: c */
        public C7904g<K, V> f31072c;

        /* renamed from: d */
        public C7904g<K, V> f31073d;

        /* renamed from: e */
        public C7904g<K, V> f31074e;

        /* renamed from: f */
        public final K f31075f;

        /* renamed from: g */
        public final int f31076g;

        /* renamed from: h */
        public V f31077h;

        /* renamed from: i */
        public int f31078i;

        public C7904g() {
            this.f31075f = null;
            this.f31076g = -1;
            this.f31074e = this;
            this.f31073d = this;
        }

        public C7904g(C7904g<K, V> gVar, K k, int i, C7904g<K, V> gVar2, C7904g<K, V> gVar3) {
            this.f31070a = gVar;
            this.f31075f = k;
            this.f31076g = i;
            this.f31078i = 1;
            this.f31073d = gVar2;
            this.f31074e = gVar3;
            gVar3.f31073d = this;
            gVar2.f31074e = this;
        }

        /* renamed from: a */
        public C7904g<K, V> m7105a() {
            C7904g<K, V> gVar = this.f31071b;
            C7904g<K, V> gVar2 = this;
            while (gVar != null) {
                gVar = gVar.f31071b;
                gVar2 = gVar;
            }
            return gVar2;
        }

        /* renamed from: b */
        public C7904g<K, V> m7104b() {
            C7904g<K, V> gVar = this.f31072c;
            C7904g<K, V> gVar2 = this;
            while (gVar != null) {
                gVar = gVar.f31072c;
                gVar2 = gVar;
            }
            return gVar2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
            r0 = r3.f31077h;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
            if (r0 != null) goto L_0x0058;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0049, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
            if (r0.getValue() != null) goto L_0x006c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0066, code lost:
            if (r0.equals(r0.getValue()) == false) goto L_0x006c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
            r7 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0.getKey() == null) goto L_0x003e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
            if (r0.equals(r0.getKey()) != false) goto L_0x003e;
         */
        @Override // java.util.Map.Entry
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                boolean r0 = r0 instanceof java.util.Map.Entry
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L_0x006c
                r0 = r4
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r4 = r0
                r0 = r3
                K r0 = r0.f31075f
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L_0x002d
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.Object r0 = r0.getKey()
                if (r0 != 0) goto L_0x006c
                goto L_0x003e
            L_0x002d:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r4
                java.lang.Object r1 = r1.getKey()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x006c
            L_0x003e:
                r0 = r3
                V r0 = r0.f31077h
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L_0x0058
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.Object r0 = r0.getValue()
                if (r0 != 0) goto L_0x006c
                goto L_0x0069
            L_0x0058:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r4
                java.lang.Object r1 = r1.getValue()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x006c
            L_0x0069:
                r0 = 1
                r7 = r0
            L_0x006c:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedHashTreeMap.C7904g.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f31075f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f31077h;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f31075f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f31077h;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f31077h;
            this.f31077h = v;
            return v2;
        }

        public String toString() {
            return this.f31075f + "=" + this.f31077h;
        }
    }

    public LinkedHashTreeMap() {
        this(NATURAL_ORDER);
    }

    public LinkedHashTreeMap(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.comparator = comparator == null ? NATURAL_ORDER : comparator;
        this.header = new C7904g<>();
        C7904g<K, V>[] gVarArr = new C7904g[16];
        this.table = gVarArr;
        this.threshold = (gVarArr.length / 2) + (gVarArr.length / 4);
    }

    private void doubleCapacity() {
        C7904g<K, V>[] doubleCapacity = doubleCapacity(this.table);
        this.table = doubleCapacity;
        this.threshold = (doubleCapacity.length / 2) + (doubleCapacity.length / 4);
    }

    public static <K, V> C7904g<K, V>[] doubleCapacity(C7904g<K, V>[] gVarArr) {
        int length = gVarArr.length;
        C7904g<K, V>[] gVarArr2 = new C7904g[length * 2];
        C7898c cVar = new C7898c();
        C7897b bVar = new C7897b();
        C7897b bVar2 = new C7897b();
        for (int i = 0; i < length; i++) {
            C7904g<K, V> gVar = gVarArr[i];
            if (gVar != null) {
                cVar.m7107a(gVar);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    C7904g<K, V> a = cVar.m7108a();
                    if (a == null) {
                        break;
                    } else if ((a.f31076g & length) == 0) {
                        i2++;
                    } else {
                        i3++;
                    }
                }
                bVar.m7110a(i2);
                bVar2.m7110a(i3);
                cVar.m7107a(gVar);
                while (true) {
                    C7904g<K, V> a2 = cVar.m7108a();
                    if (a2 == null) {
                        break;
                    } else if ((a2.f31076g & length) == 0) {
                        bVar.m7109a(a2);
                    } else {
                        bVar2.m7109a(a2);
                    }
                }
                C7904g<K, V> gVar2 = null;
                gVarArr2[i] = i2 > 0 ? bVar.m7111a() : null;
                if (i3 > 0) {
                    gVar2 = bVar2.m7111a();
                }
                gVarArr2[i + length] = gVar2;
            }
        }
        return gVarArr2;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void rebalance(C7904g<K, V> gVar, boolean z) {
        while (gVar != null) {
            C7904g<K, V> gVar2 = gVar.f31071b;
            C7904g<K, V> gVar3 = gVar.f31072c;
            int i = 0;
            int i2 = 0;
            int i3 = gVar2 != null ? gVar2.f31078i : 0;
            int i4 = gVar3 != null ? gVar3.f31078i : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                C7904g<K, V> gVar4 = gVar3.f31071b;
                C7904g<K, V> gVar5 = gVar3.f31072c;
                int i6 = gVar5 != null ? gVar5.f31078i : 0;
                if (gVar4 != null) {
                    i2 = gVar4.f31078i;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    rotateLeft(gVar);
                } else {
                    rotateRight(gVar3);
                    rotateLeft(gVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                C7904g<K, V> gVar6 = gVar2.f31071b;
                C7904g<K, V> gVar7 = gVar2.f31072c;
                int i8 = gVar7 != null ? gVar7.f31078i : 0;
                if (gVar6 != null) {
                    i = gVar6.f31078i;
                }
                int i9 = i - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    rotateRight(gVar);
                } else {
                    rotateLeft(gVar2);
                    rotateRight(gVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                gVar.f31078i = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                gVar.f31078i = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            gVar = gVar.f31070a;
        }
    }

    private void replaceInParent(C7904g<K, V> gVar, C7904g<K, V> gVar2) {
        C7904g<K, V> gVar3 = gVar.f31070a;
        gVar.f31070a = null;
        if (gVar2 != null) {
            gVar2.f31070a = gVar3;
        }
        if (gVar3 == null) {
            int i = gVar.f31076g;
            C7904g<K, V>[] gVarArr = this.table;
            gVarArr[i & (gVarArr.length - 1)] = gVar2;
        } else if (gVar3.f31071b == gVar) {
            gVar3.f31071b = gVar2;
        } else {
            gVar3.f31072c = gVar2;
        }
    }

    private void rotateLeft(C7904g<K, V> gVar) {
        C7904g<K, V> gVar2 = gVar.f31071b;
        C7904g<K, V> gVar3 = gVar.f31072c;
        C7904g<K, V> gVar4 = gVar3.f31071b;
        C7904g<K, V> gVar5 = gVar3.f31072c;
        gVar.f31072c = gVar4;
        if (gVar4 != null) {
            gVar4.f31070a = gVar;
        }
        replaceInParent(gVar, gVar3);
        gVar3.f31071b = gVar;
        gVar.f31070a = gVar3;
        int i = 0;
        int max = Math.max(gVar2 != null ? gVar2.f31078i : 0, gVar4 != null ? gVar4.f31078i : 0) + 1;
        gVar.f31078i = max;
        if (gVar5 != null) {
            i = gVar5.f31078i;
        }
        gVar3.f31078i = Math.max(max, i) + 1;
    }

    private void rotateRight(C7904g<K, V> gVar) {
        C7904g<K, V> gVar2 = gVar.f31071b;
        C7904g<K, V> gVar3 = gVar.f31072c;
        C7904g<K, V> gVar4 = gVar2.f31071b;
        C7904g<K, V> gVar5 = gVar2.f31072c;
        gVar.f31071b = gVar5;
        if (gVar5 != null) {
            gVar5.f31070a = gVar;
        }
        replaceInParent(gVar, gVar2);
        gVar2.f31072c = gVar;
        gVar.f31070a = gVar2;
        int i = 0;
        int max = Math.max(gVar3 != null ? gVar3.f31078i : 0, gVar5 != null ? gVar5.f31078i : 0) + 1;
        gVar.f31078i = max;
        if (gVar4 != null) {
            i = gVar4.f31078i;
        }
        gVar2.f31078i = Math.max(max, i) + 1;
    }

    public static int secondaryHash(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.table, (Object) null);
        this.size = 0;
        this.modCount++;
        C7904g<K, V> gVar = this.header;
        C7904g<K, V> gVar2 = gVar.f31073d;
        while (gVar2 != gVar) {
            gVar2 = gVar2.f31073d;
            gVar2.f31074e = null;
            gVar2.f31073d = null;
        }
        gVar.f31074e = gVar;
        gVar.f31073d = gVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedHashTreeMap<K, V>.C7899d dVar = this.entrySet;
        if (dVar == null) {
            dVar = new C7899d();
            this.entrySet = dVar;
        }
        return dVar;
    }

    public C7904g<K, V> find(K k, boolean z) {
        int i;
        C7904g<K, V> gVar;
        Comparator<? super K> comparator = this.comparator;
        C7904g<K, V>[] gVarArr = this.table;
        int secondaryHash = secondaryHash(k.hashCode());
        int length = (gVarArr.length - 1) & secondaryHash;
        C7904g<K, V> gVar2 = gVarArr[length];
        if (gVar2 != null) {
            Comparable comparable = comparator == NATURAL_ORDER ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(gVar2.f31075f) : comparator.compare(k, (K) gVar2.f31075f);
                if (i == 0) {
                    return gVar2;
                }
                C7904g<K, V> gVar3 = i < 0 ? gVar2.f31071b : gVar2.f31072c;
                if (gVar3 == null) {
                    break;
                }
                gVar2 = gVar3;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        C7904g<K, V> gVar4 = this.header;
        if (gVar2 != null) {
            gVar = new C7904g<>(gVar2, k, secondaryHash, gVar4, gVar4.f31074e);
            if (i < 0) {
                gVar2.f31071b = gVar;
            } else {
                gVar2.f31072c = gVar;
            }
            rebalance(gVar2, true);
        } else if (comparator != NATURAL_ORDER || (k instanceof Comparable)) {
            gVar = new C7904g<>(gVar2, k, secondaryHash, gVar4, gVar4.f31074e);
            gVarArr[length] = gVar;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        int i2 = this.size;
        this.size = i2 + 1;
        if (i2 > this.threshold) {
            doubleCapacity();
        }
        this.modCount++;
        return gVar;
    }

    public C7904g<K, V> findByEntry(Map.Entry<?, ?> entry) {
        C7904g<K, V> findByObject = findByObject(entry.getKey());
        return findByObject != null && equal(findByObject.f31077h, entry.getValue()) ? findByObject : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C7904g<K, V> findByObject(Object obj) {
        C7904g<K, V> gVar = null;
        if (obj != 0) {
            try {
                gVar = find(obj, false);
            } catch (ClassCastException e) {
                gVar = null;
            }
        }
        return gVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        C7904g<K, V> findByObject = findByObject(obj);
        return findByObject != null ? findByObject.f31077h : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedHashTreeMap<K, V>.C7901e eVar = this.keySet;
        if (eVar == null) {
            eVar = new C7901e();
            this.keySet = eVar;
        }
        return eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k != null) {
            C7904g<K, V> find = find(k, true);
            V v2 = find.f31077h;
            find.f31077h = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        C7904g<K, V> removeInternalByKey = removeInternalByKey(obj);
        return removeInternalByKey != null ? removeInternalByKey.f31077h : null;
    }

    public void removeInternal(C7904g<K, V> gVar, boolean z) {
        int i;
        if (z) {
            C7904g<K, V> gVar2 = gVar.f31074e;
            gVar2.f31073d = gVar.f31073d;
            gVar.f31073d.f31074e = gVar2;
            gVar.f31074e = null;
            gVar.f31073d = null;
        }
        C7904g<K, V> gVar3 = gVar.f31071b;
        C7904g<K, V> gVar4 = gVar.f31072c;
        C7904g<K, V> gVar5 = gVar.f31070a;
        int i2 = 0;
        if (gVar3 == null || gVar4 == null) {
            if (gVar3 != null) {
                replaceInParent(gVar, gVar3);
                gVar.f31071b = null;
            } else if (gVar4 != null) {
                replaceInParent(gVar, gVar4);
                gVar.f31072c = null;
            } else {
                replaceInParent(gVar, null);
            }
            rebalance(gVar5, false);
            this.size--;
            this.modCount++;
            return;
        }
        C7904g<K, V> b = gVar3.f31078i > gVar4.f31078i ? gVar3.m7104b() : gVar4.m7105a();
        removeInternal(b, false);
        C7904g<K, V> gVar6 = gVar.f31071b;
        if (gVar6 != null) {
            i = gVar6.f31078i;
            b.f31071b = gVar6;
            gVar6.f31070a = b;
            gVar.f31071b = null;
        } else {
            i = 0;
        }
        C7904g<K, V> gVar7 = gVar.f31072c;
        if (gVar7 != null) {
            i2 = gVar7.f31078i;
            b.f31072c = gVar7;
            gVar7.f31070a = b;
            gVar.f31072c = null;
        }
        b.f31078i = Math.max(i, i2) + 1;
        replaceInParent(gVar, b);
    }

    public C7904g<K, V> removeInternalByKey(Object obj) {
        C7904g<K, V> findByObject = findByObject(obj);
        if (findByObject != null) {
            removeInternal(findByObject, true);
        }
        return findByObject;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }
}
