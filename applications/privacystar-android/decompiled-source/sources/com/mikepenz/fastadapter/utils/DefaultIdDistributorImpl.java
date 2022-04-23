package com.mikepenz.fastadapter.utils;

import com.mikepenz.fastadapter.IIdentifyable;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/utils/DefaultIdDistributorImpl.class */
public class DefaultIdDistributorImpl<Identifiable extends IIdentifyable> extends DefaultIdDistributor<Identifiable> {
    private final AtomicLong idDistributor = new AtomicLong(-2);

    @Override // com.mikepenz.fastadapter.IIdDistributor
    public long nextId(Identifiable identifiable) {
        return this.idDistributor.decrementAndGet();
    }
}
