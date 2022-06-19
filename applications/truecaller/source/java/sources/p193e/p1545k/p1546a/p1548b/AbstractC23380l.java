package p193e.p1545k.p1546a.p1548b;

import com.tenor.android.core.constant.StringConstant;
import p193e.p1545k.p1546a.p1548b.p1552w.C23394a;
/* renamed from: e.k.a.b.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/l.class */
public abstract class AbstractC23380l {

    /* renamed from: a */
    public int f64688a;

    /* renamed from: b */
    public int f64689b;

    public AbstractC23380l() {
    }

    public AbstractC23380l(int i, int i2) {
        this.f64688a = i;
        this.f64689b = i2;
    }

    public AbstractC23380l(AbstractC23380l abstractC23380l) {
        this.f64688a = abstractC23380l.f64688a;
        this.f64689b = abstractC23380l.f64689b;
    }

    /* renamed from: a */
    public abstract String mo5786a();

    /* renamed from: b */
    public abstract Object mo5785b();

    /* renamed from: c */
    public abstract AbstractC23380l mo5784c();

    /* renamed from: d */
    public final boolean m7197d() {
        boolean z = true;
        if (this.f64688a != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public final boolean m7196e() {
        return this.f64688a == 2;
    }

    /* renamed from: f */
    public final boolean m7195f() {
        return this.f64688a == 0;
    }

    /* renamed from: g */
    public abstract void mo5783g(Object obj);

    /* renamed from: h */
    public String m7194h() {
        int i = this.f64688a;
        return i != 0 ? i != 1 ? i != 2 ? "?" : "Object" : "Array" : "root";
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        int i = this.f64688a;
        if (i != 0) {
            if (i != 1) {
                sb.append('{');
                String mo5786a = mo5786a();
                if (mo5786a != null) {
                    sb.append('\"');
                    int[] iArr = C23394a.f64774h;
                    int length = iArr.length;
                    int length2 = mo5786a.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        char charAt = mo5786a.charAt(i2);
                        if (charAt >= length || iArr[charAt] == 0) {
                            sb.append(charAt);
                        } else {
                            sb.append('\\');
                            int i3 = iArr[charAt];
                            if (i3 < 0) {
                                sb.append('u');
                                sb.append('0');
                                sb.append('0');
                                char[] cArr = C23394a.f64767a;
                                sb.append(cArr[charAt >> 4]);
                                sb.append(cArr[charAt & 15]);
                            } else {
                                sb.append((char) i3);
                            }
                        }
                    }
                    sb.append('\"');
                } else {
                    sb.append('?');
                }
                sb.append('}');
            } else {
                sb.append('[');
                int i4 = this.f64689b;
                if (i4 < 0) {
                    i4 = 0;
                }
                sb.append(i4);
                sb.append(']');
            }
        } else {
            sb.append(StringConstant.SLASH);
        }
        return sb.toString();
    }
}
