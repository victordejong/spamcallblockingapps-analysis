package p1727n3.p1795i.p1799b.p1800h.p1801m;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import n3.i.b.h.e;
import p1727n3.p1795i.p1799b.C26355d;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.b.h.m.n */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/m/n.class */
public class C26379n {

    /* renamed from: f */
    public static int f73824f;

    /* renamed from: b */
    public int f73826b;

    /* renamed from: c */
    public int f73827c;

    /* renamed from: a */
    public ArrayList<C26363d> f73825a = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<C26380a> f73828d = null;

    /* renamed from: e */
    public int f73829e = -1;

    /* renamed from: n3.i.b.h.m.n$a */
    /* loaded from: classes-dex2jar.jar:n3/i/b/h/m/n$a.class */
    public class C26380a {
        public C26380a(C26379n c26379n, C26363d c26363d, C26355d c26355d, int i) {
            new WeakReference(c26363d);
            c26355d.m2123o(c26363d.f73670F);
            c26355d.m2123o(c26363d.f73672G);
            c26355d.m2123o(c26363d.f73674H);
            c26355d.m2123o(c26363d.f73675I);
            c26355d.m2123o(c26363d.f73676J);
        }
    }

    public C26379n(int i) {
        this.f73826b = -1;
        this.f73827c = 0;
        int i2 = f73824f;
        f73824f = i2 + 1;
        this.f73826b = i2;
        this.f73827c = i;
    }

    /* renamed from: a */
    public boolean m2013a(C26363d c26363d) {
        if (this.f73825a.contains(c26363d)) {
            return false;
        }
        this.f73825a.add(c26363d);
        return true;
    }

    /* renamed from: b */
    public void m2012b(ArrayList<C26379n> arrayList) {
        int size = this.f73825a.size();
        if (this.f73829e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                C26379n c26379n = arrayList.get(i);
                if (this.f73829e == c26379n.f73826b) {
                    m2010d(this.f73827c, c26379n);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    /* renamed from: c */
    public int m2011c(C26355d c26355d, int i) {
        int i2;
        int i3;
        if (this.f73825a.size() == 0) {
            return 0;
        }
        ArrayList<C26363d> arrayList = this.f73825a;
        e eVar = arrayList.get(0).f73684R;
        c26355d.m2117u();
        eVar.mo2047f(c26355d, false);
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            arrayList.get(i4).mo2047f(c26355d, false);
        }
        if (i == 0 && eVar.P0 > 0) {
            MediaSessionCompat.m43247d(eVar, c26355d, arrayList, 0);
        }
        if (i == 1 && eVar.Q0 > 0) {
            MediaSessionCompat.m43247d(eVar, c26355d, arrayList, 1);
        }
        try {
            c26355d.m2121q();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f73828d = new ArrayList<>();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            this.f73828d.add(new C26380a(this, arrayList.get(i5), c26355d, i));
        }
        if (i == 0) {
            i3 = c26355d.m2123o(eVar.f73670F);
            i2 = c26355d.m2123o(eVar.f73674H);
            c26355d.m2117u();
        } else {
            i3 = c26355d.m2123o(eVar.f73672G);
            i2 = c26355d.m2123o(eVar.f73675I);
            c26355d.m2117u();
        }
        return i2 - i3;
    }

    /* renamed from: d */
    public void m2010d(int i, C26379n c26379n) {
        Iterator<C26363d> it = this.f73825a.iterator();
        while (it.hasNext()) {
            C26363d next = it.next();
            c26379n.m2013a(next);
            if (i == 0) {
                next.f73671F0 = c26379n.f73826b;
            } else {
                next.f73673G0 = c26379n.f73826b;
            }
        }
        this.f73829e = c26379n.f73826b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f73827c;
        sb.append(i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown");
        sb.append(" [");
        String m8697J2 = C22128a.m8697J2(sb, this.f73826b, "] <");
        Iterator<C26363d> it = this.f73825a.iterator();
        while (it.hasNext()) {
            C26363d next = it.next();
            StringBuilder m8696K = C22128a.m8696K(m8697J2, StringConstant.SPACE);
            m8696K.append(next.f73714k0);
            m8697J2 = m8696K.toString();
        }
        return C22128a.m8543z2(m8697J2, " >");
    }
}
