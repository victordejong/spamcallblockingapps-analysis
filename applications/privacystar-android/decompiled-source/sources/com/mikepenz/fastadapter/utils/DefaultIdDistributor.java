package com.mikepenz.fastadapter.utils;

import com.mikepenz.fastadapter.IIdDistributor;
import com.mikepenz.fastadapter.IIdentifyable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/utils/DefaultIdDistributor.class */
public abstract class DefaultIdDistributor<Identifiable extends IIdentifyable> implements IIdDistributor<Identifiable> {
    @Override // com.mikepenz.fastadapter.IIdDistributor
    public Identifiable checkId(Identifiable identifiable) {
        if (identifiable.getIdentifier() == -1) {
            identifiable.withIdentifier(nextId(identifiable));
        }
        return identifiable;
    }

    @Override // com.mikepenz.fastadapter.IIdDistributor
    public List<Identifiable> checkIds(List<Identifiable> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            checkId(list.get(i));
        }
        return list;
    }

    @Override // com.mikepenz.fastadapter.IIdDistributor
    public Identifiable[] checkIds(Identifiable... identifiableArr) {
        for (Identifiable identifiable : identifiableArr) {
            checkId(identifiable);
        }
        return identifiableArr;
    }
}
