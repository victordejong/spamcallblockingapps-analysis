package p1727n3.p1795i.p1799b;

import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.b.f$b */
/* loaded from: classes-dex2jar.jar:n3/i/b/f$b.class */
public class f$b implements Comparable {

    /* renamed from: a */
    public C26358g f73599a;

    /* renamed from: b */
    public final /* synthetic */ f f73600b;

    public f$b(f fVar, f fVar2) {
        this.f73600b = fVar;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.f73599a.f73603b - ((C26358g) obj).f73603b;
    }

    public String toString() {
        String str = "[ ";
        String str2 = str;
        if (this.f73599a != null) {
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= 9) {
                    break;
                }
                StringBuilder m8728C = C22128a.m8728C(str);
                m8728C.append(this.f73599a.f73609h[i]);
                m8728C.append(StringConstant.SPACE);
                str = m8728C.toString();
                i++;
            }
        }
        StringBuilder m8696K = C22128a.m8696K(str2, "] ");
        m8696K.append(this.f73599a);
        return m8696K.toString();
    }
}
