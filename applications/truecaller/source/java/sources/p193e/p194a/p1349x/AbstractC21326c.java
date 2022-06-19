package p193e.p194a.p1349x;

import javax.inject.Named;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1349x.AbstractC21334g;
import p193e.p194a.p717f.p734z.C13827k0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.x.c */
/* loaded from: classes9-dex2jar.jar:e/a/x/c.class */
public abstract class AbstractC21326c<T extends AbstractC21334g> extends AbstractC20574a<T> implements Object<T> {

    /* renamed from: d */
    public final f f59718d;

    /* renamed from: e */
    public final AbstractC21385w f59719e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC21326c(@Named("UI") f fVar, AbstractC21385w abstractC21385w) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC21385w, "ghostCallSettings");
        this.f59718d = fVar;
        this.f59719e = abstractC21385w;
    }

    /* renamed from: Ij */
    public static void m9888Ij(AbstractC21326c abstractC21326c, String str, String str2, String str3, int i, Object obj) {
        String str4 = null;
        String mo9799S0 = (i & 1) != 0 ? abstractC21326c.f59719e.mo9799S0() : null;
        String mo9784w = (i & 2) != 0 ? abstractC21326c.f59719e.mo9784w() : null;
        String mo9797V0 = (i & 4) != 0 ? abstractC21326c.f59719e.mo9797V0() : null;
        if (mo9797V0 != null) {
            str4 = C17891a1.C17902k.m15693B(mo9797V0);
        }
        C13827k0 c13827k0 = new C13827k0(mo9799S0, mo9784w, null, str4, false, false, false, false, false, false, null, false, false, false, 16244);
        AbstractC21334g abstractC21334g = (AbstractC21334g) abstractC21326c.f57683a;
        if (abstractC21334g != null) {
            abstractC21334g.mo9883C3(c13827k0);
        }
    }
}
