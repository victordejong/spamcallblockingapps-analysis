package p193e.p194a.p1049l4;

import java.util.Arrays;
import java.util.Objects;
import java.util.Set;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p372b0.p373a.p386s.AbstractC8332d;
import p193e.p194a.p372b0.p373a.p386s.C8329a;
import s1.u.i;
import s1.u.u;
import s1.z.c.l;
/* renamed from: e.a.l4.d */
/* loaded from: classes12-dex2jar.jar:e/a/l4/d.class */
public final class C17408d extends C8329a implements AbstractC17405c.AbstractC17407b {

    /* renamed from: e */
    public AbstractC17405c.AbstractC17406a f48750e;

    /* renamed from: f */
    public final AbstractC19233h0 f48751f;

    /* renamed from: g */
    public final AbstractC17405c f48752g;

    /* renamed from: h */
    public final AbstractC19222c f48753h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17408d(AbstractC19233h0 abstractC19233h0, AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c) {
        super(abstractC19233h0);
        l.e(abstractC19233h0, "themedResourceProvider");
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19222c, "clock");
        this.f48751f = abstractC19233h0;
        this.f48752g = abstractC17405c;
        this.f48753h = abstractC19222c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Jj */
    public void mo9029Y0(AbstractC8332d abstractC8332d) {
        l.e(abstractC8332d, "presenterView");
        l.e(abstractC8332d, "presenterView");
        this.f57683a = abstractC8332d;
        m28667Ij(this.f25638b);
        AbstractC17405c.AbstractC17406a abstractC17406a = this.f48750e;
        if (abstractC17406a != null) {
            if (!(!abstractC17406a.isAttached())) {
                abstractC17406a = null;
            }
            if (abstractC17406a == null) {
                return;
            }
            abstractC17406a.mo9915b(this);
        }
    }

    /* renamed from: Kj */
    public final void m16140Kj(String str) {
        if (str == null) {
            m16139Lj(u.a);
        } else {
            m16139Lj(i.y0(str));
        }
    }

    /* renamed from: Lj */
    public final void m16139Lj(Set<String> set) {
        l.e(set, "identifierSet");
        mo9914ki(null);
        AbstractC17405c.AbstractC17406a abstractC17406a = this.f48750e;
        if (abstractC17406a != null) {
            abstractC17406a.mo9916a();
        }
        this.f48750e = null;
        if (!this.f48752g.mo9923a() || !(!set.isEmpty())) {
            return;
        }
        AbstractC17405c abstractC17405c = this.f48752g;
        Object[] array = set.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        AbstractC17405c.AbstractC17406a mo9921c = abstractC17405c.mo9921c((String[]) Arrays.copyOf(strArr, strArr.length));
        this.f48750e = mo9921c;
        if (mo9921c == null) {
            return;
        }
        mo9921c.mo9915b(this);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC17405c.AbstractC17406a abstractC17406a = null;
        this.f57683a = null;
        AbstractC17405c.AbstractC17406a abstractC17406a2 = this.f48750e;
        if (abstractC17406a2 != null) {
            if (abstractC17406a2.isAttached()) {
                abstractC17406a = abstractC17406a2;
            }
            if (abstractC17406a == null) {
                return;
            }
            abstractC17406a.mo9916a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011e  */
    @Override // p193e.p194a.p1049l4.AbstractC17405c.AbstractC17407b
    /* renamed from: ki */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9914ki(p193e.p194a.p1049l4.C17409e r8) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17408d.mo9914ki(e.a.l4.e):void");
    }
}
