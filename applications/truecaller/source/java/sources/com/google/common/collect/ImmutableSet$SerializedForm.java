package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/ImmutableSet$SerializedForm.class */
public class ImmutableSet$SerializedForm implements Serializable {
    public final Object[] elements;

    public ImmutableSet$SerializedForm(Object[] objArr) {
        this.elements = objArr;
    }

    public Object readResolve() {
        Object[] objArr = this.elements;
        int i = ImmutableSet.a;
        int length = objArr.length;
        return length != 0 ? length != 1 ? ImmutableSet.construct(objArr.length, (Object[]) objArr.clone()) : new SingletonImmutableSet(objArr[0]) : RegularImmutableSet.EMPTY;
    }
}
