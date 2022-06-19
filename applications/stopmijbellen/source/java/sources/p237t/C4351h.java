package p237t;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
/* renamed from: t.h */
/* loaded from: classes-dex2jar.jar:t/h.class */
public class C4351h implements Comparable<C4351h> {

    /* renamed from: m */
    public static int f13569m = 1;

    /* renamed from: a */
    public boolean f13570a;

    /* renamed from: e */
    public float f13574e;

    /* renamed from: i */
    public int f13578i;

    /* renamed from: b */
    public int f13571b = -1;

    /* renamed from: c */
    public int f13572c = -1;

    /* renamed from: d */
    public int f13573d = 0;

    /* renamed from: f */
    public boolean f13575f = false;

    /* renamed from: g */
    public float[] f13576g = new float[9];

    /* renamed from: h */
    public float[] f13577h = new float[9];

    /* renamed from: j */
    public C4341b[] f13579j = new C4341b[16];

    /* renamed from: k */
    public int f13580k = 0;

    /* renamed from: l */
    public int f13581l = 0;

    public C4351h(int i) {
        this.f13578i = i;
    }

    /* renamed from: a */
    public final void m1019a(C4341b c4341b) {
        int i = 0;
        while (true) {
            int i2 = this.f13580k;
            if (i >= i2) {
                C4341b[] c4341bArr = this.f13579j;
                if (i2 >= c4341bArr.length) {
                    this.f13579j = (C4341b[]) Arrays.copyOf(c4341bArr, c4341bArr.length * 2);
                }
                C4341b[] c4341bArr2 = this.f13579j;
                int i3 = this.f13580k;
                c4341bArr2[i3] = c4341b;
                this.f13580k = i3 + 1;
                return;
            } else if (this.f13579j[i] == c4341b) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        r5.f13580k--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r8 >= (r0 - 1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r0 = r5.f13579j;
        r0 = r8 + 1;
        r0[r8] = r0[r0];
        r8 = r0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1018b(p237t.C4341b r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f13580k
            r7 = r0
            r0 = 0
            r8 = r0
        L7:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L45
            r0 = r5
            t.b[] r0 = r0.f13579j
            r1 = r8
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L3f
        L16:
            r0 = r8
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L34
            r0 = r5
            t.b[] r0 = r0.f13579j
            r6 = r0
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r6
            r3 = r9
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r9
            r8 = r0
            goto L16
        L34:
            r0 = r5
            r1 = r5
            int r1 = r1.f13580k
            r2 = 1
            int r1 = r1 - r2
            r0.f13580k = r1
            return
        L3f:
            int r8 = r8 + 1
            goto L7
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p237t.C4351h.m1018b(t.b):void");
    }

    /* renamed from: c */
    public void m1017c() {
        this.f13578i = 5;
        this.f13573d = 0;
        this.f13571b = -1;
        this.f13572c = -1;
        this.f13574e = 0.0f;
        this.f13575f = false;
        int i = this.f13580k;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13579j[i2] = null;
        }
        this.f13580k = 0;
        this.f13581l = 0;
        this.f13570a = false;
        Arrays.fill(this.f13577h, 0.0f);
    }

    @Override // java.lang.Comparable
    public int compareTo(C4351h c4351h) {
        return this.f13571b - c4351h.f13571b;
    }

    /* renamed from: d */
    public void m1016d(C4344d c4344d, float f) {
        this.f13574e = f;
        this.f13575f = true;
        int i = this.f13580k;
        this.f13572c = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13579j[i2].m1063k(c4344d, this, false);
        }
        this.f13580k = 0;
    }

    /* renamed from: e */
    public final void m1015e(C4344d c4344d, C4341b c4341b) {
        int i = this.f13580k;
        for (int i2 = 0; i2 < i; i2++) {
            this.f13579j[i2].mo1026l(c4344d, c4341b, false);
        }
        this.f13580k = 0;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("");
        m8752j.append(this.f13571b);
        return m8752j.toString();
    }
}
