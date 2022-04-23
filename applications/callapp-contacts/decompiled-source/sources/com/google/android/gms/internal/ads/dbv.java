package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbv.class */
public final class dbv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor a(Executor executor, dag<?> dagVar) {
        cyg.a(executor);
        cyg.a(dagVar);
        return executor == dba.INSTANCE ? executor : new dbu(executor, dagVar);
    }
}
