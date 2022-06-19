package p1727n3.p1795i.p1799b.p1800h;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p1727n3.p1795i.p1799b.C26358g;
import p1727n3.p1795i.p1799b.p1800h.p1801m.C26379n;
/* renamed from: n3.i.b.h.c */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/c.class */
public class C26361c {

    /* renamed from: b */
    public int f73642b;

    /* renamed from: c */
    public boolean f73643c;

    /* renamed from: d */
    public final C26363d f73644d;

    /* renamed from: e */
    public final EnumC26362a f73645e;

    /* renamed from: f */
    public C26361c f73646f;

    /* renamed from: i */
    public C26358g f73649i;

    /* renamed from: a */
    public HashSet<C26361c> f73641a = null;

    /* renamed from: g */
    public int f73647g = 0;

    /* renamed from: h */
    public int f73648h = -1;

    /* renamed from: n3.i.b.h.c$a */
    /* loaded from: classes-dex2jar.jar:n3/i/b/h/c$a.class */
    public enum EnumC26362a {
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

    public C26361c(C26363d c26363d, EnumC26362a enumC26362a) {
        this.f73644d = c26363d;
        this.f73645e = enumC26362a;
    }

    /* renamed from: a */
    public boolean m2107a(C26361c c26361c, int i) {
        return m2106b(c26361c, i, -1, false);
    }

    /* renamed from: b */
    public boolean m2106b(C26361c c26361c, int i, int i2, boolean z) {
        if (c26361c == null) {
            m2097k();
            return true;
        } else if (!z && !m2098j(c26361c)) {
            return false;
        } else {
            this.f73646f = c26361c;
            if (c26361c.f73641a == null) {
                c26361c.f73641a = new HashSet<>();
            }
            HashSet<C26361c> hashSet = this.f73646f.f73641a;
            if (hashSet != null) {
                hashSet.add(this);
            }
            if (i > 0) {
                this.f73647g = i;
            } else {
                this.f73647g = 0;
            }
            this.f73648h = i2;
            return true;
        }
    }

    /* renamed from: c */
    public void m2105c(int i, ArrayList<C26379n> arrayList, C26379n c26379n) {
        HashSet<C26361c> hashSet = this.f73641a;
        if (hashSet != null) {
            Iterator<C26361c> it = hashSet.iterator();
            while (it.hasNext()) {
                MediaSessionCompat.m43255a0(it.next().f73644d, i, arrayList, c26379n);
            }
        }
    }

    /* renamed from: d */
    public int m2104d() {
        if (!this.f73643c) {
            return 0;
        }
        return this.f73642b;
    }

    /* renamed from: e */
    public int m2103e() {
        C26361c c26361c;
        if (this.f73644d.f73712j0 == 8) {
            return 0;
        }
        int i = this.f73648h;
        return (i <= -1 || (c26361c = this.f73646f) == null || c26361c.f73644d.f73712j0 != 8) ? this.f73647g : i;
    }

    /* renamed from: f */
    public final C26361c m2102f() {
        switch (this.f73645e.ordinal()) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return this.f73644d.f73674H;
            case 2:
                return this.f73644d.f73675I;
            case 3:
                return this.f73644d.f73670F;
            case 4:
                return this.f73644d.f73672G;
            default:
                throw new AssertionError(this.f73645e.name());
        }
    }

    /* renamed from: g */
    public boolean m2101g() {
        HashSet<C26361c> hashSet = this.f73641a;
        if (hashSet == null) {
            return false;
        }
        Iterator<C26361c> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().m2102f().m2099i()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public boolean m2100h() {
        HashSet<C26361c> hashSet = this.f73641a;
        boolean z = false;
        if (hashSet == null) {
            return false;
        }
        if (hashSet.size() > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: i */
    public boolean m2099i() {
        return this.f73646f != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cb, code lost:
        if (r0 == r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x010e, code lost:
        if (r0 == r0) goto L48;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m2098j(p1727n3.p1795i.p1799b.p1800h.C26361c r5) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.p1800h.C26361c.m2098j(n3.i.b.h.c):boolean");
    }

    /* renamed from: k */
    public void m2097k() {
        HashSet<C26361c> hashSet;
        C26361c c26361c = this.f73646f;
        if (c26361c != null && (hashSet = c26361c.f73641a) != null) {
            hashSet.remove(this);
            if (this.f73646f.f73641a.size() == 0) {
                this.f73646f.f73641a = null;
            }
        }
        this.f73641a = null;
        this.f73646f = null;
        this.f73647g = 0;
        this.f73648h = -1;
        this.f73643c = false;
        this.f73642b = 0;
    }

    /* renamed from: l */
    public void m2096l() {
        C26358g c26358g = this.f73649i;
        if (c26358g == null) {
            this.f73649i = new C26358g(C26358g.EnumC26359a.UNRESTRICTED);
        } else {
            c26358g.m2110c();
        }
    }

    /* renamed from: m */
    public void m2095m(int i) {
        this.f73642b = i;
        this.f73643c = true;
    }

    /* renamed from: n */
    public void m2094n(int i) {
        if (m2099i()) {
            this.f73648h = i;
        }
    }

    public String toString() {
        return this.f73644d.f73714k0 + StringConstant.COLON + this.f73645e.toString();
    }
}
