package com.google.android.gms.internal.firebase_remote_config;

import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzcq.class */
final class zzcq implements Iterator<T> {
    private int index = 0;
    private final int length;
    private final /* synthetic */ zzcn zzgi;

    public zzcq(zzcn zzcnVar) {
        this.zzgi = zzcnVar;
        this.length = Array.getLength(this.zzgi.zzgh);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.index < this.length;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            Object obj = this.zzgi.zzgh;
            int i = this.index;
            this.index = i + 1;
            return Array.get(obj, i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
