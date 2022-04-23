package com.google.common.base;

import p131c.p161d.p266c.p267a.AbstractC4920g;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Functions$IdentityFunction.class */
public enum Functions$IdentityFunction implements AbstractC4920g<Object, Object> {
    INSTANCE;

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public Object apply(Object obj) {
        return obj;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "Functions.identity()";
    }
}
