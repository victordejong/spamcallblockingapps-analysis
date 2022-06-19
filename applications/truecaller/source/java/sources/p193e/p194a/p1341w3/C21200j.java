package p193e.p194a.p1341w3;

import com.truecaller.flashsdk.core.Theme;
import javax.inject.Inject;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p916i5.AbstractC15317d;
import s1.z.c.l;
/* renamed from: e.a.w3.j */
/* loaded from: classes9-dex2jar.jar:e/a/w3/j.class */
public final class C21200j implements AbstractC21199i {

    /* renamed from: a */
    public final AbstractC21631b f59393a;

    @Inject
    public C21200j(AbstractC21631b abstractC21631b) {
        l.e(abstractC21631b, "flashManager");
        this.f59393a = abstractC21631b;
    }

    @Override // p193e.p194a.p1341w3.AbstractC21199i
    /* renamed from: a */
    public void mo10143a(AbstractC15317d abstractC15317d) {
        l.e(abstractC15317d, "theme");
        this.f59393a.mo9299s(abstractC15317d instanceof AbstractC15317d.C15319b ? Theme.DARK : Theme.LIGHT);
    }
}
