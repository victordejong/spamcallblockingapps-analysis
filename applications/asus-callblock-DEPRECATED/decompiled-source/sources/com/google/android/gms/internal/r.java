package com.google.android.gms.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/r.class */
public final class r implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    static final s f4220a = new s();

    /* renamed from: b  reason: collision with root package name */
    boolean f4221b;
    int[] c;
    s[] d;
    int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r() {
        this(10);
    }

    private r(int i) {
        this.f4221b = false;
        int c = c(i);
        this.c = new int[c];
        this.d = new s[c];
        this.e = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i) {
        int i2;
        int i3 = i * 4;
        int i4 = 4;
        while (true) {
            i2 = i3;
            if (i4 >= 32) {
                break;
            } else if (i3 <= (1 << i4) - 12) {
                i2 = (1 << i4) - 12;
                break;
            } else {
                i4++;
            }
        }
        return i2 / 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final s a(int i) {
        int d = d(i);
        return (d < 0 || this.d[d] == f4220a) ? null : this.d[d];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        int i = this.e;
        int[] iArr = this.c;
        s[] sVarArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            s sVar = sVarArr[i3];
            i2 = i2;
            if (sVar != f4220a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    sVarArr[i2] = sVar;
                    sVarArr[i3] = null;
                }
                i2++;
            }
        }
        this.f4221b = false;
        this.e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        if (this.f4221b) {
            a();
        }
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final s b(int i) {
        if (this.f4221b) {
            a();
        }
        return this.d[i];
    }

    public final boolean c() {
        return b() == 0;
    }

    public final /* synthetic */ Object clone() {
        int b2 = b();
        r rVar = new r(b2);
        System.arraycopy(this.c, 0, rVar.c, 0, b2);
        for (int i = 0; i < b2; i++) {
            if (this.d[i] != null) {
                rVar.d[i] = (s) this.d[i].clone();
            }
        }
        rVar.e = b2;
        return rVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(int i) {
        int i2;
        int i3 = 0;
        int i4 = this.e - 1;
        while (true) {
            if (i3 > i4) {
                i2 = i3 ^ (-1);
                break;
            }
            int i5 = (i3 + i4) >>> 1;
            int i6 = this.c[i5];
            if (i6 >= i) {
                i2 = i5;
                if (i6 <= i) {
                    break;
                }
                i4 = i5 - 1;
            } else {
                i3 = i5 + 1;
            }
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0086, code lost:
        if (r10 == false) goto L_0x0089;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 != r1) goto L_0x0009
        L_0x0007:
            r0 = r6
            return r0
        L_0x0009:
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.r
            if (r0 != 0) goto L_0x0015
            r0 = 0
            r6 = r0
            goto L_0x0007
        L_0x0015:
            r0 = r5
            com.google.android.gms.internal.r r0 = (com.google.android.gms.internal.r) r0
            r5 = r0
            r0 = r4
            int r0 = r0.b()
            r1 = r5
            int r1 = r1.b()
            if (r0 == r1) goto L_0x002a
            r0 = 0
            r6 = r0
            goto L_0x0007
        L_0x002a:
            r0 = r4
            int[] r0 = r0.c
            r7 = r0
            r0 = r5
            int[] r0 = r0.c
            r8 = r0
            r0 = r4
            int r0 = r0.e
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x003e:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x0094
            r0 = r7
            r1 = r10
            r0 = r0[r1]
            r1 = r8
            r2 = r10
            r1 = r1[r2]
            if (r0 == r1) goto L_0x008e
            r0 = 0
            r10 = r0
        L_0x0054:
            r0 = r10
            if (r0 == 0) goto L_0x0089
            r0 = r4
            com.google.android.gms.internal.s[] r0 = r0.d
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.s[] r0 = r0.d
            r5 = r0
            r0 = r4
            int r0 = r0.e
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x006c:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x00a0
            r0 = r7
            r1 = r10
            r0 = r0[r1]
            r1 = r5
            r2 = r10
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x009a
            r0 = 0
            r10 = r0
        L_0x0084:
            r0 = r10
            if (r0 != 0) goto L_0x0007
        L_0x0089:
            r0 = 0
            r6 = r0
            goto L_0x0007
        L_0x008e:
            int r10 = r10 + 1
            goto L_0x003e
        L_0x0094:
            r0 = 1
            r10 = r0
            goto L_0x0054
        L_0x009a:
            int r10 = r10 + 1
            goto L_0x006c
        L_0x00a0:
            r0 = 1
            r10 = r0
            goto L_0x0084
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.r.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        if (this.f4221b) {
            a();
        }
        int i = 17;
        for (int i2 = 0; i2 < this.e; i2++) {
            i = (((i * 31) + this.c[i2]) * 31) + this.d[i2].hashCode();
        }
        return i;
    }
}
