package p193e.p1411b.p1412a.p1420y.p1423l;

import com.tenor.android.core.constant.StringConstant;
import e.b.a.y.j.b;
import e.b.a.y.j.j;
import java.util.List;
import java.util.Locale;
import p193e.p1411b.p1412a.C21913e;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1420y.p1421j.C21982k;
import p193e.p1411b.p1412a.p1420y.p1421j.C21983l;
import p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b;
import p193e.p1411b.p1412a.p1420y.p1422k.C21992g;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.l.e */
/* loaded from: classes-dex2jar.jar:e/b/a/y/l/e.class */
public class C22010e {

    /* renamed from: a */
    public final List<AbstractC21987b> f61167a;

    /* renamed from: b */
    public final C21913e f61168b;

    /* renamed from: c */
    public final String f61169c;

    /* renamed from: d */
    public final long f61170d;

    /* renamed from: e */
    public final EnumC22011a f61171e;

    /* renamed from: f */
    public final long f61172f;

    /* renamed from: g */
    public final String f61173g;

    /* renamed from: h */
    public final List<C21992g> f61174h;

    /* renamed from: i */
    public final C21983l f61175i;

    /* renamed from: j */
    public final int f61176j;

    /* renamed from: k */
    public final int f61177k;

    /* renamed from: l */
    public final int f61178l;

    /* renamed from: m */
    public final float f61179m;

    /* renamed from: n */
    public final float f61180n;

    /* renamed from: o */
    public final int f61181o;

    /* renamed from: p */
    public final int f61182p;

    /* renamed from: q */
    public final j f61183q;

    /* renamed from: r */
    public final C21982k f61184r;

    /* renamed from: s */
    public final b f61185s;

    /* renamed from: t */
    public final List<C21907a<Float>> f61186t;

    /* renamed from: u */
    public final EnumC22012b f61187u;

    /* renamed from: v */
    public final boolean f61188v;

    /* renamed from: e.b.a.y.l.e$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/y/l/e$a.class */
    public enum EnumC22011a {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* renamed from: e.b.a.y.l.e$b */
    /* loaded from: classes-dex2jar.jar:e/b/a/y/l/e$b.class */
    public enum EnumC22012b {
        NONE,
        ADD,
        INVERT,
        UNKNOWN
    }

    public C22010e(List<AbstractC21987b> list, C21913e c21913e, String str, long j, EnumC22011a enumC22011a, long j2, String str2, List<C21992g> list2, C21983l c21983l, int i, int i2, int i3, float f, float f2, int i4, int i5, j jVar, C21982k c21982k, List<C21907a<Float>> list3, EnumC22012b enumC22012b, b bVar, boolean z) {
        this.f61167a = list;
        this.f61168b = c21913e;
        this.f61169c = str;
        this.f61170d = j;
        this.f61171e = enumC22011a;
        this.f61172f = j2;
        this.f61173g = str2;
        this.f61174h = list2;
        this.f61175i = c21983l;
        this.f61176j = i;
        this.f61177k = i2;
        this.f61178l = i3;
        this.f61179m = f;
        this.f61180n = f2;
        this.f61181o = i4;
        this.f61182p = i5;
        this.f61183q = jVar;
        this.f61184r = c21982k;
        this.f61186t = list3;
        this.f61187u = enumC22012b;
        this.f61185s = bVar;
        this.f61188v = z;
    }

    /* renamed from: a */
    public String m8833a(String str) {
        StringBuilder m8728C = C22128a.m8728C(str);
        m8728C.append(this.f61169c);
        m8728C.append(StringConstant.NEW_LINE);
        C22010e m8904d = this.f61168b.m8904d(this.f61172f);
        if (m8904d != null) {
            m8728C.append("\t\tParents: ");
            m8728C.append(m8904d.f61169c);
            C22010e m8904d2 = this.f61168b.m8904d(m8904d.f61172f);
            while (true) {
                C22010e c22010e = m8904d2;
                if (c22010e == null) {
                    break;
                }
                m8728C.append("->");
                m8728C.append(c22010e.f61169c);
                m8904d2 = this.f61168b.m8904d(c22010e.f61172f);
            }
            m8728C.append(str);
            m8728C.append(StringConstant.NEW_LINE);
        }
        if (!this.f61174h.isEmpty()) {
            m8728C.append(str);
            m8728C.append("\tMasks: ");
            m8728C.append(this.f61174h.size());
            m8728C.append(StringConstant.NEW_LINE);
        }
        if (this.f61176j != 0 && this.f61177k != 0) {
            m8728C.append(str);
            m8728C.append("\tBackground: ");
            m8728C.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(this.f61176j), Integer.valueOf(this.f61177k), Integer.valueOf(this.f61178l)));
        }
        if (!this.f61167a.isEmpty()) {
            m8728C.append(str);
            m8728C.append("\tShapes:\n");
            for (AbstractC21987b abstractC21987b : this.f61167a) {
                m8728C.append(str);
                m8728C.append("\t\t");
                m8728C.append(abstractC21987b);
                m8728C.append(StringConstant.NEW_LINE);
            }
        }
        return m8728C.toString();
    }

    public String toString() {
        return m8833a("");
    }
}
