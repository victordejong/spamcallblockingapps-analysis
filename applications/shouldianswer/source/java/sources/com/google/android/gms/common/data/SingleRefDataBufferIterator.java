package com.google.android.gms.common.data;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/SingleRefDataBufferIterator.class */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {
    private T zamg;

    public SingleRefDataBufferIterator(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            int i = this.zall;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Cannot advance the iterator beyond ");
            sb.append(i);
            throw new NoSuchElementException(sb.toString());
        }
        this.zall++;
        if (this.zall == 0) {
            this.zamg = this.zalk.get(0);
            T t = this.zamg;
            if (!(t instanceof DataBufferRef)) {
                String valueOf = String.valueOf(t.getClass());
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 44);
                sb2.append("DataBuffer reference of type ");
                sb2.append(valueOf);
                sb2.append(" is not movable");
                throw new IllegalStateException(sb2.toString());
            }
        } else {
            ((DataBufferRef) this.zamg).zag(this.zall);
        }
        return this.zamg;
    }
}
