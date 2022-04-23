package com.google.android.gms.common.data;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/a.class */
public abstract class a<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final DataHolder f22799a;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(DataHolder dataHolder) {
        this.f22799a = dataHolder;
    }

    @Override // com.google.android.gms.common.api.l
    public final void a() {
        DataHolder dataHolder = this.f22799a;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.common.data.b
    public int b() {
        DataHolder dataHolder = this.f22799a;
        if (dataHolder == null) {
            return 0;
        }
        return dataHolder.getCount();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new c(this);
    }
}
