package p000;

import android.view.View;
import p193e.p194a.p1275v.p1276a.p1289i0.C20770a;
/* renamed from: l */
/* loaded from: classes2-dex2jar.jar:l.class */
public final class View$OnClickListenerC25347l implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f70758a;

    /* renamed from: b */
    public final /* synthetic */ Object f70759b;

    public View$OnClickListenerC25347l(int i, Object obj) {
        this.f70758a = i;
        this.f70759b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f70758a;
        if (i == 0) {
            ((C20770a) this.f70759b).f58411h.invoke();
        } else if (i != 1) {
            throw null;
        } else {
            ((C20770a) this.f70759b).f58410g.invoke();
        }
    }
}
