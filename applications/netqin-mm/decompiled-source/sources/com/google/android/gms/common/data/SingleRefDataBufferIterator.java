package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.NoSuchElementException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/SingleRefDataBufferIterator.class */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {

    /* renamed from: c */
    public T f23334c;

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    public T next() {
        if (hasNext()) {
            int i = this.f23317b + 1;
            this.f23317b = i;
            if (i == 0) {
                T t = this.f23316a.get(0);
                Preconditions.m17288a(t);
                this.f23334c = t;
                if (!(t instanceof DataBufferRef)) {
                    String valueOf = String.valueOf(this.f23334c.getClass());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 44);
                    sb.append("DataBuffer reference of type ");
                    sb.append(valueOf);
                    sb.append(" is not movable");
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                T t2 = this.f23334c;
                Preconditions.m17288a(t2);
                ((DataBufferRef) t2).m17431a(this.f23317b);
            }
            return this.f23334c;
        }
        int i2 = this.f23317b;
        StringBuilder sb2 = new StringBuilder(46);
        sb2.append("Cannot advance the iterator beyond ");
        sb2.append(i2);
        throw new NoSuchElementException(sb2.toString());
    }
}
