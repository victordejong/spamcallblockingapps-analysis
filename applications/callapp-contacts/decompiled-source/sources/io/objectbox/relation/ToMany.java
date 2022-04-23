package io.objectbox.relation;

import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.a;
import io.objectbox.b.c;
import io.objectbox.b.f;
import io.objectbox.b.g;
import io.objectbox.b.h;
import io.objectbox.exception.DbDetachedException;
import io.objectbox.relation.a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/objectbox/relation/ToMany.class */
public class ToMany<TARGET> implements Serializable, List<TARGET> {
    private static final Integer h = 1;

    /* renamed from: a  reason: collision with root package name */
    public final Object f36267a;

    /* renamed from: b  reason: collision with root package name */
    public final b<Object, TARGET> f36268b;

    /* renamed from: c  reason: collision with root package name */
    public volatile Map<TARGET, Boolean> f36269c;

    /* renamed from: d  reason: collision with root package name */
    public Map<TARGET, Boolean> f36270d;
    public List<TARGET> e;
    public List<TARGET> f;
    public transient boolean g;
    private volatile a i;
    private List<TARGET> j;
    private Map<TARGET, Integer> k;
    private transient BoxStore l;
    private transient a<Object> m;
    private volatile transient a<TARGET> n;
    private transient Comparator<TARGET> o;

    public ToMany(Object obj, b<?, TARGET> bVar) {
        if (obj == null) {
            throw new IllegalArgumentException("No source entity given (null)");
        } else if (bVar != null) {
            this.f36267a = obj;
            this.f36268b = bVar;
        } else {
            throw new IllegalArgumentException("No relation info given (null)");
        }
    }

    private TARGET a(long j) {
        synchronized (this) {
            e();
            int size = this.j.size();
            c<TARGET> idGetter = this.f36268b.f36276b.getIdGetter();
            for (int i = 0; i < size; i++) {
                TARGET target = this.j.get(i);
                if (idGetter.getId(target) == j) {
                    TARGET remove = remove(i);
                    if (remove == target) {
                        return target;
                    }
                    throw new IllegalStateException("Mismatch: " + remove + " vs. " + target);
                }
            }
            return null;
        }
    }

