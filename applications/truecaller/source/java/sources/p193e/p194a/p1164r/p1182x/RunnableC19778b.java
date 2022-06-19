package p193e.p194a.p1164r.p1182x;

import android.os.Bundle;
import e.a.r.t.e;
/* renamed from: e.a.r.x.b */
/* loaded from: classes16-dex2jar.jar:e/a/r/x/b.class */
public final /* synthetic */ class RunnableC19778b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ n f54823a;

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = this.f54823a;
        if (!nVar.isAdded()) {
            return;
        }
        nVar.b0();
        if (nVar.p.m12854a()) {
            nVar.QA().Ia("Page_AdsChoices", (Bundle) null);
        } else if (nVar.m.m12894a()) {
            nVar.QA().Ia("Page_AccessContacts", (Bundle) null);
        } else if (!nVar.QA().e.containsKey("Page_DrawPermission") || ((e) nVar).f.mo13822k()) {
            nVar.QA().ra();
        } else {
            nVar.QA().Ia("Page_DrawPermission", (Bundle) null);
        }
    }
}
