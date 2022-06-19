package com.huawei.hms.common.data;

import com.huawei.hms.common.internal.Preconditions;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/data/DBInnerIter.class */
public class DBInnerIter<O> implements Iterator<O> {
    public final DataBuffer<O> dataBuffer;
    public int index = -1;

    public DBInnerIter(DataBuffer<O> dataBuffer) {
        Preconditions.checkNotNull(dataBuffer, "dataBuffer cannot be null");
        this.dataBuffer = dataBuffer;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index + 1 < this.dataBuffer.getCount();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public O next() {
        O o;
        if (hasNext()) {
            DataBuffer<O> dataBuffer = this.dataBuffer;
            int i = this.index + 1;
            this.index = i;
            o = dataBuffer.get(i);
        } else {
            o = null;
        }
        return o;
    }
}
