package com.google.android.gms.internal.firebase_iid;

import com.google.android.gms.internal.firebase-iid.zzb;
import com.google.android.gms.internal.firebase-iid.zzd;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_iid/zzc.class */
final class zzc implements zzb {
    private zzc() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzc(zzd zzdVar) {
        this();
    }

    /* renamed from: b */
    public final ScheduledExecutorService m14084b(int i, ThreadFactory threadFactory, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }
}
