package com.google.android.exoplayer2.extractor.p332f;

import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.extractor.f.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/n.class */
final class C11049n {

    /* renamed from: a */
    public final C11046k f35962a;

    /* renamed from: b */
    public final int f35963b;

    /* renamed from: c */
    public final long[] f35964c;

    /* renamed from: d */
    public final int[] f35965d;

    /* renamed from: e */
    public final int f35966e;

    /* renamed from: f */
    public final long[] f35967f;

    /* renamed from: g */
    public final int[] f35968g;

    /* renamed from: h */
    public final long f35969h;

    public C11049n(C11046k c11046k, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        C11593a.m20022a(iArr.length == jArr2.length);
        C11593a.m20022a(jArr.length == jArr2.length);
        C11593a.m20022a(iArr2.length == jArr2.length);
        this.f35962a = c11046k;
        this.f35964c = jArr;
        this.f35965d = iArr;
        this.f35966e = i;
        this.f35967f = jArr2;
        this.f35968g = iArr2;
        this.f35969h = j;
        this.f35963b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: a */
    public final int m21590a(long j) {
        for (int m19956a = C11599af.m19956a(this.f35967f, j, false); m19956a >= 0; m19956a--) {
            if ((this.f35968g[m19956a] & 1) != 0) {
                return m19956a;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m21589b(long j) {
        for (int m19939b = C11599af.m19939b(this.f35967f, j, true); m19939b < this.f35967f.length; m19939b++) {
            if ((this.f35968g[m19939b] & 1) != 0) {
                return m19939b;
            }
        }
        return -1;
    }
}
