package com.google.android.gms.common.p350b;

import com.google.android.gms.common.p350b.C11938a;
import com.google.android.gms.internal.p357c.C13167g;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: com.google.android.gms.common.b.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/b/b.class */
public final class C11940b implements C11938a.AbstractC11939a {
    @Override // com.google.android.gms.common.p350b.C11938a.AbstractC11939a
    /* renamed from: a */
    public final ScheduledExecutorService mo19277a() {
        C13167g.m13583a();
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }
}
