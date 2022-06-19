package p258v;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p237t.C4351h;
import p269w.C4703i;
import p269w.C4709o;
/* renamed from: v.c */
/* loaded from: classes-dex2jar.jar:v/c.class */
public class C4564c {

    /* renamed from: b */
    public int f14031b;

    /* renamed from: c */
    public boolean f14032c;

    /* renamed from: d */
    public final C4566d f14033d;

    /* renamed from: e */
    public final EnumC4565a f14034e;

    /* renamed from: f */
    public C4564c f14035f;

    /* renamed from: i */
    public C4351h f14038i;

    /* renamed from: a */
    public HashSet<C4564c> f14030a = null;

    /* renamed from: g */
    public int f14036g = 0;

    /* renamed from: h */
    public int f14037h = Integer.MIN_VALUE;

    /* renamed from: v.c$a */
    /* loaded from: classes-dex2jar.jar:v/c$a.class */
    public enum EnumC4565a {
        /* JADX INFO: Fake field, exist only in values array */
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

    public C4564c(C4566d c4566d, EnumC4565a enumC4565a) {
        this.f14033d = c4566d;
        this.f14034e = enumC4565a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
        if (r4.f14033d.f14052E == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b9, code lost:
        if (r0 != r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ca, code lost:
        if (r0 != r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0103, code lost:
        if (r0 != r0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x013a, code lost:
        if (r0 != r0) goto L55;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m835a(p258v.C4564c r5, int r6, int r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p258v.C4564c.m835a(v.c, int, int, boolean):boolean");
    }

    /* renamed from: b */
    public void m834b(int i, ArrayList<C4709o> arrayList, C4709o c4709o) {
        HashSet<C4564c> hashSet = this.f14030a;
        if (hashSet != null) {
            Iterator<C4564c> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                C4703i.m575a(it2.next().f14033d, i, arrayList, c4709o);
            }
        }
    }

    /* renamed from: c */
    public int m833c() {
        if (!this.f14032c) {
            return 0;
        }
        return this.f14031b;
    }

    /* renamed from: d */
    public int m832d() {
        C4564c c4564c;
        if (this.f14033d.f14091i0 == 8) {
            return 0;
        }
        int i = this.f14037h;
        return (i == Integer.MIN_VALUE || (c4564c = this.f14035f) == null || c4564c.f14033d.f14091i0 != 8) ? this.f14036g : i;
    }

    /* renamed from: e */
    public boolean m831e() {
        C4564c c4564c;
        HashSet<C4564c> hashSet = this.f14030a;
        if (hashSet == null) {
            return false;
        }
        Iterator<C4564c> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            C4564c next = it2.next();
            switch (next.f14034e.ordinal()) {
                case 0:
                case 5:
                case 6:
                case 7:
                case 8:
                    c4564c = null;
                    break;
                case 1:
                    c4564c = next.f14033d.f14059L;
                    break;
                case 2:
                    c4564c = next.f14033d.f14060M;
                    break;
                case 3:
                    c4564c = next.f14033d.f14057J;
                    break;
                case 4:
                    c4564c = next.f14033d.f14058K;
                    break;
                default:
                    throw new AssertionError(next.f14034e.name());
            }
            if (c4564c.m829g()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public boolean m830f() {
        HashSet<C4564c> hashSet = this.f14030a;
        boolean z = false;
        if (hashSet == null) {
            return false;
        }
        if (hashSet.size() > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: g */
    public boolean m829g() {
        return this.f14035f != null;
    }

    /* renamed from: h */
    public void m828h() {
        HashSet<C4564c> hashSet;
        C4564c c4564c = this.f14035f;
        if (c4564c != null && (hashSet = c4564c.f14030a) != null) {
            hashSet.remove(this);
            if (this.f14035f.f14030a.size() == 0) {
                this.f14035f.f14030a = null;
            }
        }
        this.f14030a = null;
        this.f14035f = null;
        this.f14036g = 0;
        this.f14037h = Integer.MIN_VALUE;
        this.f14032c = false;
        this.f14031b = 0;
    }

    /* renamed from: i */
    public void m827i() {
        C4351h c4351h = this.f14038i;
        if (c4351h == null) {
            this.f14038i = new C4351h(1);
        } else {
            c4351h.m1017c();
        }
    }

    /* renamed from: j */
    public void m826j(int i) {
        this.f14031b = i;
        this.f14032c = true;
    }

    public String toString() {
        return this.f14033d.f14093j0 + ":" + this.f14034e.toString();
    }
}
