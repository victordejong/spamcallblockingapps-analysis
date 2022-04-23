package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbg.class */
public abstract class dbg<V> extends dbd<V> implements dbt<V> {
    @Override // com.google.android.gms.internal.ads.dbt
    public void addListener(Runnable runnable, Executor executor) {
        b().addListener(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public abstract dbt<? extends V> b();
}
