package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crf.class */
public abstract class crf<V> extends crc<V> implements crt<V> {
    @Override // com.google.android.gms.internal.ads.crt
    /* renamed from: a */
    public void mo6734a(Runnable runnable, Executor executor) {
        mo10787b().mo6734a(runnable, executor);
    }

    /* renamed from: c */
    public abstract crt<? extends V> mo10787b();
}
