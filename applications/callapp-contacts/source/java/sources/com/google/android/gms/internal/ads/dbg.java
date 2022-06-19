package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbg.class */
public abstract class dbg<V> extends dbd<V> implements dbt<V> {
    @Override // com.google.android.gms.internal.ads.dbt
    public void addListener(Runnable runnable, Executor executor) {
        mo16905b().addListener(runnable, executor);
    }

    /* renamed from: c */
    public abstract dbt<? extends V> mo16905b();
}
