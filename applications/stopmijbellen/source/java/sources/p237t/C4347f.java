package p237t;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.util.Arrays;
import java.util.Comparator;
import p237t.C4341b;
/* renamed from: t.f */
/* loaded from: classes-dex2jar.jar:t/f.class */
public class C4347f extends C4341b {

    /* renamed from: f */
    public C4351h[] f13562f = new C4351h[128];

    /* renamed from: g */
    public C4351h[] f13563g = new C4351h[128];

    /* renamed from: h */
    public int f13564h = 0;

    /* renamed from: i */
    public C4349b f13565i = new C4349b(this);

    /* renamed from: t.f$a */
    /* loaded from: classes-dex2jar.jar:t/f$a.class */
    public class C4348a implements Comparator<C4351h> {
        public C4348a(C4347f c4347f) {
        }

        @Override // java.util.Comparator
        public int compare(C4351h c4351h, C4351h c4351h2) {
            return c4351h.f13571b - c4351h2.f13571b;
        }
    }

    /* renamed from: t.f$b */
    /* loaded from: classes-dex2jar.jar:t/f$b.class */
    public class C4349b {

        /* renamed from: a */
        public C4351h f13566a;

        public C4349b(C4347f c4347f) {
            C4347f.this = r4;
        }

        public String toString() {
            String str = "[ ";
            String str2 = str;
            if (this.f13566a != null) {
                int i = 0;
                while (true) {
                    str2 = str;
                    if (i >= 9) {
                        break;
                    }
                    StringBuilder m8752j = C0082b.m8752j(str);
                    m8752j.append(this.f13566a.f13577h[i]);
                    m8752j.append(" ");
                    str = m8752j.toString();
                    i++;
                }
            }
            StringBuilder m7624k = C0608b.m7624k(str2, "] ");
            m7624k.append(this.f13566a);
            return m7624k.toString();
        }
    }

    public C4347f(C4343c c4343c) {
        super(c4343c);
    }

