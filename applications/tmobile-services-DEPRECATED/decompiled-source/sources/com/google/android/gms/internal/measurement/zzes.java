package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzes.class */
final class zzes extends AbstractSet<K> {

    /* renamed from: f */
    private final /* synthetic */ zzem f8395f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzes(zzem zzemVar) {
        this.f8395f = zzemVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f8395f.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f8395f.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<K> iterator() {
        return this.f8395f.m12713t();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@NullableDecl Object obj) {
        Object m;
        Object obj2;
        Map n = this.f8395f.m12719n();
        if (n != null) {
            return n.keySet().remove(obj);
        }
        m = this.f8395f.m12720m(obj);
        obj2 = zzem.f8381o;
        return m != obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8395f.size();
    }
}
