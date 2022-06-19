package p000;

import android.view.View;
import ey;
/* renamed from: ey$f$a */
/* loaded from: classes-dex2jar.jar:ey$f$a.class */
public class ey$f$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ey.f f6475a;

    public ey$f$a(ey.f fVar) {
        this.f6475a = fVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ey eyVar = this.f6475a.d;
        if (eyVar.t != null) {
            eyVar.o.removeMessages(2);
        }
        ey.f fVar = this.f6475a;
        fVar.d.t = fVar.a;
        boolean z = !view.isActivated();
        int c = z ? 0 : this.f6475a.c();
        this.f6475a.d(z);
        this.f6475a.c.setProgress(c);
        this.f6475a.a.m2347F(c);
        this.f6475a.d.o.sendEmptyMessageDelayed(2, 500L);
    }
}
