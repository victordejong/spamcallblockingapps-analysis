package p193e.p194a.p1164r.p1172d;

import android.view.View;
import s1.z.b.l;
/* renamed from: e.a.r.d.a$b */
/* loaded from: classes16-dex2jar.jar:e/a/r/d/a$b.class */
public final class a$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ a f54797a;

    /* renamed from: b */
    public final /* synthetic */ l f54798b;

    public a$b(a aVar, l lVar) {
        this.f54797a = aVar;
        this.f54798b = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f54798b.d(Integer.valueOf(this.f54797a.getAdapterPosition()));
    }
}
