package com.google.android.gms.common.b;

import com.google.android.gms.common.b.a;
import com.google.android.gms.internal.c.g;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/b/b.class */
public final class b implements a.AbstractC0456a {
    @Override // com.google.android.gms.common.b.a.AbstractC0456a
    public final ScheduledExecutorService a() {
        g.a();
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }
}
