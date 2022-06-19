package com.google.android.gms.common.p271j;

import com.google.android.gms.common.p271j.C6193a;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import p078c.p084c.p085a.p086a.p088b.p091c.C1853g;
/* renamed from: com.google.android.gms.common.j.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/j/b.class */
public final class C6195b implements C6193a.AbstractC6194a {
    @Override // com.google.android.gms.common.p271j.C6193a.AbstractC6194a
    /* renamed from: a */
    public final ScheduledExecutorService mo16895a() {
        C1853g.m28789a();
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }
}
