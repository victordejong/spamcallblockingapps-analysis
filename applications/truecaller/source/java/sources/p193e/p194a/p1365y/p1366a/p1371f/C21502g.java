package p193e.p194a.p1365y.p1366a.p1371f;

import com.truecaller.flashsdk.models.FlashContact;
import java.util.List;
import s1.z.c.l;
/* renamed from: e.a.y.a.f.g */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/f/g.class */
public final class C21502g extends AbstractC21501f {

    /* renamed from: b */
    public String f60039b = "";

    @Override // p193e.p194a.p1365y.p1366a.p1371f.AbstractC21501f
    /* renamed from: Ja */
    public void mo9586Ja() {
        AbstractC21500e abstractC21500e = (AbstractC21500e) this.f57683a;
        if (abstractC21500e != null) {
            abstractC21500e.close();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.y.a.f.e, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC21500e) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        List<FlashContact> mo9587xk = r0.mo9587xk();
        if (mo9587xk == null) {
            r0.close();
            return;
        }
        String mo9588ku = r0.mo9588ku();
        this.f60039b = mo9588ku;
        r0.mo9589Ic(mo9587xk, mo9588ku);
    }
}
