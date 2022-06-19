package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbv.class */
public final class dbv {
    /* renamed from: a */
    public static Executor m16889a(Executor executor, dag<?> dagVar) {
        cyg.m17060a(executor);
        cyg.m17060a(dagVar);
        return executor == dba.INSTANCE ? executor : new dbu(executor, dagVar);
    }
}
