package com.google.android.gms.common.data;

import android.support.p012v4.media.C0082b;
import androidx.annotation.RecentlyNonNull;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.NoSuchElementException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/SingleRefDataBufferIterator.class */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {
    private T zac;

    public SingleRefDataBufferIterator(@RecentlyNonNull DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    @RecentlyNonNull
    public final T next() {
        if (hasNext()) {
            int i = this.zab + 1;
            this.zab = i;
            if (i == 0) {
                T t = (T) Preconditions.checkNotNull(this.zaa.get(0));
                this.zac = t;
                if (!(t instanceof DataBufferRef)) {
                    String valueOf = String.valueOf(t.getClass());
                    throw new IllegalStateException(C0608b.m7625j(new StringBuilder(valueOf.length() + 44), "DataBuffer reference of type ", valueOf, " is not movable"));
                }
            } else {
                ((DataBufferRef) Preconditions.checkNotNull(this.zac)).zaa(this.zab);
            }
            return this.zac;
        }
        throw new NoSuchElementException(C0082b.m8758d(46, "Cannot advance the iterator beyond ", this.zab));
    }
}
