package com.google.android.gms.internal.icing;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfa.class */
public final class zzfa extends AbstractList<String> implements zzdb, RandomAccess {
    private final zzdb zzlp;

    public zzfa(zzdb zzdbVar) {
        this.zzlp = zzdbVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zzlp.get(i);
    }

    @Override // com.google.android.gms.internal.icing.zzdb
    public final Object getRaw(int i) {
        return this.zzlp.getRaw(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzfc(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzfb(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzlp.size();
    }

    @Override // com.google.android.gms.internal.icing.zzdb
    public final List<?> zzbh() {
        return this.zzlp.zzbh();
    }

    @Override // com.google.android.gms.internal.icing.zzdb
    public final zzdb zzbi() {
        return this;
    }
}
