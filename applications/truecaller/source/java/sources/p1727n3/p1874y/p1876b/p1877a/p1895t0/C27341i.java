package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import android.os.Handler;
import android.os.Message;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.t0.i */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/i.class */
public final /* synthetic */ class C27341i implements Handler.Callback {

    /* renamed from: a */
    public final j f76949a;

    public C27341i(j jVar) {
        this.f76949a = jVar;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        j jVar = this.f76949a;
        Objects.requireNonNull(jVar);
        int i = message.what;
        if (i == 0) {
            Object obj = message.obj;
            int i2 = C27445x.f77229a;
            j$f j_f = (j$f) obj;
            jVar.r = jVar.r.m471h(j_f.f76963a, ((Collection) j_f.f76964b).size());
            jVar.w(j_f.f76963a, (Collection) j_f.f76964b);
            jVar.F(j_f.f76965c);
            return true;
        } else if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    Object obj2 = message.obj;
                    int i3 = C27445x.f77229a;
                    j$f j_f2 = (j$f) obj2;
                    jVar.r = (AbstractC27347l0) j_f2.f76964b;
                    jVar.F(j_f2.f76965c);
                    return true;
                } else if (i == 4) {
                    jVar.G();
                    return true;
                } else if (i != 5) {
                    throw new IllegalStateException();
                } else {
                    Object obj3 = message.obj;
                    int i4 = C27445x.f77229a;
                    jVar.A((Set) obj3);
                    return true;
                }
            }
            Object obj4 = message.obj;
            int i5 = C27445x.f77229a;
            j$f j_f3 = (j$f) obj4;
            AbstractC27347l0 abstractC27347l0 = jVar.r;
            int i6 = j_f3.f76963a;
            AbstractC27347l0 m472g = abstractC27347l0.m472g(i6, i6 + 1);
            jVar.r = m472g;
            jVar.r = m472g.m471h(((Integer) j_f3.f76964b).intValue(), 1);
            int i7 = j_f3.f76963a;
            int intValue = ((Integer) j_f3.f76964b).intValue();
            int min = Math.min(i7, intValue);
            int max = Math.max(i7, intValue);
            int i8 = ((j$e) jVar.l.get(min)).f76961e;
            List list = jVar.l;
            list.add(intValue, (j$e) list.remove(i7));
            while (min <= max) {
                j$e j_e = (j$e) jVar.l.get(min);
                j_e.f76960d = min;
                j_e.f76961e = i8;
                i8 += j_e.f76957a.m.o();
                min++;
            }
            jVar.F(j_f3.f76965c);
            return true;
        } else {
            Object obj5 = message.obj;
            int i9 = C27445x.f77229a;
            j$f j_f4 = (j$f) obj5;
            int i10 = j_f4.f76963a;
            int intValue2 = ((Integer) j_f4.f76964b).intValue();
            if (i10 == 0 && intValue2 == jVar.r.m478a()) {
                jVar.r = jVar.r.m474e();
            } else {
                jVar.r = jVar.r.m472g(i10, intValue2);
            }
            while (true) {
                intValue2--;
                if (intValue2 < i10) {
                    jVar.F(j_f4.f76965c);
                    return true;
                }
                j$e j_e2 = (j$e) jVar.l.remove(intValue2);
                jVar.n.remove(j_e2.f76958b);
                jVar.y(intValue2, -1, -j_e2.f76957a.m.o());
                j_e2.f76962f = true;
                jVar.C(j_e2);
            }
        }
    }
}
