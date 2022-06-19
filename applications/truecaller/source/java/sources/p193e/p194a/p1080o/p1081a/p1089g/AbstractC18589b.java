package p193e.p194a.p1080o.p1081a.p1089g;

import javax.inject.Named;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import s1.f0.v;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.o.a.g.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/b.class */
public abstract class AbstractC18589b<PV extends AbstractC18598f> extends AbstractC20574a<PV> implements AbstractC18597e<PV> {

    /* renamed from: d */
    public final f f52374d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC18589b(@Named("UI") f fVar) {
        super(fVar);
        l.e(fVar, "uiContext");
        this.f52374d = fVar;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: T */
    public void mo14745T(CharSequence charSequence) {
        AbstractC18598f abstractC18598f = (AbstractC18598f) this.f57683a;
        if (abstractC18598f != null) {
            boolean z = false;
            if (charSequence != null) {
                CharSequence g0 = v.g0(charSequence);
                z = false;
                if (g0 != null) {
                    z = false;
                    if (g0.length() > 0) {
                        z = true;
                    }
                }
            }
            abstractC18598f.mo14744C8(z);
        }
    }
}