    private void a(TARGET target) {
        d();
        Integer put = this.k.put(target, h);
        if (put != null) {
            this.k.put(target, Integer.valueOf(put.intValue() + 1));
        }
        this.f36269c.put(target, Boolean.TRUE);
        this.f36270d.remove(target);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(Collection<? extends TARGET> collection) {
        d();
        Iterator<? extends TARGET> it2 = collection.iterator();
        while (it2.hasNext()) {
            a((ToMany<TARGET>) it2.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean a(long j, c<TARGET> cVar, Map<TARGET, Boolean> map, Map<TARGET, Boolean> map2) {
        boolean z;
        g<TARGET> gVar = this.f36268b.h;
        synchronized (this) {
            if (map != null) {
                if (!map.isEmpty()) {
                    for (TARGET target : map.keySet()) {
                        ToMany toMany = (ToMany) gVar.getToMany(target);
                        if (toMany == 0) {
                            throw new IllegalStateException("The ToMany property for " + this.f36268b.f36276b.getEntityName() + " is null");
                        } else if (toMany.b(j) == null) {
                            toMany.add(this.f36267a);
                            this.e.add(target);
                        } else if (cVar.getId(target) == 0) {
                            this.e.add(target);
                        }
                    }
                    map.clear();
                }
            }
            if (map2 != null) {
                for (TARGET target2 : map2.keySet()) {
                    ToMany toMany2 = (ToMany) gVar.getToMany(target2);
                    if (toMany2.b(j) != null) {
                        toMany2.a(j);
                        if (cVar.getId(target2) != 0) {
                            if (this.g) {
                                this.f.add(target2);
                            } else {
                                this.e.add(target2);
                            }
                        }
                    }
                }
                map2.clear();
            }
            if (this.e.isEmpty() && this.f.isEmpty()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    private a b() {
        a aVar = this.i;
        a aVar2 = aVar;
        if (aVar == null) {
            synchronized (this) {
                a aVar3 = this.i;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new a.C0592a();
                    this.i = aVar2;
                }
            }
        }
        return aVar2;
    }

    private TARGET b(long j) {
        e();
        Object[] array = this.j.toArray();
        c<TARGET> idGetter = this.f36268b.f36276b.getIdGetter();
        for (Object obj : array) {
            TARGET target = (TARGET) obj;
            if (idGetter.getId(target) == j) {
                return target;
            }
        }
        return null;
    }

    private void b(TARGET target) {
        d();
        Integer remove = this.k.remove(target);
        if (remove == null) {
            return;
        }
        if (remove.intValue() == 1) {
            this.k.remove(target);
            this.f36269c.remove(target);
            this.f36270d.put(target, Boolean.TRUE);
        } else if (remove.intValue() > 1) {
            this.k.put(target, Integer.valueOf(remove.intValue() - 1));
        } else {
            throw new IllegalStateException("Illegal count: ".concat(String.valueOf(remove)));
        }
    }

    private boolean b(long j, c<TARGET> cVar, Map<TARGET, Boolean> map, Map<TARGET, Boolean> map2) {
        boolean z;
        h<TARGET> hVar = this.f36268b.g;
        synchronized (this) {
            if (map != null) {
                if (!map.isEmpty()) {
                    for (TARGET target : map.keySet()) {
                        ToOne<TARGET> toOne = hVar.getToOne(target);
                        if (toOne == null) {
                            throw new IllegalStateException("The ToOne property for " + this.f36268b.f36276b.getEntityName() + "." + this.f36268b.f36277c.e + " is null");
                        } else if (toOne.b() != j) {
                            toOne.a((ToOne<TARGET>) ((TARGET) this.f36267a));
                            this.e.add(target);
                        } else if (cVar.getId(target) == 0) {
                            this.e.add(target);
                        }
                    }
                    map.clear();
                }
            }
            if (map2 != null) {
                for (TARGET target2 : map2.keySet()) {
                    ToOne<TARGET> toOne2 = hVar.getToOne(target2);
                    if (toOne2.b() == j) {
                        toOne2.a((ToOne<TARGET>) null);
                        if (cVar.getId(target2) != 0) {
                            if (this.g) {
                                this.f.add(target2);
                            } else {
                                this.e.add(target2);
                            }
                        }
                    }
                }
                map2.clear();
            }
            if (this.e.isEmpty() && this.f.isEmpty()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    private void c() {
        if (this.n == null) {
            try {
                BoxStore boxStore = (BoxStore) f.a().a(this.f36267a.getClass(), "__boxStore").get(this.f36267a);
                this.l = boxStore;
                if (boxStore != null) {
                    this.m = boxStore.d(this.f36268b.f36275a.getEntityClass());
                    this.n = this.l.d(this.f36268b.f36276b.getEntityClass());
                    return;
                }
                throw new DbDetachedException("Cannot resolve relation for detached entities, call box.attach(entity) beforehand.");
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private void d() {
        e();
        if (this.f36269c == null) {
            synchronized (this) {
                if (this.f36269c == null) {
                    this.f36269c = new LinkedHashMap();
                    this.f36270d = new LinkedHashMap();
                    this.k = new HashMap();
                    for (TARGET target : this.j) {
                        Integer put = this.k.put(target, h);
                        if (put != null) {
                            this.k.put(target, Integer.valueOf(put.intValue() + 1));
                        }
                    }
                }
            }
        }
    }

    private void e() {
        if (this.j == null) {
            long id = this.f36268b.f36275a.getIdGetter().getId(this.f36267a);
            if (id == 0) {
                synchronized (this) {
                    if (this.j == null) {
                        this.j = b().a();
                    }
                }
                return;
            }
            c();
            int i = this.f36268b.i;
            List<TARGET> a2 = i != 0 ? this.n.a(this.f36268b.f36275a.getEntityId(), i, id, false) : this.f36268b.f36277c != null ? this.n.a(this.f36268b.f36276b.getEntityId(), this.f36268b.f36277c, id) : this.n.a(this.f36268b.f36276b.getEntityId(), this.f36268b.f36278d, id, true);
            Comparator<TARGET> comparator = this.o;
            if (comparator != null) {
                Collections.sort(a2, comparator);
            }
            synchronized (this) {
                if (this.j == null) {
                    this.j = a2;
                }
            }
        }
    }

    public final void a(Cursor<?> cursor, long j, List<TARGET> list, c<TARGET> cVar) {
        Iterator<TARGET> it2 = list.iterator();
        while (it2.hasNext()) {
            if (cVar.getId(it2.next()) == 0) {
                it2.remove();
            }
        }
        int size = list.size();
        if (size > 0) {
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                jArr[i] = cVar.getId(list.get(i));
            }
            cursor.modifyRelations(this.f36268b.i, j, jArr, true);
        }
    }

    public final void a(Cursor<?> cursor, long j, TARGET[] targetArr, c<TARGET> cVar) {
        int length = targetArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            long id = cVar.getId(targetArr[i]);
            if (id != 0) {
                jArr[i] = id;
            } else {
                throw new IllegalStateException("Target entity has no ID (should have been put before)");
            }
        }
        cursor.modifyRelations(this.f36268b.i, j, jArr, false);
    }

    public final boolean a() {
        Map<TARGET, Boolean> map;
        Map<TARGET, Boolean> map2 = this.f36269c;
        if (!((map2 != null && !map2.isEmpty()) || ((map = this.f36270d) != null && !map.isEmpty()))) {
            return false;
        }
        synchronized (this) {
            if (this.e == null) {
                this.e = new ArrayList();
                this.f = new ArrayList();
            }
        }
        if (this.f36268b.i != 0) {
            return true;
        }
        long id = this.f36268b.f36275a.getIdGetter().getId(this.f36267a);
        if (id != 0) {
            c<TARGET> idGetter = this.f36268b.f36276b.getIdGetter();
            Map<TARGET, Boolean> map3 = this.f36269c;
            Map<TARGET, Boolean> map4 = this.f36270d;
            return this.f36268b.f36278d != 0 ? a(id, idGetter, map3, map4) : b(id, idGetter, map3, map4);
        }
        throw new IllegalStateException("Source entity has no ID (should have been put before)");
    }

    @Override // java.util.List
    public void add(int i, TARGET target) {
        synchronized (this) {
            a((ToMany<TARGET>) target);
            this.j.add(i, target);
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(TARGET target) {
        boolean add;
        synchronized (this) {
            a((ToMany<TARGET>) target);
            add = this.j.add(target);
        }
        return add;
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends TARGET> collection) {
        boolean addAll;
        synchronized (this) {
            a((Collection) collection);
            addAll = this.j.addAll(i, collection);
        }
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends TARGET> collection) {
        boolean addAll;
        synchronized (this) {
            a((Collection) collection);
            addAll = this.j.addAll(collection);
        }
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        synchronized (this) {
            d();
            List<TARGET> list = this.j;
            if (list != null) {
                for (TARGET target : list) {
                    this.f36270d.put(target, Boolean.TRUE);
                }
                list.clear();
            }
            Map<TARGET, Boolean> map = this.f36269c;
            if (map != null) {
                map.clear();
            }
            Map<TARGET, Integer> map2 = this.k;
            if (map2 != null) {
                map2.clear();
            }
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        e();
        return this.j.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        e();
        return this.j.containsAll(collection);
    }

    @Override // java.util.List
    public TARGET get(int i) {
        e();
        return this.j.get(i);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        e();
        return this.j.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        e();
        return this.j.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<TARGET> iterator() {
        e();
        return this.j.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        e();
        return this.j.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<TARGET> listIterator() {
        e();
        return this.j.listIterator();
    }

    @Override // java.util.List
    public ListIterator<TARGET> listIterator(int i) {
        e();
        return this.j.listIterator(i);
    }

    @Override // java.util.List
    public TARGET remove(int i) {
        TARGET remove;
        synchronized (this) {
            d();
            remove = this.j.remove(i);
            b((ToMany<TARGET>) remove);
        }
        return remove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this) {
            d();
            remove = this.j.remove(obj);
            if (remove) {
                b((ToMany<TARGET>) obj);
            }
        }
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        boolean z;
        synchronized (this) {
            z = false;
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                z |= remove(it2.next());
            }
        }
        return z;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean z;
        synchronized (this) {
            d();
            z = false;
            ArrayList arrayList = null;
            for (TARGET target : this.j) {
                if (!collection.contains(target)) {
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(target);
                    z = true;
                    arrayList = arrayList2;
                }
            }
            if (arrayList != null) {
                removeAll(arrayList);
            }
        }
        return z;
    }

    @Override // java.util.List
    public TARGET set(int i, TARGET target) {
        TARGET target2;
        synchronized (this) {
            d();
            target2 = this.j.set(i, target);
            b((ToMany<TARGET>) target2);
            a((ToMany<TARGET>) target);
        }
        return target2;
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        e();
        return this.j.size();
    }

    @Override // java.util.List
    public List<TARGET> subList(int i, int i2) {
        e();
        return this.j.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        e();
        return this.j.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        e();
        return (T[]) this.j.toArray(tArr);
    }
}
