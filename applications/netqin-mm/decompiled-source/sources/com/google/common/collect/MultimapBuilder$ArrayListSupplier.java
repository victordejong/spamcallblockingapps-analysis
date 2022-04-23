package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MultimapBuilder$ArrayListSupplier.class */
public final class MultimapBuilder$ArrayListSupplier<V> implements AbstractC4941s<List<V>>, Serializable {
    public final int expectedValuesPerKey;

    public MultimapBuilder$ArrayListSupplier(int i) {
        C5006n.m24663a(i, "expectedValuesPerKey");
        this.expectedValuesPerKey = i;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4941s
    public List<V> get() {
        return new ArrayList(this.expectedValuesPerKey);
    }
}
