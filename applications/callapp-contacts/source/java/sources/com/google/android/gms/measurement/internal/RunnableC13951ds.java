package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.ds */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ds.class */
final class RunnableC13951ds implements Runnable {

    /* renamed from: a */
    private final AbstractC13950dr f51409a;

    /* renamed from: b */
    private final int f51410b;

    /* renamed from: c */
    private final Throwable f51411c;

    /* renamed from: d */
    private final byte[] f51412d;

    /* renamed from: e */
    private final String f51413e;

    /* renamed from: f */
    private final Map<String, List<String>> f51414f;

    public /* synthetic */ RunnableC13951ds(String str, AbstractC13950dr abstractC13950dr, int i, Throwable th, byte[] bArr, Map map, C13949dq c13949dq) {
        C12045o.m19162a(abstractC13950dr);
        this.f51409a = abstractC13950dr;
        this.f51410b = i;
        this.f51411c = th;
        this.f51412d = bArr;
        this.f51413e = str;
        this.f51414f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51409a.mo11694a(this.f51413e, this.f51410b, this.f51411c, this.f51412d, this.f51414f);
    }
}
