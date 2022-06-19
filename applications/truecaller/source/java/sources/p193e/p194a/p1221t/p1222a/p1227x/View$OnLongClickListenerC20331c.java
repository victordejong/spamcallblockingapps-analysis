package p193e.p194a.p1221t.p1222a.p1227x;

import android.view.View;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
/* renamed from: e.a.t.a.x.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/x/c.class */
public final class View$OnLongClickListenerC20331c implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ C20332d f57156a;

    /* renamed from: b */
    public final /* synthetic */ C20341i f57157b;

    public View$OnLongClickListenerC20331c(C20332d c20332d, C20341i c20341i) {
        this.f57156a = c20332d;
        this.f57157b = c20341i;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        C20332d c20332d = this.f57156a;
        AbstractC20300o abstractC20300o = c20332d.f57159b;
        C20341i c20341i = this.f57157b;
        return abstractC20300o.mo11245c(c20341i.f57178a, c20332d.f57158a.get(c20341i.getAdapterPosition()));
    }
}
