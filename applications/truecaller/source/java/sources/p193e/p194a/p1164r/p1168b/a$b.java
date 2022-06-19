package p193e.p194a.p1164r.p1168b;

import android.view.View;
/* renamed from: e.a.r.b.a$b */
/* loaded from: classes3-dex2jar.jar:e/a/r/b/a$b.class */
public final class a$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f54770a;

    /* renamed from: b */
    public final /* synthetic */ Object f54771b;

    /* renamed from: c */
    public final /* synthetic */ boolean f54772c;

    /* renamed from: d */
    public final /* synthetic */ boolean f54773d;

    public a$b(int i, Object obj, boolean z, boolean z2) {
        this.f54770a = i;
        this.f54771b = obj;
        this.f54772c = z;
        this.f54773d = z2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC19730i abstractC19730i;
        AbstractC19730i abstractC19730i2;
        int i = this.f54770a;
        if (i == 0) {
            n nVar = ((a) this.f54771b).f;
            if (!nVar.Ij() || !nVar.Kj() || (abstractC19730i = (AbstractC19730i) nVar.f57683a) == null) {
                return;
            }
            abstractC19730i.m12938K0();
        } else if (i != 1) {
            throw null;
        } else {
            n nVar2 = ((a) this.f54771b).f;
            if (!nVar2.Kj() || (abstractC19730i2 = (AbstractC19730i) nVar2.f57683a) == null) {
                return;
            }
            abstractC19730i2.m12938K0();
        }
    }
}
