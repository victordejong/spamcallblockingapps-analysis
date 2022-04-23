package org.junit.internal;

import org.junit.Assert;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/ExactComparisonCriteria.class */
public class ExactComparisonCriteria extends ComparisonCriteria {
    @Override // org.junit.internal.ComparisonCriteria
    protected void assertElementsEqual(Object obj, Object obj2) {
        Assert.assertEquals(obj, obj2);
    }
}
