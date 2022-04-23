package com.google.zxing.a.a;

import com.google.zxing.common.a;
import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final f f32913a = new f(g.f32917a, 0, 0, 0);

    /* renamed from: b  reason: collision with root package name */
    final int f32914b;

    /* renamed from: c  reason: collision with root package name */
    final int f32915c;

    /* renamed from: d  reason: collision with root package name */
    final int f32916d;
    private final g e;

    private f(g gVar, int i, int i2, int i3) {
        this.e = gVar;
        this.f32914b = i;
        this.f32915c = i2;
        this.f32916d = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r0 == 2) goto L_0x0024;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.zxing.a.a.f a(int r9) {
        /*
            r8 = this;
            r0 = r8
            com.google.zxing.a.a.g r0 = r0.e
            r10 = r0
            r0 = r8
            int r0 = r0.f32914b
            r11 = r0
            r0 = r8
            int r0 = r0.f32916d
            r12 = r0
            r0 = r11
            r1 = 4
            if (r0 == r1) goto L_0x0024
            r0 = r10
            r13 = r0
            r0 = r11
            r14 = r0
            r0 = r12
            r15 = r0
            r0 = r11
            r1 = 2
            if (r0 != r1) goto L_0x004b
        L_0x0024:
            int[][] r0 = com.google.zxing.a.a.d.f32907b
            r1 = r11
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r14 = r0
            r0 = r14
            r1 = 16
            int r0 = r0 >> r1
            r15 = r0
            r0 = r10
            r1 = 65535(0xffff, float:9.1834E-41)
            r2 = r14
            r1 = r1 & r2
            r2 = r15
            com.google.zxing.a.a.g r0 = r0.a(r1, r2)
            r13 = r0
            r0 = r12
            r1 = r15
            int r0 = r0 + r1
            r15 = r0
            r0 = 0
            r14 = r0
        L_0x004b:
            r0 = r8
            int r0 = r0.f32915c
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0075
            r0 = r12
            r1 = 31
            if (r0 != r1) goto L_0x0060
            goto L_0x0075
        L_0x0060:
            r0 = r12
            r1 = 62
            if (r0 != r1) goto L_0x006e
            r0 = 9
            r12 = r0
            goto L_0x0079
        L_0x006e:
            r0 = 8
            r12 = r0
            goto L_0x0079
        L_0x0075:
            r0 = 18
            r12 = r0
        L_0x0079:
            com.google.zxing.a.a.f r0 = new com.google.zxing.a.a.f
            r1 = r0
            r2 = r13
            r3 = r14
            r4 = r8
            int r4 = r4.f32915c
            r5 = 1
            int r4 = r4 + r5
            r5 = r15
            r6 = r12
            int r5 = r5 + r6
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            r0 = r10
            r13 = r0
            r0 = r10
            int r0 = r0.f32915c
            r1 = 2078(0x81e, float:2.912E-42)
            if (r0 != r1) goto L_0x00a6
            r0 = r10
            r1 = r9
            r2 = 1
            int r1 = r1 + r2
            com.google.zxing.a.a.f r0 = r0.b(r1)
            r13 = r0
        L_0x00a6:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.a.a.f.a(int):com.google.zxing.a.a.f");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f a(int i, int i2) {
        int i3 = this.f32916d;
        g gVar = this.e;
        int i4 = i3;
        g gVar2 = gVar;
        if (i != this.f32914b) {
            int i5 = d.f32907b[this.f32914b][i];
            int i6 = i5 >> 16;
            gVar2 = gVar.a(65535 & i5, i6);
            i4 = i3 + i6;
        }
        int i7 = i == 2 ? 4 : 5;
        return new f(gVar2.a(i2, i7), i, 0, i4 + i7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a a(byte[] bArr) {
        LinkedList<g> linkedList = new LinkedList();
        for (g gVar = b(bArr.length).e; gVar != null; gVar = gVar.f32918b) {
            linkedList.addFirst(gVar);
        }
        a aVar = new a();
        for (g gVar2 : linkedList) {
            gVar2.a(aVar, bArr);
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
        if (r0 > r0) goto L_0x0036;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.zxing.a.a.f r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f32916d
            int[][] r1 = com.google.zxing.a.a.d.f32907b
            r2 = r4
            int r2 = r2.f32914b
            r1 = r1[r2]
            r2 = r5
            int r2 = r2.f32914b
            r1 = r1[r2]
            r2 = 16
            int r1 = r1 >> r2
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            int r0 = r0.f32915c
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x003c
            r0 = r4
            int r0 = r0.f32915c
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0036
            r0 = r6
            r8 = r0
            r0 = r9
            r1 = r7
            if (r0 <= r1) goto L_0x003c
        L_0x0036:
            r0 = r6
            r1 = 10
            int r0 = r0 + r1
            r8 = r0
        L_0x003c:
            r0 = r8
            r1 = r5
            int r1 = r1.f32916d
            if (r0 > r1) goto L_0x0047
            r0 = 1
            return r0
        L_0x0047:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.a.a.f.a(com.google.zxing.a.a.f):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f b(int i) {
        int i2 = this.f32915c;
        return i2 == 0 ? this : new f(this.e.b(i - i2, i2), this.f32914b, 0, this.f32916d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f b(int i, int i2) {
        g gVar = this.e;
        int i3 = this.f32914b == 2 ? 4 : 5;
        return new f(gVar.a(d.f32908c[this.f32914b][i], i3).a(i2, 5), this.f32914b, 0, this.f32916d + i3 + 5);
    }

    public final String toString() {
        return String.format("%s bits=%d bytes=%d", d.f32906a[this.f32914b], Integer.valueOf(this.f32916d), Integer.valueOf(this.f32915c));
    }
}
