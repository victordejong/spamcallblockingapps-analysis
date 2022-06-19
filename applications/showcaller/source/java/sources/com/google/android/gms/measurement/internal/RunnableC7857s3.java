package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.s3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/s3.class */
final class RunnableC7857s3 implements Runnable {

    /* renamed from: d */
    private final AbstractC7846r3 f35628d;

    /* renamed from: e */
    private final int f35629e;

    /* renamed from: f */
    private final Throwable f35630f;

    /* renamed from: g */
    private final byte[] f35631g;

    /* renamed from: h */
    private final String f35632h;

    /* renamed from: i */
    private final Map<String, List<String>> f35633i;

    public /* synthetic */ RunnableC7857s3(String str, AbstractC7846r3 abstractC7846r3, int i, Throwable th, byte[] bArr, Map map, C7835q3 c7835q3) {
        C6155o.m17018j(abstractC7846r3);
        this.f35628d = abstractC7846r3;
        this.f35629e = i;
        this.f35630f = th;
        this.f35631g = bArr;
        this.f35632h = str;
        this.f35633i = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35628d.mo6051a(this.f35632h, this.f35629e, this.f35630f, this.f35631g, this.f35633i);
    }
}
