package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/SdkInputStream.class */
public abstract class SdkInputStream extends InputStream implements MetricAware {
    /* JADX INFO: Access modifiers changed from: protected */
    public static void b() {
        if (Thread.interrupted()) {
            throw new AbortedException();
        }
    }

    protected abstract InputStream a();

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean isMetricActivated() {
        InputStream a2 = a();
        if (a2 instanceof MetricAware) {
            return ((MetricAware) a2).isMetricActivated();
        }
        return false;
    }
}
