package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.NoSuchElementException;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/SingleRefDataBufferIterator.class */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {

    /* renamed from: c */
    public T f5930c;

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    @RecentlyNonNull
    public final T next() {
        if (hasNext()) {
            int i = this.f5918b + 1;
            this.f5918b = i;
            if (i == 0) {
                T t = this.f5917a.get(0);
                Objects.requireNonNull(t, "null reference");
                this.f5930c = t;
                if (t instanceof DataBufferRef) {
                    return t;
                }
                String valueOf = String.valueOf(t.getClass());
                throw new IllegalStateException(C22128a.m8610j(new StringBuilder(valueOf.length() + 44), "DataBuffer reference of type ", valueOf, " is not movable"));
            }
            T t2 = this.f5930c;
            Objects.requireNonNull(t2, "null reference");
            DataBufferRef dataBufferRef = (DataBufferRef) t2;
            int i2 = this.f5918b;
            if (i2 >= 0) {
                throw null;
            }
            Preconditions.m38896l(false);
            dataBufferRef.f5919a = i2;
            throw null;
        }
        throw new NoSuchElementException(C22128a.m8690L1(46, "Cannot advance the iterator beyond ", this.f5918b));
    }
}
