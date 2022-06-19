package androidx.constraintlayout.p026a;

import androidx.constraintlayout.p026a.C0554b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.constraintlayout.a.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/g.class */
public final class C0564g extends C0554b {

    /* renamed from: h */
    C0556c f2305h;

    /* renamed from: i */
    private int f2306i = 128;

    /* renamed from: j */
    private C0567h[] f2307j = new C0567h[128];

    /* renamed from: k */
    private C0567h[] f2308k = new C0567h[128];

    /* renamed from: l */
    private int f2309l = 0;

    /* renamed from: g */
    C0566a f2304g = new C0566a(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.a.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/g$a.class */
    public final class C0566a implements Comparable {

        /* renamed from: a */
        C0567h f2311a;

        /* renamed from: b */
        C0564g f2312b;

        public C0566a(C0564g c0564g) {
            C0564g.this = r4;
            this.f2312b = c0564g;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f2311a.f2320b - ((C0567h) obj).f2320b;
        }

        public final String toString() {
            String str = "[ ";
            String str2 = str;
            if (this.f2311a != null) {
                int i = 0;
                while (true) {
                    str2 = str;
                    if (i >= 9) {
                        break;
                    }
                    str = str + this.f2311a.f2326h[i] + StringUtils.SPACE;
                    i++;
                }
            }
            return str2 + "] " + this.f2311a;
        }
    }

    public C0564g(C0556c c0556c) {
        super(c0556c);
        this.f2305h = c0556c;
    }

    /* renamed from: e */
    private final void m45114e(C0567h c0567h) {
        int i;
        int i2 = this.f2309l;
        C0567h[] c0567hArr = this.f2307j;
        if (i2 + 1 > c0567hArr.length) {
            C0567h[] c0567hArr2 = (C0567h[]) Arrays.copyOf(c0567hArr, c0567hArr.length * 2);
            this.f2307j = c0567hArr2;
            this.f2308k = (C0567h[]) Arrays.copyOf(c0567hArr2, c0567hArr2.length * 2);
        }
        C0567h[] c0567hArr3 = this.f2307j;
        int i3 = this.f2309l;
        c0567hArr3[i3] = c0567h;
        int i4 = i3 + 1;
        this.f2309l = i4;
        if (i4 > 1 && c0567hArr3[i4 - 1].f2320b > c0567h.f2320b) {
            int i5 = 0;
            while (true) {
                i = this.f2309l;
                if (i5 >= i) {
                    break;
                }
                this.f2308k[i5] = this.f2307j[i5];
                i5++;
            }
            Arrays.sort(this.f2308k, 0, i, new Comparator<C0567h>() { // from class: androidx.constraintlayout.a.g.1
                @Override // java.util.Comparator
                public final /* bridge */ /* synthetic */ int compare(C0567h c0567h2, C0567h c0567h3) {
                    return c0567h2.f2320b - c0567h3.f2320b;
                }
            });
            for (int i6 = 0; i6 < this.f2309l; i6++) {
                this.f2307j[i6] = this.f2308k[i6];
            }
        }
        c0567h.f2319a = true;
        c0567h.m45111a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
        r5.f2309l = r0 - 1;
        r6.f2319a = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r0 = r5.f2309l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r7 >= (r0 - 1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        r0 = r5.f2307j;
        r0 = r7 + 1;
        r0[r7] = r0[r0];
        r7 = r0;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m45113f(androidx.constraintlayout.p026a.C0567h r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
        L2:
            r0 = r7
            r1 = r5
            int r1 = r1.f2309l
            if (r0 >= r1) goto L4a
            r0 = r5
            androidx.constraintlayout.a.h[] r0 = r0.f2307j
            r1 = r7
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L44
        L14:
            r0 = r5
            int r0 = r0.f2309l
            r8 = r0
            r0 = r7
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L37
            r0 = r5
            androidx.constraintlayout.a.h[] r0 = r0.f2307j
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
            r0.f2309l = r1
            r0 = r6
            r1 = 0
            r0.f2319a = r1
            return
        L44:
            int r7 = r7 + 1
            goto L2
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.C0564g.m45113f(androidx.constraintlayout.a.h):void");
    }

    @Override // androidx.constraintlayout.p026a.C0554b, androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: a */
    public final C0567h mo45118a(boolean[] zArr) {
        int i;
        boolean z;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            i = i3;
            if (i2 >= this.f2309l) {
                break;
            }
            C0567h c0567h = this.f2307j[i2];
            int i4 = i;
            if (!zArr[c0567h.f2320b]) {
                this.f2304g.f2311a = c0567h;
                int i5 = 8;
                boolean z2 = true;
                if (i == -1) {
                    C0566a c0566a = this.f2304g;
                    while (i5 >= 0) {
                        float f = c0566a.f2311a.f2326h[i5];
                        if (f > BitmapDescriptorFactory.HUE_RED) {
                            break;
                        } else if (f < BitmapDescriptorFactory.HUE_RED) {
                            break;
                        } else {
                            i5--;
                        }
                    }
                    z2 = false;
                    i4 = i;
                    if (!z2) {
                    }
                    i4 = i2;
                } else {
                    C0566a c0566a2 = this.f2304g;
                    C0567h c0567h2 = this.f2307j[i];
                    while (true) {
                        if (i5 < 0) {
                            break;
                        }
                        float f2 = c0567h2.f2326h[i5];
                        float f3 = c0566a2.f2311a.f2326h[i5];
                        if (f3 == f2) {
                            i5--;
                        } else if (f3 < f2) {
                            z = true;
                        }
                    }
                    z = false;
                    i4 = i;
                    if (!z) {
                    }
                    i4 = i2;
                }
            }
            i2++;
            i3 = i4;
        }
        if (i == -1) {
            return null;
        }
        return this.f2307j[i];
    }

    @Override // androidx.constraintlayout.p026a.C0554b
    /* renamed from: a */
    public final void mo45119a(C0557d c0557d, C0554b c0554b, boolean z) {
        boolean z2;
        C0567h c0567h = c0554b.f2232a;
        if (c0567h == null) {
            return;
        }
        C0554b.AbstractC0555a abstractC0555a = c0554b.f2236e;
        int mo45093c = abstractC0555a.mo45093c();
        for (int i = 0; i < mo45093c; i++) {
            C0567h mo45104a = abstractC0555a.mo45104a(i);
            float mo45095b = abstractC0555a.mo45095b(i);
            this.f2304g.f2311a = mo45104a;
            C0566a c0566a = this.f2304g;
            boolean z3 = true;
            if (!c0566a.f2311a.f2319a) {
                int i2 = 0;
                while (true) {
                    z2 = true;
                    if (i2 >= 9) {
                        break;
                    }
                    float f = c0567h.f2326h[i2];
                    if (f != BitmapDescriptorFactory.HUE_RED) {
                        float f2 = f * mo45095b;
                        float f3 = f2;
                        if (Math.abs(f2) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        c0566a.f2311a.f2326h[i2] = f3;
                    } else {
                        c0566a.f2311a.f2326h[i2] = 0.0f;
                    }
                    i2++;
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float[] fArr = c0566a.f2311a.f2326h;
                    fArr[i3] = fArr[i3] + (c0567h.f2326h[i3] * mo45095b);
                    if (Math.abs(c0566a.f2311a.f2326h[i3]) < 1.0E-4f) {
                        c0566a.f2311a.f2326h[i3] = 0.0f;
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    C0564g.this.m45113f(c0566a.f2311a);
                }
                z2 = false;
            }
            if (z2) {
                m45114e(mo45104a);
            }
            this.f2233b += c0554b.f2233b * mo45095b;
        }
        m45113f(c0567h);
    }

    @Override // androidx.constraintlayout.p026a.C0554b, androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: b */
    public final boolean mo45117b() {
        return this.f2309l == 0;
    }

    @Override // androidx.constraintlayout.p026a.C0554b, androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: c */
    public final void mo45116c() {
        this.f2309l = 0;
        this.f2233b = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.p026a.C0554b, androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: d */
    public final void mo45115d(C0567h c0567h) {
        this.f2304g.f2311a = c0567h;
        Arrays.fill(this.f2304g.f2311a.f2326h, (float) BitmapDescriptorFactory.HUE_RED);
        c0567h.f2326h[c0567h.f2322d] = 1.0f;
        m45114e(c0567h);
    }

    @Override // androidx.constraintlayout.p026a.C0554b
    public final String toString() {
        String str = " goal -> (" + this.f2233b + ") : ";
        for (int i = 0; i < this.f2309l; i++) {
            this.f2304g.f2311a = this.f2307j[i];
            str = str + this.f2304g + StringUtils.SPACE;
        }
        return str;
    }
}