    @Override // p237t.C4341b, p237t.C4344d.AbstractC4345a
    /* renamed from: a */
    public C4351h mo1028a(C4344d c4344d, boolean[] zArr) {
        boolean z;
        boolean z2;
        int i = -1;
        for (int i2 = 0; i2 < this.f13564h; i2++) {
            C4351h[] c4351hArr = this.f13562f;
            C4351h c4351h = c4351hArr[i2];
            if (!zArr[c4351h.f13571b]) {
                C4349b c4349b = this.f13565i;
                c4349b.f13566a = c4351h;
                int i3 = 8;
                if (i == -1) {
                    while (i3 >= 0) {
                        float f = c4349b.f13566a.f13577h[i3];
                        if (f > 0.0f) {
                            break;
                        } else if (f < 0.0f) {
                            z2 = true;
                            break;
                        } else {
                            i3--;
                        }
                    }
                    z2 = false;
                    if (!z2) {
                    }
                    i = i2;
                } else {
                    C4351h c4351h2 = c4351hArr[i];
                    while (true) {
                        if (i3 < 0) {
                            break;
                        }
                        float f2 = c4351h2.f13577h[i3];
                        float f3 = c4349b.f13566a.f13577h[i3];
                        if (f3 == f2) {
                            i3--;
                        } else if (f3 < f2) {
                            z = true;
                        }
                    }
                    z = false;
                    if (!z) {
                    }
                    i = i2;
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f13562f[i];
    }

    @Override // p237t.C4341b, p237t.C4344d.AbstractC4345a
    /* renamed from: b */
    public void mo1027b(C4351h c4351h) {
        this.f13565i.f13566a = c4351h;
        Arrays.fill(c4351h.f13577h, 0.0f);
        c4351h.f13577h[c4351h.f13573d] = 1.0f;
        m1025m(c4351h);
    }

    @Override // p237t.C4341b, p237t.C4344d.AbstractC4345a
    public void clear() {
        this.f13564h = 0;
        this.f13534b = 0.0f;
    }

    @Override // p237t.C4341b, p237t.C4344d.AbstractC4345a
    public boolean isEmpty() {
        return this.f13564h == 0;
    }

    @Override // p237t.C4341b
    /* renamed from: l */
    public void mo1026l(C4344d c4344d, C4341b c4341b, boolean z) {
        boolean z2;
        C4351h c4351h = c4341b.f13533a;
        if (c4351h == null) {
            return;
        }
        C4341b.AbstractC4342a abstractC4342a = c4341b.f13536d;
        int mo1057f = abstractC4342a.mo1057f();
        for (int i = 0; i < mo1057f; i++) {
            C4351h mo1055h = abstractC4342a.mo1055h(i);
            float mo1062a = abstractC4342a.mo1062a(i);
            C4349b c4349b = this.f13565i;
            c4349b.f13566a = mo1055h;
            boolean z3 = true;
            if (!mo1055h.f13570a) {
                int i2 = 0;
                while (true) {
                    z2 = true;
                    if (i2 >= 9) {
                        break;
                    }
                    float f = c4351h.f13577h[i2];
                    if (f != 0.0f) {
                        float f2 = f * mo1062a;
                        float f3 = f2;
                        if (Math.abs(f2) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        c4349b.f13566a.f13577h[i2] = f3;
                    } else {
                        c4349b.f13566a.f13577h[i2] = 0.0f;
                    }
                    i2++;
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float[] fArr = c4349b.f13566a.f13577h;
                    fArr[i3] = (c4351h.f13577h[i3] * mo1062a) + fArr[i3];
                    if (Math.abs(fArr[i3]) < 1.0E-4f) {
                        c4349b.f13566a.f13577h[i3] = 0.0f;
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    C4347f.this.m1024n(c4349b.f13566a);
                }
                z2 = false;
            }
            if (z2) {
                m1025m(mo1055h);
            }
            this.f13534b = (c4341b.f13534b * mo1062a) + this.f13534b;
        }
        m1024n(c4351h);
    }

    /* renamed from: m */
    public final void m1025m(C4351h c4351h) {
        int i;
        int i2 = this.f13564h;
        C4351h[] c4351hArr = this.f13562f;
        if (i2 + 1 > c4351hArr.length) {
            C4351h[] c4351hArr2 = (C4351h[]) Arrays.copyOf(c4351hArr, c4351hArr.length * 2);
            this.f13562f = c4351hArr2;
            this.f13563g = (C4351h[]) Arrays.copyOf(c4351hArr2, c4351hArr2.length * 2);
        }
        C4351h[] c4351hArr3 = this.f13562f;
        int i3 = this.f13564h;
        c4351hArr3[i3] = c4351h;
        int i4 = i3 + 1;
        this.f13564h = i4;
        if (i4 > 1 && c4351hArr3[i4 - 1].f13571b > c4351h.f13571b) {
            int i5 = 0;
            while (true) {
                i = this.f13564h;
                if (i5 >= i) {
                    break;
                }
                this.f13563g[i5] = this.f13562f[i5];
                i5++;
            }
            Arrays.sort(this.f13563g, 0, i, new C4348a(this));
            for (int i6 = 0; i6 < this.f13564h; i6++) {
                this.f13562f[i6] = this.f13563g[i6];
            }
        }
        c4351h.f13570a = true;
        c4351h.m1019a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
        r5.f13564h = r0 - 1;
        r6.f13570a = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r0 = r5.f13564h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r7 >= (r0 - 1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        r0 = r5.f13562f;
        r0 = r7 + 1;
        r0[r7] = r0[r0];
        r7 = r0;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1024n(p237t.C4351h r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
        L2:
            r0 = r7
            r1 = r5
            int r1 = r1.f13564h
            if (r0 >= r1) goto L4a
            r0 = r5
            t.h[] r0 = r0.f13562f
            r1 = r7
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L44
        L14:
            r0 = r5
            int r0 = r0.f13564h
            r8 = r0
            r0 = r7
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L37
            r0 = r5
            t.h[] r0 = r0.f13562f
            r9 = r0
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r9
            r1 = r7
            r2 = r9
            r3 = r8
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r8
            r7 = r0
            goto L14
        L37:
            r0 = r5
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            r0.f13564h = r1
            r0 = r6
            r1 = 0
            r0.f13570a = r1
            return
        L44:
            int r7 = r7 + 1
            goto L2
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p237t.C4347f.m1024n(t.h):void");
    }

    @Override // p237t.C4341b
    public String toString() {
        StringBuilder m7624k = C0608b.m7624k("", " goal -> (");
        m7624k.append(this.f13534b);
        m7624k.append(") : ");
        String sb = m7624k.toString();
        for (int i = 0; i < this.f13564h; i++) {
            this.f13565i.f13566a = this.f13562f[i];
            StringBuilder m8752j = C0082b.m8752j(sb);
            m8752j.append(this.f13565i);
            m8752j.append(" ");
            sb = m8752j.toString();
        }
        return sb;
    }
}
