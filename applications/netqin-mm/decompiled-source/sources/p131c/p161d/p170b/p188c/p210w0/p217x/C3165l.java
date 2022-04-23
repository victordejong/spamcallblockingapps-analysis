package p131c.p161d.p170b.p188c.p210w0.p217x;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p196c1.p197d.C2764a;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.l */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/l.class */
public final class C3165l implements AbstractC3155h0.AbstractC3158c {

    /* renamed from: a */
    public final int f11578a;

    /* renamed from: b */
    public final List<Format> f11579b;

    public C3165l(int i) {
        this(i, Collections.singletonList(Format.m18705a(null, "application/cea-608", 0, null)));
    }

    public C3165l(int i, List<Format> list) {
        this.f11578a = i;
        this.f11579b = list;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0.AbstractC3158c
    /* renamed from: a */
    public SparseArray<AbstractC3155h0> mo27649a() {
        return new SparseArray<>();
    }

    /* renamed from: a */
    public final C3142c0 m27646a(AbstractC3155h0.C3157b bVar) {
        return new C3142c0(m27644c(bVar));
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0.AbstractC3158c
    /* renamed from: a */
    public AbstractC3155h0 mo27647a(int i, AbstractC3155h0.C3157b bVar) {
        if (i == 2) {
            return new C3181w(new C3169p(m27645b(bVar)));
        }
        if (i == 3 || i == 4) {
            return new C3181w(new C3179u(bVar.f11521b));
        }
        C3181w wVar = null;
        C3181w wVar2 = null;
        C3181w wVar3 = null;
        C3140b0 b0Var = null;
        if (i == 15) {
            if (!m27648a(2)) {
                wVar3 = new C3181w(new C3164k(false, bVar.f11521b));
            }
            return wVar3;
        } else if (i == 17) {
            if (!m27648a(2)) {
                wVar2 = new C3181w(new C3178t(bVar.f11521b));
            }
            return wVar2;
        } else if (i == 21) {
            return new C3181w(new C3177s());
        } else {
            if (i == 27) {
                if (!m27648a(4)) {
                    wVar = new C3181w(new C3171q(m27646a(bVar), m27648a(1), m27648a(8)));
                }
                return wVar;
            } else if (i == 36) {
                return new C3181w(new C3175r(m27646a(bVar)));
            } else {
                if (i == 89) {
                    return new C3181w(new C3167n(bVar.f11522c));
                }
                if (i != 138) {
                    if (i == 172) {
                        return new C3181w(new C3160i(bVar.f11521b));
                    }
                    if (i != 129) {
                        if (i != 130) {
                            if (i == 134) {
                                if (!m27648a(16)) {
                                    b0Var = new C3140b0(new C3144d0());
                                }
                                return b0Var;
                            } else if (i != 135) {
                                return null;
                            }
                        } else if (!m27648a(64)) {
                            return null;
                        }
                    }
                    return new C3181w(new C3150g(bVar.f11521b));
                }
                return new C3181w(new C3166m(bVar.f11521b));
            }
        }
    }

    /* renamed from: a */
    public final boolean m27648a(int i) {
        return (i & this.f11578a) != 0;
    }

    /* renamed from: b */
    public final C3163j0 m27645b(AbstractC3155h0.C3157b bVar) {
        return new C3163j0(m27644c(bVar));
    }

    /* renamed from: c */
    public final List<Format> m27644c(AbstractC3155h0.C3157b bVar) {
        int i;
        String str;
        List<byte[]> list;
        if (m27648a(32)) {
            return this.f11579b;
        }
        C2904v vVar = new C2904v(bVar.f11523d);
        List<Format> list2 = this.f11579b;
        while (vVar.m28552a() > 0) {
            int r = vVar.m28524r();
            int r2 = vVar.m28524r();
            int c = vVar.m28543c();
            if (r == 134) {
                ArrayList arrayList = new ArrayList();
                int r3 = vVar.m28524r();
                int i2 = 0;
                while (true) {
                    list2 = arrayList;
                    if (i2 < (r3 & 31)) {
                        String b = vVar.m28544b(3);
                        int r4 = vVar.m28524r();
                        boolean z = true;
                        boolean z2 = (r4 & 128) != 0;
                        if (z2) {
                            i = r4 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte r5 = (byte) vVar.m28524r();
                        vVar.m28536f(1);
                        if (z2) {
                            if ((r5 & 64) == 0) {
                                z = false;
                            }
                            list = C2764a.m29080a(z);
                        } else {
                            list = null;
                        }
                        arrayList.add(Format.m18697a(null, str, null, -1, 0, b, i, null, Long.MAX_VALUE, list));
                        i2++;
                    }
                }
            }
            vVar.m28538e(c + r2);
        }
        return list2;
    }
}
