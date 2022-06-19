package io.objectbox.relation;

import io.objectbox.BoxStore;
import io.objectbox.C17944a;
import io.objectbox.Cursor;
import io.objectbox.exception.DbDetachedException;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17955g;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.p502b.C17954f;
import io.objectbox.relation.AbstractC17988a;
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

    /* renamed from: h */
    private static final Integer f62859h = 1;

    /* renamed from: a */
    public final Object f62860a;

    /* renamed from: b */
    public final C17990b<Object, TARGET> f62861b;

    /* renamed from: c */
    public volatile Map<TARGET, Boolean> f62862c;

    /* renamed from: d */
    public Map<TARGET, Boolean> f62863d;

    /* renamed from: e */
    public List<TARGET> f62864e;

    /* renamed from: f */
    public List<TARGET> f62865f;

    /* renamed from: g */
    public transient boolean f62866g;

    /* renamed from: i */
    private volatile AbstractC17988a f62867i;

    /* renamed from: j */
    private List<TARGET> f62868j;

    /* renamed from: k */
    private Map<TARGET, Integer> f62869k;

    /* renamed from: l */
    private transient BoxStore f62870l;

    /* renamed from: m */
    private transient C17944a<Object> f62871m;

    /* renamed from: n */
    private volatile transient C17944a<TARGET> f62872n;

    /* renamed from: o */
    private transient Comparator<TARGET> f62873o;

    public ToMany(Object obj, C17990b<?, TARGET> c17990b) {
        if (obj != null) {
            if (c17990b == null) {
                throw new IllegalArgumentException("No relation info given (null)");
            }
            this.f62860a = obj;
            this.f62861b = c17990b;
            return;
        }
        throw new IllegalArgumentException("No source entity given (null)");
    }

    /* renamed from: a */
    private TARGET m4586a(long j) {
        synchronized (this) {
            m4574e();
            int size = this.f62868j.size();
            AbstractC17950c<TARGET> idGetter = this.f62861b.f62887b.getIdGetter();
            for (int i = 0; i < size; i++) {
                TARGET target = this.f62868j.get(i);
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

    /* renamed from: a */
    private void m4582a(TARGET target) {
        m4575d();
        Integer put = this.f62869k.put(target, f62859h);
        if (put != null) {
            this.f62869k.put(target, Integer.valueOf(put.intValue() + 1));
        }
        this.f62862c.put(target, Boolean.TRUE);
        this.f62863d.remove(target);
    }

    /* renamed from: a */
    private void m4581a(Collection<? extends TARGET> collection) {
        m4575d();
        for (TARGET target : collection) {
            m4582a((ToMany<TARGET>) target);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private boolean m4585a(long j, AbstractC17950c<TARGET> abstractC17950c, Map<TARGET, Boolean> map, Map<TARGET, Boolean> map2) {
        boolean z;
        AbstractC17955g<TARGET> abstractC17955g = this.f62861b.f62893h;
        synchronized (this) {
            if (map != null) {
                if (!map.isEmpty()) {
                    for (TARGET target : map.keySet()) {
                        ToMany toMany = (ToMany) abstractC17955g.getToMany(target);
                        if (toMany == 0) {
                            throw new IllegalStateException("The ToMany property for " + this.f62861b.f62887b.getEntityName() + " is null");
                        } else if (toMany.m4579b(j) == null) {
                            toMany.add(this.f62860a);
                            this.f62864e.add(target);
                        } else if (abstractC17950c.getId(target) == 0) {
                            this.f62864e.add(target);
                        }
                    }
                    map.clear();
                }
            }
            if (map2 != null) {
                for (TARGET target2 : map2.keySet()) {
                    ToMany toMany2 = (ToMany) abstractC17955g.getToMany(target2);
                    if (toMany2.m4579b(j) != null) {
                        toMany2.m4586a(j);
                        if (abstractC17950c.getId(target2) != 0) {
                            if (this.f62866g) {
                                this.f62865f.add(target2);
                            } else {
                                this.f62864e.add(target2);
                            }
                        }
                    }
                }
                map2.clear();
            }
            if (this.f62864e.isEmpty() && this.f62865f.isEmpty()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private AbstractC17988a m4580b() {
        AbstractC17988a abstractC17988a = this.f62867i;
        AbstractC17988a abstractC17988a2 = abstractC17988a;
        if (abstractC17988a == null) {
            synchronized (this) {
                AbstractC17988a abstractC17988a3 = this.f62867i;
                abstractC17988a2 = abstractC17988a3;
                if (abstractC17988a3 == null) {
                    abstractC17988a2 = new AbstractC17988a.C17989a();
                    this.f62867i = abstractC17988a2;
                }
            }
        }
        return abstractC17988a2;
    }

    /* renamed from: b */
    private TARGET m4579b(long j) {
        m4574e();
        Object[] array = this.f62868j.toArray();
        AbstractC17950c<TARGET> idGetter = this.f62861b.f62887b.getIdGetter();
        for (Object obj : array) {
            TARGET target = (TARGET) obj;
            if (idGetter.getId(target) == j) {
                return target;
            }
        }
        return null;
    }

    /* renamed from: b */
    private void m4577b(TARGET target) {
        m4575d();
        Integer remove = this.f62869k.remove(target);
        if (remove != null) {
            if (remove.intValue() == 1) {
                this.f62869k.remove(target);
                this.f62862c.remove(target);
                this.f62863d.put(target, Boolean.TRUE);
            } else if (remove.intValue() <= 1) {
                throw new IllegalStateException("Illegal count: ".concat(String.valueOf(remove)));
            } else {
                this.f62869k.put(target, Integer.valueOf(remove.intValue() - 1));
            }
        }
    }

    /* renamed from: b */
    private boolean m4578b(long j, AbstractC17950c<TARGET> abstractC17950c, Map<TARGET, Boolean> map, Map<TARGET, Boolean> map2) {
        boolean z;
        AbstractC17956h<TARGET> abstractC17956h = this.f62861b.f62892g;
        synchronized (this) {
            if (map != null) {
                if (!map.isEmpty()) {
                    for (TARGET target : map.keySet()) {
                        ToOne<TARGET> toOne = abstractC17956h.getToOne(target);
                        if (toOne == null) {
                            throw new IllegalStateException("The ToOne property for " + this.f62861b.f62887b.getEntityName() + "." + this.f62861b.f62888c.f62810e + " is null");
                        } else if (toOne.m4568b() != j) {
                            toOne.m4570a((ToOne<TARGET>) ((TARGET) this.f62860a));
                            this.f62864e.add(target);
                        } else if (abstractC17950c.getId(target) == 0) {
                            this.f62864e.add(target);
                        }
                    }
                    map.clear();
                }
            }
            if (map2 != null) {
                for (TARGET target2 : map2.keySet()) {
                    ToOne<TARGET> toOne2 = abstractC17956h.getToOne(target2);
                    if (toOne2.m4568b() == j) {
                        toOne2.m4570a((ToOne<TARGET>) null);
                        if (abstractC17950c.getId(target2) != 0) {
                            if (this.f62866g) {
                                this.f62865f.add(target2);
                            } else {
                                this.f62864e.add(target2);
                            }
                        }
                    }
                }
                map2.clear();
            }
            if (this.f62864e.isEmpty() && this.f62865f.isEmpty()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    private void m4576c() {
        if (this.f62872n == null) {
            try {
                BoxStore boxStore = (BoxStore) C17954f.m4683a().m4682a(this.f62860a.getClass(), "__boxStore").get(this.f62860a);
                this.f62870l = boxStore;
                if (boxStore == null) {
                    throw new DbDetachedException("Cannot resolve relation for detached entities, call box.attach(entity) beforehand.");
                }
                this.f62871m = boxStore.m4727d(this.f62861b.f62886a.getEntityClass());
                this.f62872n = this.f62870l.m4727d(this.f62861b.f62887b.getEntityClass());
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: d */
    private void m4575d() {
        m4574e();
        if (this.f62862c == null) {
            synchronized (this) {
                if (this.f62862c == null) {
                    this.f62862c = new LinkedHashMap();
                    this.f62863d = new LinkedHashMap();
                    this.f62869k = new HashMap();
                    for (TARGET target : this.f62868j) {
                        Integer put = this.f62869k.put(target, f62859h);
                        if (put != null) {
                            this.f62869k.put(target, Integer.valueOf(put.intValue() + 1));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: e */
    private void m4574e() {
        if (this.f62868j == null) {
            long id = this.f62861b.f62886a.getIdGetter().getId(this.f62860a);
            if (id == 0) {
                synchronized (this) {
                    if (this.f62868j == null) {
                        this.f62868j = m4580b().mo4564a();
                    }
                }
                return;
            }
            m4576c();
            int i = this.f62861b.f62894i;
            List<TARGET> m4717a = i != 0 ? this.f62872n.m4717a(this.f62861b.f62886a.getEntityId(), i, id, false) : this.f62861b.f62888c != null ? this.f62872n.m4716a(this.f62861b.f62887b.getEntityId(), this.f62861b.f62888c, id) : this.f62872n.m4717a(this.f62861b.f62887b.getEntityId(), this.f62861b.f62889d, id, true);
            Comparator<TARGET> comparator = this.f62873o;
            if (comparator != null) {
                Collections.sort(m4717a, comparator);
            }
            synchronized (this) {
                if (this.f62868j == null) {
                    this.f62868j = m4717a;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m4584a(Cursor<?> cursor, long j, List<TARGET> list, AbstractC17950c<TARGET> abstractC17950c) {
        Iterator<TARGET> it2 = list.iterator();
        while (it2.hasNext()) {
            if (abstractC17950c.getId(it2.next()) == 0) {
                it2.remove();
            }
        }
        int size = list.size();
        if (size > 0) {
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                jArr[i] = abstractC17950c.getId(list.get(i));
            }
            cursor.modifyRelations(this.f62861b.f62894i, j, jArr, true);
        }
    }

    /* renamed from: a */
    public final void m4583a(Cursor<?> cursor, long j, TARGET[] targetArr, AbstractC17950c<TARGET> abstractC17950c) {
        int length = targetArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            long id = abstractC17950c.getId(targetArr[i]);
            if (id == 0) {
                throw new IllegalStateException("Target entity has no ID (should have been put before)");
            }
            jArr[i] = id;
        }
        cursor.modifyRelations(this.f62861b.f62894i, j, jArr, false);
    }

    /* renamed from: a */
    public final boolean m4587a() {
        Map<TARGET, Boolean> map;
        Map<TARGET, Boolean> map2 = this.f62862c;
        if (!((map2 != null && !map2.isEmpty()) || ((map = this.f62863d) != null && !map.isEmpty()))) {
            return false;
        }
        synchronized (this) {
            if (this.f62864e == null) {
                this.f62864e = new ArrayList();
                this.f62865f = new ArrayList();
            }
        }
        if (this.f62861b.f62894i != 0) {
            return true;
        }
        long id = this.f62861b.f62886a.getIdGetter().getId(this.f62860a);
        if (id == 0) {
            throw new IllegalStateException("Source entity has no ID (should have been put before)");
        }
        AbstractC17950c<TARGET> idGetter = this.f62861b.f62887b.getIdGetter();
        Map<TARGET, Boolean> map3 = this.f62862c;
        Map<TARGET, Boolean> map4 = this.f62863d;
        return this.f62861b.f62889d != 0 ? m4585a(id, idGetter, map3, map4) : m4578b(id, idGetter, map3, map4);
    }

    @Override // java.util.List
    public void add(int i, TARGET target) {
        synchronized (this) {
            m4582a((ToMany<TARGET>) target);
            this.f62868j.add(i, target);
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(TARGET target) {
        boolean add;
        synchronized (this) {
            m4582a((ToMany<TARGET>) target);
            add = this.f62868j.add(target);
        }
        return add;
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends TARGET> collection) {
        boolean addAll;
        synchronized (this) {
            m4581a((Collection) collection);
            addAll = this.f62868j.addAll(i, collection);
        }
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends TARGET> collection) {
        boolean addAll;
        synchronized (this) {
            m4581a((Collection) collection);
            addAll = this.f62868j.addAll(collection);
        }
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        synchronized (this) {
            m4575d();
            List<TARGET> list = this.f62868j;
            if (list != null) {
                for (TARGET target : list) {
                    this.f62863d.put(target, Boolean.TRUE);
                }
                list.clear();
            }
            Map<TARGET, Boolean> map = this.f62862c;
            if (map != null) {
                map.clear();
            }
            Map<TARGET, Integer> map2 = this.f62869k;
            if (map2 != null) {
                map2.clear();
            }
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        m4574e();
        return this.f62868j.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        m4574e();
        return this.f62868j.containsAll(collection);
    }

    @Override // java.util.List
    public TARGET get(int i) {
        m4574e();
        return this.f62868j.get(i);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        m4574e();
        return this.f62868j.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        m4574e();
        return this.f62868j.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<TARGET> iterator() {
        m4574e();
        return this.f62868j.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        m4574e();
        return this.f62868j.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<TARGET> listIterator() {
        m4574e();
        return this.f62868j.listIterator();
    }

    @Override // java.util.List
    public ListIterator<TARGET> listIterator(int i) {
        m4574e();
        return this.f62868j.listIterator(i);
    }

    @Override // java.util.List
    public TARGET remove(int i) {
        TARGET remove;
        synchronized (this) {
            m4575d();
            remove = this.f62868j.remove(i);
            m4577b((ToMany<TARGET>) remove);
        }
        return remove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this) {
            m4575d();
            remove = this.f62868j.remove(obj);
            if (remove) {
                m4577b((ToMany<TARGET>) obj);
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
            m4575d();
            z = false;
            ArrayList arrayList = null;
            for (TARGET target : this.f62868j) {
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
            m4575d();
            target2 = this.f62868j.set(i, target);
            m4577b((ToMany<TARGET>) target2);
            m4582a((ToMany<TARGET>) target);
        }
        return target2;
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        m4574e();
        return this.f62868j.size();
    }

    @Override // java.util.List
    public List<TARGET> subList(int i, int i2) {
        m4574e();
        return this.f62868j.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        m4574e();
        return this.f62868j.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        m4574e();
        return (T[]) this.f62868j.toArray(tArr);
    }
}
