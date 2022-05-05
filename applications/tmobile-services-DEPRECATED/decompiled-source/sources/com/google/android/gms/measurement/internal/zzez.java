package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.Map;
@WorkerThread
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzez.class */
final class zzez implements Runnable {

    /* renamed from: f */
    private final zzew f9136f;

    /* renamed from: g */
    private final int f9137g;

    /* renamed from: h */
    private final Throwable f9138h;

    /* renamed from: i */
    private final byte[] f9139i;

    /* renamed from: j */
    private final String f9140j;

    /* renamed from: k */
    private final Map<String, List<String>> f9141k;

    private zzez(String str, zzew zzewVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        Preconditions.m14523k(zzewVar);
        this.f9136f = zzewVar;
        this.f9137g = i;
        this.f9138h = th;
        this.f9139i = bArr;
        this.f9140j = str;
        this.f9141k = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9136f.mo11036a(this.f9140j, this.f9137g, this.f9138h, this.f9139i, this.f9141k);
    }
}
