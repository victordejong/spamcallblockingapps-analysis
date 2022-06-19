package p1727n3.p1732a0.p1733a;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.SparseBooleanArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p1727n3.p1788g.C26174a;
import p1727n3.p1807k.p1812c.C26493a;
/* renamed from: n3.a0.a.b */
/* loaded from: classes-dex2jar.jar:n3/a0/a/b.class */
public final class C25385b {

    /* renamed from: f */
    public static final AbstractC25388c f70801f = new C25386a();

    /* renamed from: a */
    public final List<C25390e> f70802a;

    /* renamed from: b */
    public final List<C25392d> f70803b;

    /* renamed from: e */
    public final C25390e f70806e;

    /* renamed from: d */
    public final SparseBooleanArray f70805d = new SparseBooleanArray();

    /* renamed from: c */
    public final Map<C25392d, C25390e> f70804c = new C26174a();

    /* renamed from: n3.a0.a.b$a */
    /* loaded from: classes-dex2jar.jar:n3/a0/a/b$a.class */
    public static final class C25386a implements AbstractC25388c {
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
            if ((r5[0] >= 10.0f && r5[0] <= 37.0f && r5[1] <= 0.82f) == false) goto L25;
         */
        @Override // p1727n3.p1732a0.p1733a.C25385b.AbstractC25388c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo3682a(int r4, float[] r5) {
            /*
                r3 = this;
                r0 = r5
                r1 = 2
                r0 = r0[r1]
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r6
                r1 = 1064514355(0x3f733333, float:0.95)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L13
                r0 = 1
                r4 = r0
                goto L15
            L13:
                r0 = 0
                r4 = r0
            L15:
                r0 = r4
                if (r0 != 0) goto L56
                r0 = r5
                r1 = 2
                r0 = r0[r1]
                r1 = 1028443341(0x3d4ccccd, float:0.05)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L27
                r0 = 1
                r4 = r0
                goto L29
            L27:
                r0 = 0
                r4 = r0
            L29:
                r0 = r4
                if (r0 != 0) goto L56
                r0 = r5
                r1 = 0
                r0 = r0[r1]
                r1 = 1092616192(0x41200000, float:10.0)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L4d
                r0 = r5
                r1 = 0
                r0 = r0[r1]
                r1 = 1108606976(0x42140000, float:37.0)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L4d
                r0 = r5
                r1 = 1
                r0 = r0[r1]
                r1 = 1062333317(0x3f51eb85, float:0.82)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L4d
                r0 = 1
                r4 = r0
                goto L4f
            L4d:
                r0 = 0
                r4 = r0
            L4f:
                r0 = r4
                if (r0 != 0) goto L56
                goto L59
            L56:
                r0 = 0
                r7 = r0
            L59:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1732a0.p1733a.C25385b.C25386a.mo3682a(int, float[]):boolean");
        }
    }

    /* renamed from: n3.a0.a.b$b */
    /* loaded from: classes-dex2jar.jar:n3/a0/a/b$b.class */
    public static final class C25387b {

        /* renamed from: a */
        public final Bitmap f70807a;

        /* renamed from: b */
        public final List<C25392d> f70808b;

        /* renamed from: c */
        public int f70809c = 16;

        /* renamed from: d */
        public int f70810d = 12544;

        /* renamed from: e */
        public int f70811e = -1;

        /* renamed from: f */
        public final List<AbstractC25388c> f70812f;

