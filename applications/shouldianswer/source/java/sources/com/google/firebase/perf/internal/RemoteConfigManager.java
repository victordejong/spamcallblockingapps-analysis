package com.google.firebase.perf.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/RemoteConfigManager.class */
public class RemoteConfigManager {
    private static final RemoteConfigManager zzei = new RemoteConfigManager();
    private static final long zzej = TimeUnit.HOURS.toMillis(12);
    private final Executor executor;
    private long zzek;
    private FirebaseRemoteConfig zzel;

    private RemoteConfigManager() {
        this(new ThreadPoolExecutor(0, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue()), null);
    }

    private RemoteConfigManager(Executor executor, FirebaseRemoteConfig firebaseRemoteConfig) {
        this.zzek = 0L;
        this.executor = executor;
        this.zzel = null;
    }

    public static RemoteConfigManager zzbi() {
        return zzei;
    }

    private final boolean zzbk() {
        return this.zzel != null;
    }

    public final void zza(FirebaseRemoteConfig firebaseRemoteConfig) {
        this.zzel = firebaseRemoteConfig;
    }

    public final /* synthetic */ void zza(Exception exc) {
        this.zzek = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [java.lang.Float] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.lang.Boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T zzb(java.lang.String r8, T r9) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.internal.RemoteConfigManager.zzb(java.lang.String, java.lang.Object):java.lang.Object");
    }

    public final boolean zzbj() {
        FirebaseRemoteConfig firebaseRemoteConfig = this.zzel;
        return firebaseRemoteConfig == null || firebaseRemoteConfig.getInfo().getLastFetchStatus() == 1;
    }
}
