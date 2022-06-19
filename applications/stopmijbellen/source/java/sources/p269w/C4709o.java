package p269w;

import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p007a6.C0033h;
import p124i4.C3102d;
import p237t.C4344d;
import p258v.C4566d;
import p258v.C4567e;
/* renamed from: w.o */
/* loaded from: classes-dex2jar.jar:w/o.class */
public class C4709o {

    /* renamed from: f */
    public static int f14548f;

    /* renamed from: b */
    public int f14550b;

    /* renamed from: c */
    public int f14551c;

    /* renamed from: a */
    public ArrayList<C4566d> f14549a = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<C4710a> f14552d = null;

    /* renamed from: e */
    public int f14553e = -1;

    /* renamed from: w.o$a */
    /* loaded from: classes-dex2jar.jar:w/o$a.class */
    public class C4710a {
        public C4710a(C4709o c4709o, C4566d c4566d, C4344d c4344d, int i) {
            new WeakReference(c4566d);
            c4344d.m1037o(c4566d.f14057J);
            c4344d.m1037o(c4566d.f14058K);
            c4344d.m1037o(c4566d.f14059L);
            c4344d.m1037o(c4566d.f14060M);
            c4344d.m1037o(c4566d.f14061N);
        }
    }

    public C4709o(int i) {
        this.f14550b = -1;
        this.f14551c = 0;
        int i2 = f14548f;
        f14548f = i2 + 1;
        this.f14550b = i2;
        this.f14551c = i;
    }

    /* renamed from: a */
    public boolean m565a(C4566d c4566d) {
        if (this.f14549a.contains(c4566d)) {
            return false;
        }
        this.f14549a.add(c4566d);
        return true;
    }

    /* renamed from: b */
    public void m564b(ArrayList<C4709o> arrayList) {
        int size = this.f14549a.size();
        if (this.f14553e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                C4709o c4709o = arrayList.get(i);
                if (this.f14553e == c4709o.f14550b) {
                    m562d(this.f14551c, c4709o);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    /* renamed from: c */
    public int m563c(C4344d c4344d, int i) {
        int i2;
        int i3;
        if (this.f14549a.size() == 0) {
            return 0;
        }
        ArrayList<C4566d> arrayList = this.f14549a;
        C4567e c4567e = (C4567e) arrayList.get(0).f14069V;
        c4344d.m1031u();
        c4567e.mo771d(c4344d, false);
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            arrayList.get(i4).mo771d(c4344d, false);
        }
        if (i == 0 && c4567e.f14117A0 > 0) {
            C3102d.m2636c(c4567e, c4344d, arrayList, 0);
        }
        if (i == 1 && c4567e.f14118B0 > 0) {
            C3102d.m2636c(c4567e, c4344d, arrayList, 1);
        }
        try {
            c4344d.m1035q();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f14552d = new ArrayList<>();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            this.f14552d.add(new C4710a(this, arrayList.get(i5), c4344d, i));
        }
        if (i == 0) {
            i3 = c4344d.m1037o(c4567e.f14057J);
            i2 = c4344d.m1037o(c4567e.f14059L);
            c4344d.m1031u();
        } else {
            i3 = c4344d.m1037o(c4567e.f14058K);
            i2 = c4344d.m1037o(c4567e.f14060M);
            c4344d.m1031u();
        }
        return i2 - i3;
    }

    /* renamed from: d */
    public void m562d(int i, C4709o c4709o) {
        Iterator<C4566d> it2 = this.f14549a.iterator();
        while (it2.hasNext()) {
            C4566d next = it2.next();
            c4709o.m565a(next);
            if (i == 0) {
                next.f14105p0 = c4709o.f14550b;
            } else {
                next.f14107q0 = c4709o.f14550b;
            }
        }
        this.f14553e = c4709o.f14550b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f14551c;
        sb.append(i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown");
        sb.append(" [");
        String m8885l = C0033h.m8885l(sb, this.f14550b, "] <");
        Iterator<C4566d> it2 = this.f14549a.iterator();
        while (it2.hasNext()) {
            C4566d next = it2.next();
            StringBuilder m7624k = C0608b.m7624k(m8885l, " ");
            m7624k.append(next.f14093j0);
            m8885l = m7624k.toString();
        }
        return C1676a.m4789h(m8885l, " >");
    }
}