        public C25387b(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.f70808b = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f70812f = arrayList2;
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            arrayList2.add(C25385b.f70801f);
            this.f70807a = bitmap;
            arrayList.add(C25392d.f70824d);
            arrayList.add(C25392d.f70825e);
            arrayList.add(C25392d.f70826f);
            arrayList.add(C25392d.f70827g);
            arrayList.add(C25392d.f70828h);
            arrayList.add(C25392d.f70829i);
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x0258  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x033d  */
        /* JADX WARN: Type inference failed for: r0v197, types: [double] */
        /* JADX WARN: Type inference failed for: r0v210, types: [double] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p1727n3.p1732a0.p1733a.C25385b m3683a() {
            /*
                Method dump skipped, instructions count: 896
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1732a0.p1733a.C25385b.C25387b.m3683a():n3.a0.a.b");
        }
    }

    /* renamed from: n3.a0.a.b$c */
    /* loaded from: classes-dex2jar.jar:n3/a0/a/b$c.class */
    public interface AbstractC25388c {
        /* renamed from: a */
        boolean mo3682a(int i, float[] fArr);
    }

    /* renamed from: n3.a0.a.b$d */
    /* loaded from: classes-dex2jar.jar:n3/a0/a/b$d.class */
    public interface AbstractC25389d {
    }

    /* renamed from: n3.a0.a.b$e */
    /* loaded from: classes-dex2jar.jar:n3/a0/a/b$e.class */
    public static final class C25390e {

        /* renamed from: a */
        public final int f70813a;

        /* renamed from: b */
        public final int f70814b;

        /* renamed from: c */
        public final int f70815c;

        /* renamed from: d */
        public final int f70816d;

        /* renamed from: e */
        public final int f70817e;

        /* renamed from: f */
        public boolean f70818f;

        /* renamed from: g */
        public int f70819g;

        /* renamed from: h */
        public int f70820h;

        /* renamed from: i */
        public float[] f70821i;

        public C25390e(int i, int i2) {
            this.f70813a = Color.red(i);
            this.f70814b = Color.green(i);
            this.f70815c = Color.blue(i);
            this.f70816d = i;
            this.f70817e = i2;
        }

        /* renamed from: a */
        public final void m3681a() {
            if (!this.f70818f) {
                int m1754e = C26493a.m1754e(-1, this.f70816d, 4.5f);
                int m1754e2 = C26493a.m1754e(-1, this.f70816d, 3.0f);
                if (m1754e != -1 && m1754e2 != -1) {
                    this.f70820h = C26493a.m1747l(-1, m1754e);
                    this.f70819g = C26493a.m1747l(-1, m1754e2);
                    this.f70818f = true;
                    return;
                }
                int m1754e3 = C26493a.m1754e(-16777216, this.f70816d, 4.5f);
                int m1754e4 = C26493a.m1754e(-16777216, this.f70816d, 3.0f);
                if (m1754e3 == -1 || m1754e4 == -1) {
                    this.f70820h = m1754e != -1 ? C26493a.m1747l(-1, m1754e) : C26493a.m1747l(-16777216, m1754e3);
                    this.f70819g = m1754e2 != -1 ? C26493a.m1747l(-1, m1754e2) : C26493a.m1747l(-16777216, m1754e4);
                    this.f70818f = true;
                    return;
                }
                this.f70820h = C26493a.m1747l(-16777216, m1754e3);
                this.f70819g = C26493a.m1747l(-16777216, m1754e4);
                this.f70818f = true;
            }
        }

        /* renamed from: b */
        public float[] m3680b() {
            if (this.f70821i == null) {
                this.f70821i = new float[3];
            }
            C26493a.m1758a(this.f70813a, this.f70814b, this.f70815c, this.f70821i);
            return this.f70821i;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C25390e.class != obj.getClass()) {
                return false;
            }
            C25390e c25390e = (C25390e) obj;
            if (this.f70817e != c25390e.f70817e || this.f70816d != c25390e.f70816d) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f70816d * 31) + this.f70817e;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(C25390e.class.getSimpleName());
            sb.append(" [RGB: #");
            sb.append(Integer.toHexString(this.f70816d));
            sb.append(']');
            sb.append(" [HSL: ");
            sb.append(Arrays.toString(m3680b()));
            sb.append(']');
            sb.append(" [Population: ");
            sb.append(this.f70817e);
            sb.append(']');
            sb.append(" [Title Text: #");
            m3681a();
            sb.append(Integer.toHexString(this.f70819g));
            sb.append(']');
            sb.append(" [Body Text: #");
            m3681a();
            sb.append(Integer.toHexString(this.f70820h));
            sb.append(']');
            return sb.toString();
        }
    }

    public C25385b(List<C25390e> list, List<C25392d> list2) {
        this.f70802a = list;
        this.f70803b = list2;
        int size = list.size();
        int i = Integer.MIN_VALUE;
        C25390e c25390e = null;
        int i2 = 0;
        while (i2 < size) {
            C25390e c25390e2 = this.f70802a.get(i2);
            int i3 = c25390e2.f70817e;
            int i4 = i;
            if (i3 > i) {
                c25390e = c25390e2;
                i4 = i3;
            }
            i2++;
            i = i4;
        }
        this.f70806e = c25390e;
    }
}
