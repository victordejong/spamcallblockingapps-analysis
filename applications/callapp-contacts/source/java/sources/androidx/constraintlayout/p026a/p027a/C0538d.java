package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.C0567h;
import androidx.constraintlayout.p026a.p027a.p028a.C0523i;
import androidx.constraintlayout.p026a.p027a.p028a.C0531o;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/d.class */
public final class C0538d {

    /* renamed from: b */
    int f2032b;

    /* renamed from: c */
    public boolean f2033c;

    /* renamed from: d */
    public final C0541e f2034d;

    /* renamed from: e */
    public final EnumC0540a f2035e;

    /* renamed from: f */
    public C0538d f2036f;

    /* renamed from: i */
    public C0567h f2039i;

    /* renamed from: a */
    public HashSet<C0538d> f2031a = null;

    /* renamed from: g */
    public int f2037g = 0;

    /* renamed from: h */
    int f2038h = -1;

    /* renamed from: androidx.constraintlayout.a.a.d$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/d$1.class */
    public static final /* synthetic */ class C05391 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2040a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0540a.values().length];
            f2040a = iArr;
            try {
                iArr[EnumC0540a.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2040a[EnumC0540a.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2040a[EnumC0540a.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2040a[EnumC0540a.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2040a[EnumC0540a.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2040a[EnumC0540a.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2040a[EnumC0540a.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2040a[EnumC0540a.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2040a[EnumC0540a.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/d$a.class */
    public enum EnumC0540a {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public C0538d(C0541e c0541e, EnumC0540a enumC0540a) {
        this.f2034d = c0541e;
        this.f2035e = enumC0540a;
    }

    /* renamed from: a */
    public final void m45310a(int i) {
        this.f2032b = i;
        this.f2033c = true;
    }

    /* renamed from: a */
    public final void m45309a(int i, ArrayList<C0531o> arrayList, C0531o c0531o) {
        HashSet<C0538d> hashSet = this.f2031a;
        if (hashSet != null) {
            Iterator<C0538d> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                C0523i.m45341a(it2.next().f2034d, i, arrayList, c0531o);
            }
        }
    }

    /* renamed from: a */
    public final boolean m45311a() {
        HashSet<C0538d> hashSet = this.f2031a;
        return hashSet != null && hashSet.size() > 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c4, code lost:
        if (r0 == androidx.constraintlayout.p026a.p027a.C0538d.EnumC0540a.CENTER_Y) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0108, code lost:
        if (r0 == androidx.constraintlayout.p026a.p027a.C0538d.EnumC0540a.CENTER_X) goto L48;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m45308a(androidx.constraintlayout.p026a.p027a.C0538d r5) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.p027a.C0538d.m45308a(androidx.constraintlayout.a.a.d):boolean");
    }

    /* renamed from: a */
    public final boolean m45307a(C0538d c0538d, int i) {
        return m45306a(c0538d, i, -1, false);
    }

    /* renamed from: a */
    public final boolean m45306a(C0538d c0538d, int i, int i2, boolean z) {
        if (c0538d == null) {
            m45300f();
            return true;
        } else if (!z && !m45308a(c0538d)) {
            return false;
        } else {
            this.f2036f = c0538d;
            if (c0538d.f2031a == null) {
                c0538d.f2031a = new HashSet<>();
            }
            HashSet<C0538d> hashSet = this.f2036f.f2031a;
            if (hashSet != null) {
                hashSet.add(this);
            }
            if (i > 0) {
                this.f2037g = i;
            } else {
                this.f2037g = 0;
            }
            this.f2038h = i2;
            return true;
        }
    }

    /* renamed from: b */
    public final void m45304b(int i) {
        if (m45299g()) {
            this.f2038h = i;
        }
    }

    /* renamed from: b */
    public final boolean m45305b() {
        HashSet<C0538d> hashSet = this.f2031a;
        if (hashSet == null) {
            return false;
        }
        Iterator<C0538d> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            if (it2.next().m45298h().m45299g()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final int m45303c() {
        if (!this.f2033c) {
            return 0;
        }
        return this.f2032b;
    }

    /* renamed from: d */
    public final void m45302d() {
        C0567h c0567h = this.f2039i;
        if (c0567h == null) {
            this.f2039i = new C0567h(C0567h.EnumC0568a.UNRESTRICTED, (String) null);
        } else {
            c0567h.m45108b();
        }
    }

    /* renamed from: e */
    public final int m45301e() {
        C0538d c0538d;
        if (this.f2034d.f2091ak == 8) {
            return 0;
        }
        return (this.f2038h < 0 || (c0538d = this.f2036f) == null || c0538d.f2034d.f2091ak != 8) ? this.f2037g : this.f2038h;
    }

    /* renamed from: f */
    public final void m45300f() {
        HashSet<C0538d> hashSet;
        C0538d c0538d = this.f2036f;
        if (c0538d != null && (hashSet = c0538d.f2031a) != null) {
            hashSet.remove(this);
            if (this.f2036f.f2031a.size() == 0) {
                this.f2036f.f2031a = null;
            }
        }
        this.f2031a = null;
        this.f2036f = null;
        this.f2037g = 0;
        this.f2038h = -1;
        this.f2033c = false;
        this.f2032b = 0;
    }

    /* renamed from: g */
    public final boolean m45299g() {
        return this.f2036f != null;
    }

    /* renamed from: h */
    public final C0538d m45298h() {
        switch (C05391.f2040a[this.f2035e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f2034d.f2051J;
            case 3:
                return this.f2034d.f2049H;
            case 4:
                return this.f2034d.f2052K;
            case 5:
                return this.f2034d.f2050I;
            default:
                throw new AssertionError(this.f2035e.name());
        }
    }

    public final String toString() {
        return this.f2034d.f2092al + ":" + this.f2035e.toString();
    }
}
