package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.s3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/s3.class */
final class RunnableC2334s3 implements Runnable {

    /* renamed from: b */
    private final AbstractC2327r3 f10387b;

    /* renamed from: c */
    private final int f10388c;

    /* renamed from: d */
    private final Throwable f10389d;

    /* renamed from: e */
    private final byte[] f10390e;

    /* renamed from: f */
    private final String f10391f;

    /* renamed from: g */
    private final Map<String, List<String>> f10392g;

    public /* synthetic */ RunnableC2334s3(String str, AbstractC2327r3 abstractC2327r3, int i, Throwable th, byte[] bArr, Map map, C2320q3 c2320q3) {
        C1581h.m8347h(abstractC2327r3);
        this.f10387b = abstractC2327r3;
        this.f10388c = i;
        this.f10389d = th;
        this.f10390e = bArr;
        this.f10391f = str;
        this.f10392g = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10387b.m3834a(this.f10391f, this.f10388c, this.f10389d, this.f10390e, this.f10392g);
    }
}
