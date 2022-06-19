package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/SdkInputStream.class */
public abstract class SdkInputStream extends InputStream implements MetricAware {
    /* renamed from: b */
    public static void m38604b() {
        if (!Thread.interrupted()) {
            return;
        }
        throw new AbortedException();
    }

    /* renamed from: a */
    protected abstract InputStream mo38389a();

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean isMetricActivated() {
        InputStream mo38389a = mo38389a();
        if (mo38389a instanceof MetricAware) {
            return ((MetricAware) mo38389a).isMetricActivated();
        }
        return false;
    }
}
