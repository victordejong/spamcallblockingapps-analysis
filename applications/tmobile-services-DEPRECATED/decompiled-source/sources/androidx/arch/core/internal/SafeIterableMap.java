package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/arch/core/internal/SafeIterableMap.class */
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: f */
    Entry<K, V> f1468f;

    /* renamed from: g */
    private Entry<K, V> f1469g;

    /* renamed from: h */
    private WeakHashMap<SupportRemove<K, V>, Boolean> f1470h = new WeakHashMap<>();

    /* renamed from: i */
    private int f1471i = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/arch/core/internal/SafeIterableMap$AscendingIterator.class */
    public static class AscendingIterator<K, V> extends ListIterator<K, V> {
        AscendingIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            super(entry, entry2);
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        /* renamed from: b */
        Entry<K, V> mo21131b(Entry<K, V> entry) {
            return entry.f1475i;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        /* renamed from: c */
        Entry<K, V> mo21130c(Entry<K, V> entry) {
            return entry.f1474h;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/arch/core/internal/SafeIterableMap$DescendingIterator.class */
    private static class DescendingIterator<K, V> extends ListIterator<K, V> {
        DescendingIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            super(entry, entry2);
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        /* renamed from: b */
        Entry<K, V> mo21131b(Entry<K, V> entry) {
            return entry.f1474h;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        /* renamed from: c */
        Entry<K, V> mo21130c(Entry<K, V> entry) {
            return entry.f1475i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/arch/core/internal/SafeIterableMap$Entry.class */
    public static class Entry<K, V> implements Map.Entry<K, V> {
        @NonNull

        /* renamed from: f */
        final K f1472f;
        @NonNull

        /* renamed from: g */
        final V f1473g;

        /* renamed from: h */
        Entry<K, V> f1474h;

        /* renamed from: i */
        Entry<K, V> f1475i;

        Entry(@NonNull K k, @NonNull V v) {
            this.f1472f = k;
            this.f1473g = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (!this.f1472f.equals(entry.f1472f) || !this.f1473g.equals(entry.f1473g)) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.f1472f;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.f1473g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f1472f.hashCode() ^ this.f1473g.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f1472f + "=" + this.f1473g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions.class */
    public class IteratorWithAdditions implements Iterator<Map.Entry<K, V>>, SupportRemove<K, V> {

        /* renamed from: f */
        private Entry<K, V> f1476f;

        /* renamed from: g */
        private boolean f1477g = true;

        IteratorWithAdditions() {
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        /* renamed from: a */
        public void mo21127a(@NonNull Entry<K, V> entry) {
            Entry<K, V> entry2 = this.f1476f;
            if (entry == entry2) {
                Entry<K, V> entry3 = entry2.f1475i;
                this.f1476f = entry3;
                this.f1477g = entry3 == null;
            }
        }

        /* renamed from: b */
        public Map.Entry<K, V> next() {
            if (this.f1477g) {
                this.f1477g = false;
                this.f1476f = SafeIterableMap.this.f1468f;
            } else {
                Entry<K, V> entry = this.f1476f;
                this.f1476f = entry != null ? entry.f1474h : null;
            }
            return this.f1476f;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            boolean z2 = true;
            if (this.f1477g) {
                if (SafeIterableMap.this.f1468f == null) {
                    z2 = false;
                }
                return z2;
            }
            Entry<K, V> entry = this.f1476f;
            if (entry == null || entry.f1474h == null) {
                z = false;
            }
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/arch/core/internal/SafeIterableMap$ListIterator.class */
    private static abstract class ListIterator<K, V> implements Iterator<Map.Entry<K, V>>, SupportRemove<K, V> {

        /* renamed from: f */
        Entry<K, V> f1479f;

        /* renamed from: g */
        Entry<K, V> f1480g;

        ListIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            this.f1479f = entry2;
            this.f1480g = entry;
        }

        /* renamed from: e */
        private Entry<K, V> m21128e() {
            Entry<K, V> entry = this.f1480g;
            Entry<K, V> entry2 = this.f1479f;
            if (entry == entry2 || entry2 == null) {
                return null;
            }
            return mo21130c(entry);
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        /* renamed from: a */
        public void mo21127a(@NonNull Entry<K, V> entry) {
            if (this.f1479f == entry && entry == this.f1480g) {
                this.f1480g = null;
                this.f1479f = null;
            }
            Entry<K, V> entry2 = this.f1479f;
            if (entry2 == entry) {
                this.f1479f = mo21131b(entry2);
            }
            if (this.f1480g == entry) {
                this.f1480g = m21128e();
            }
        }

        /* renamed from: b */
        abstract Entry<K, V> mo21131b(Entry<K, V> entry);

        /* renamed from: c */
        abstract Entry<K, V> mo21130c(Entry<K, V> entry);

        /* renamed from: d */
        public Map.Entry<K, V> next() {
            Entry<K, V> entry = this.f1480g;
            this.f1480g = m21128e();
            return entry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1480g != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/arch/core/internal/SafeIterableMap$SupportRemove.class */
    public interface SupportRemove<K, V> {
        /* renamed from: a */
        void mo21127a(@NonNull Entry<K, V> entry);
    }

    /* renamed from: c */
    public Map.Entry<K, V> m21139c() {
        return this.f1468f;
    }

    /* renamed from: d */
    protected Entry<K, V> mo21138d(K k) {
        Entry<K, V> entry = this.f1468f;
        while (entry != null && !entry.f1472f.equals(k)) {
            entry = entry.f1474h;
        }
        return entry;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        DescendingIterator descendingIterator = new DescendingIterator(this.f1469g, this.f1468f);
        this.f1470h.put(descendingIterator, Boolean.FALSE);
        return descendingIterator;
    }

    /* renamed from: e */
    public SafeIterableMap<K, V>.IteratorWithAdditions m21137e() {
        SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions = new IteratorWithAdditions();
        this.f1470h.put(iteratorWithAdditions, Boolean.FALSE);
        return iteratorWithAdditions;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap)) {
            return false;
        }
        SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
        if (size() != safeIterableMap.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = safeIterableMap.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if (next == null && next2 != null) {
                return false;
            }
            if (next != null && !next.equals(next2)) {
                return false;
            }
        }
        if (it.hasNext() || it2.hasNext()) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public Map.Entry<K, V> m21136f() {
        return this.f1469g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public Entry<K, V> m21135g(@NonNull K k, @NonNull V v) {
        Entry<K, V> entry = new Entry<>(k, v);
        this.f1471i++;
        Entry<K, V> entry2 = this.f1469g;
        if (entry2 == null) {
            this.f1468f = entry;
            this.f1469g = entry;
            return entry;
        }
        entry2.f1474h = entry;
        entry.f1475i = entry2;
        this.f1469g = entry;
        return entry;
    }

    /* renamed from: h */
    public V mo21134h(@NonNull K k, @NonNull V v) {
        Entry<K, V> d = mo21138d(k);
        if (d != null) {
            return d.f1473g;
        }
        m21135g(k, v);
        return null;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        AscendingIterator ascendingIterator = new AscendingIterator(this.f1468f, this.f1469g);
        this.f1470h.put(ascendingIterator, Boolean.FALSE);
        return ascendingIterator;
    }

    /* renamed from: j */
    public V mo21133j(@NonNull K k) {
        Entry<K, V> d = mo21138d(k);
        if (d == null) {
            return null;
        }
        this.f1471i--;
        if (!this.f1470h.isEmpty()) {
            for (SupportRemove<K, V> supportRemove : this.f1470h.keySet()) {
                supportRemove.mo21127a(d);
            }
        }
        Entry<K, V> entry = d.f1475i;
        if (entry != null) {
            entry.f1474h = d.f1474h;
        } else {
            this.f1468f = d.f1474h;
        }
        Entry<K, V> entry2 = d.f1474h;
        if (entry2 != null) {
            entry2.f1475i = d.f1475i;
        } else {
            this.f1469g = d.f1475i;
        }
        d.f1474h = null;
        d.f1475i = null;
        return d.f1473g;
    }

    public int size() {
        return this.f1471i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
