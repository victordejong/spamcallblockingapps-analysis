package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.extractor.i;
import java.io.IOException;
import java.util.ArrayDeque;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/a.class */
final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f20962a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<C0426a> f20963b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final f f20964c = new f();

    /* renamed from: d  reason: collision with root package name */
    private b f20965d;
    private int e;
    private int f;
    private long g;

    /* renamed from: com.google.android.exoplayer2.extractor.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/a$a.class */
    static final class C0426a {

        /* renamed from: a  reason: collision with root package name */
        final int f20966a;

        /* renamed from: b  reason: collision with root package name */
        final long f20967b;

        private C0426a(int i, long j) {
            this.f20966a = i;
            this.f20967b = j;
        }
    }

    private long a(i iVar, int i) throws IOException {
        iVar.b(this.f20962a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f20962a[i2] & 255);
        }
        return j;
    }

    private static String b(i iVar, int i) throws IOException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        iVar.b(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // com.google.android.exoplayer2.extractor.d.c
    public final void a() {
        this.e = 0;
        this.f20963b.clear();
        this.f20964c.a();
    }

    @Override // com.google.android.exoplayer2.extractor.d.c
    public final void a(b bVar) {
        this.f20965d = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6, types: [long] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.extractor.d.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.exoplayer2.extractor.i r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.d.a.a(com.google.android.exoplayer2.extractor.i):boolean");
    }
}
