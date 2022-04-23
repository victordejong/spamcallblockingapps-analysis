package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ab.class */
final class ab {

    /* renamed from: a  reason: collision with root package name */
    final int f21145a;

    /* renamed from: d  reason: collision with root package name */
    boolean f21148d;
    boolean e;
    boolean f;

    /* renamed from: b  reason: collision with root package name */
    final ad f21146b = new ad(0);
    long g = -9223372036854775807L;
    long h = -9223372036854775807L;
    long i = -9223372036854775807L;

    /* renamed from: c  reason: collision with root package name */
    final u f21147c = new u();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(int i) {
        this.f21145a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(i iVar) {
        u uVar = this.f21147c;
        byte[] bArr = af.f;
        uVar.a(bArr, bArr.length);
        this.f21148d = true;
        iVar.a();
        return 0;
    }
}
