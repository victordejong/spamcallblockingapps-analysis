package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddf.class */
public final class ddf<P> {

    /* renamed from: a  reason: collision with root package name */
    final P f26744a;

    /* renamed from: b  reason: collision with root package name */
    final dii f26745b;

    /* renamed from: c  reason: collision with root package name */
    final djb f26746c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f26747d;
    private final int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ddf(P p, byte[] bArr, dii diiVar, djb djbVar, int i) {
        this.f26744a = p;
        this.f26747d = Arrays.copyOf(bArr, bArr.length);
        this.f26745b = diiVar;
        this.f26746c = djbVar;
        this.e = i;
    }

    public final byte[] a() {
        byte[] bArr = this.f26747d;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
