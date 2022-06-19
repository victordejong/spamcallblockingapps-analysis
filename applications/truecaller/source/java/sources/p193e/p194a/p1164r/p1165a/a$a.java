package p193e.p194a.p1164r.p1165a;

import android.view.View;
/* renamed from: e.a.r.a.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/r/a/a$a.class */
public final class a$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f54723a;

    /* renamed from: b */
    public final /* synthetic */ Object f54724b;

    public a$a(int i, Object obj) {
        this.f54723a = i;
        this.f54724b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f54723a;
        if (i == 0) {
            ((a) this.f54724b).SA().Jj((a) this.f54724b);
        } else if (i != 1) {
            throw null;
        } else {
            AbstractC19709h abstractC19709h = (AbstractC19709h) ((a) this.f54724b).SA().f57683a;
            if (abstractC19709h == null) {
                return;
            }
            abstractC19709h.m12960T5();
        }
    }
}
