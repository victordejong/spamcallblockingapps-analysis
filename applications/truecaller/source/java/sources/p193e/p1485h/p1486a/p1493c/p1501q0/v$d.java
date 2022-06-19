package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: e.h.a.c.q0.v$d */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/v$d.class */
public class v$d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ v f63229a;

    public v$d(v vVar) {
        this.f63229a = vVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        v vVar = this.f63229a;
        if (vVar.h) {
            vVar.eB();
            return;
        }
        vVar.r = vVar.j.getLayoutParams();
        vVar.q = vVar.m.getLayoutParams();
        vVar.p = vVar.o.getLayoutParams();
        ((ViewGroup) vVar.m.getParent()).removeView(vVar.m);
        ((ViewGroup) vVar.j.getParent()).removeView(vVar.j);
        ((ViewGroup) vVar.o.getParent()).removeView(vVar.o);
        vVar.i.addContentView(vVar.m, new ViewGroup.LayoutParams(-1, -1));
        vVar.h = true;
        vVar.i.show();
    }
}
