package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.C0557d;
import androidx.constraintlayout.p026a.p027a.C0536b;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0544f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.constraintlayout.a.a.a.o */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/o.class */
public final class C0531o {

    /* renamed from: b */
    static int f1978b;

    /* renamed from: c */
    int f1980c;

    /* renamed from: e */
    public int f1982e;

    /* renamed from: a */
    ArrayList<C0541e> f1979a = new ArrayList<>();

    /* renamed from: d */
    public boolean f1981d = false;

    /* renamed from: f */
    ArrayList<C0532a> f1983f = null;

    /* renamed from: g */
    private int f1984g = -1;

    /* renamed from: androidx.constraintlayout.a.a.a.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/o$a.class */
    public final class C0532a {

        /* renamed from: a */
        WeakReference<C0541e> f1985a;

        /* renamed from: b */
        int f1986b;

        /* renamed from: c */
        int f1987c;

        /* renamed from: d */
        int f1988d;

        /* renamed from: e */
        int f1989e;

        /* renamed from: f */
        int f1990f;

        /* renamed from: g */
        int f1991g;

        public C0532a(C0541e c0541e, C0557d c0557d, int i) {
            C0531o.this = r6;
            this.f1985a = new WeakReference<>(c0541e);
            this.f1986b = C0557d.m45133b(c0541e.f2049H);
            this.f1987c = C0557d.m45133b(c0541e.f2050I);
            this.f1988d = C0557d.m45133b(c0541e.f2051J);
            this.f1989e = C0557d.m45133b(c0541e.f2052K);
            this.f1990f = C0557d.m45133b(c0541e.f2053L);
            this.f1991g = i;
        }
    }

    public C0531o(int i) {
        this.f1980c = -1;
        this.f1982e = 0;
        int i2 = f1978b;
        f1978b = i2 + 1;
        this.f1980c = i2;
        this.f1982e = i;
    }

    /* renamed from: a */
    private int m45328a(C0557d c0557d, ArrayList<C0541e> arrayList, int i) {
        int m45133b;
        int m45133b2;
        C0544f c0544f = (C0544f) arrayList.get(0).f2060S;
        c0557d.m45137b();
        c0544f.mo45192a(c0557d, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).mo45192a(c0557d, false);
        }
        if (i == 0 && c0544f.f2142aO > 0) {
            C0536b.m45313a(c0544f, c0557d, arrayList, 0);
        }
        if (i == 1 && c0544f.f2143aP > 0) {
            C0536b.m45313a(c0544f, c0557d, arrayList, 1);
        }
        try {
            c0557d.m45129e();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f1983f = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f1983f.add(new C0532a(arrayList.get(i3), c0557d, i));
        }
        if (i == 0) {
            m45133b = C0557d.m45133b(c0544f.f2049H);
            m45133b2 = C0557d.m45133b(c0544f.f2051J);
            c0557d.m45137b();
        } else {
            m45133b = C0557d.m45133b(c0544f.f2050I);
            m45133b2 = C0557d.m45133b(c0544f.f2052K);
            c0557d.m45137b();
        }
        return m45133b2 - m45133b;
    }

    /* renamed from: a */
    public final int m45329a(C0557d c0557d, int i) {
        if (this.f1979a.size() == 0) {
            return 0;
        }
        return m45328a(c0557d, this.f1979a, i);
    }

    /* renamed from: a */
    public final void m45331a(int i, C0531o c0531o) {
        Iterator<C0541e> it2 = this.f1979a.iterator();
        while (it2.hasNext()) {
            C0541e next = it2.next();
            c0531o.m45330a(next);
            if (i == 0) {
                next.f2075aG = c0531o.f1980c;
            } else {
                next.f2076aH = c0531o.f1980c;
            }
        }
        this.f1984g = c0531o.f1980c;
    }

    /* renamed from: a */
    public final void m45327a(ArrayList<C0531o> arrayList) {
        int size = this.f1979a.size();
        if (this.f1984g != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                C0531o c0531o = arrayList.get(i);
                if (this.f1984g == c0531o.f1980c) {
                    m45331a(this.f1982e, c0531o);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    /* renamed from: a */
    public final boolean m45330a(C0541e c0541e) {
        if (this.f1979a.contains(c0541e)) {
            return false;
        }
        this.f1979a.add(c0541e);
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f1982e;
        sb.append(i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown");
        sb.append(" [");
        sb.append(this.f1980c);
        sb.append("] <");
        String sb2 = sb.toString();
        Iterator<C0541e> it2 = this.f1979a.iterator();
        while (it2.hasNext()) {
            C0541e next = it2.next();
            sb2 = sb2 + StringUtils.SPACE + next.f2092al;
        }
        return sb2 + " >";
    }
}
