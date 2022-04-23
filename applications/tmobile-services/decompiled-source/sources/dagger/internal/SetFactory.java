package dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:dagger/internal/SetFactory.class */
public final class SetFactory<T> implements Factory<Set<T>> {

    /* renamed from: a */
    private final List<Provider<T>> f14947a;

    /* renamed from: b */
    private final List<Provider<Collection<T>>> f14948b;

    /* loaded from: classes-dex2jar.jar:dagger/internal/SetFactory$Builder.class */
    public static final class Builder<T> {
    }

    static {
        InstanceFactory.m4637a(Collections.emptySet());
    }

    /* renamed from: a */
    public Set<T> get() {
        int size = this.f14947a.size();
        ArrayList arrayList = new ArrayList(this.f14948b.size());
        int size2 = this.f14948b.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.f14948b.get(i).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet b = DaggerCollections.m4642b(size);
        int size3 = this.f14947a.size();
        for (int i2 = 0; i2 < size3; i2++) {
            T t = this.f14947a.get(i2).get();
            Preconditions.m4633b(t);
            b.add(t);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                Preconditions.m4633b(obj);
                b.add(obj);
            }
        }
        return Collections.unmodifiableSet(b);
    }
}
