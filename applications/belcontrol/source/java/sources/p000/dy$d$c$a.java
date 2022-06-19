package p000;

import android.view.View;
import dy;
import p000.C1324dz;
/* renamed from: dy$d$c$a */
/* loaded from: classes-dex2jar.jar:dy$d$c$a.class */
public class dy$d$c$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C1324dz.C1332i f6153a;

    /* renamed from: b */
    public final /* synthetic */ dy.d.c f6154b;

    public dy$d$c$a(dy.d.c cVar, C1324dz.C1332i c1332i) {
        this.f6154b = cVar;
        this.f6153a = c1332i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dy dyVar = this.f6154b.e.g;
        C1324dz.C1332i c1332i = this.f6153a;
        dyVar.l = c1332i;
        c1332i.m2345H();
        this.f6154b.b.setVisibility(4);
        this.f6154b.c.setVisibility(0);
    }
}
