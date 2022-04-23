package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    int f18924a;

    /* renamed from: b  reason: collision with root package name */
    int f18925b;

    /* renamed from: c  reason: collision with root package name */
    int f18926c;

    /* renamed from: d  reason: collision with root package name */
    int f18927d;
    int e;
    l f;
    p g;
    i h;
    p i;
    private int j;
    private int[] k;

    private void a(int i, int i2) {
        if (this.k == null) {
            this.k = new int[6];
        }
        int i3 = this.j;
        int[] iArr = this.k;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.k = iArr2;
        }
        int[] iArr3 = this.k;
        int i4 = this.j;
        int i5 = i4 + 1;
        this.j = i5;
        iArr3[i4] = i;
        this.j = i5 + 1;
        iArr3[i5] = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p a() {
        l lVar = this.f;
        return lVar == null ? this : lVar.f18909b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(d dVar, int i, boolean z) {
        if ((this.f18924a & 2) == 0) {
            if (z) {
                a((-1) - i, dVar.f18888b);
                dVar.c(-1);
                return;
            }
            a(i, dVar.f18888b);
            dVar.b(-1);
        } else if (z) {
            dVar.c(this.f18926c - i);
        } else {
            dVar.b(this.f18926c - i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.esotericsoftware.a.p r7, long r8, int r10) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.p.a(com.esotericsoftware.a.p, long, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int i, byte[] bArr) {
        int i2;
        this.f18924a |= 2;
        this.f18926c = i;
        int i3 = 0;
        boolean z = false;
        while (i3 < this.j) {
            int[] iArr = this.k;
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            int i6 = iArr[i4];
            if (i5 >= 0) {
                int i7 = i - i5;
                if (i7 < -32768 || i7 > 32767) {
                    int i8 = i6 - 1;
                    if ((bArr[i8] & 255) <= 168) {
                        bArr[i8] = (byte) (i2 + 49);
                    } else {
                        bArr[i8] = (byte) (i2 + 20);
                    }
                    z = true;
                }
                bArr[i6] = (byte) (i7 >>> 8);
                bArr[i6 + 1] = (byte) i7;
            } else {
                int i9 = i5 + i + 1;
                int i10 = i6 + 1;
                bArr[i6] = (byte) (i9 >>> 24);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (i9 >>> 16);
                bArr[i11] = (byte) (i9 >>> 8);
                bArr[i11 + 1] = (byte) i9;
            }
            i3 = i4 + 1;
        }
        return z;
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("L");
        stringBuffer.append(System.identityHashCode(this));
        return stringBuffer.toString();
    }
}
