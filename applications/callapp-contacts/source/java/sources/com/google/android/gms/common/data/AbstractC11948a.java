package com.google.android.gms.common.data;

import java.util.Iterator;
/* renamed from: com.google.android.gms.common.data.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/a.class */
public abstract class AbstractC11948a<T> implements AbstractC11949b<T> {

    /* renamed from: a */
    protected final DataHolder f39438a;

    public AbstractC11948a(DataHolder dataHolder) {
        this.f39438a = dataHolder;
    }

    @Override // com.google.android.gms.common.api.AbstractC11924l
    /* renamed from: a */
    public final void mo11351a() {
        DataHolder dataHolder = this.f39438a;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.common.data.AbstractC11949b
    /* renamed from: b */
    public int mo19251b() {
        DataHolder dataHolder = this.f39438a;
        if (dataHolder == null) {
            return 0;
        }
        return dataHolder.getCount();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        mo11351a();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new C11950c(this);
    }
}
