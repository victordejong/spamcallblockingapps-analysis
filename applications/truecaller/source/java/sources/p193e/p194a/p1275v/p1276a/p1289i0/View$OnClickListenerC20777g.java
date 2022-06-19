package p193e.p194a.p1275v.p1276a.p1289i0;

import android.view.View;
import com.truecaller.details_view.p162ui.numbers.SimData;
/* renamed from: e.a.v.a.i0.g */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/i0/g.class */
public final class View$OnClickListenerC20777g implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C20770a f58426a;

    /* renamed from: b */
    public final /* synthetic */ SimData f58427b;

    public View$OnClickListenerC20777g(C20770a c20770a, SimData simData) {
        this.f58426a = c20770a;
        this.f58427b = simData;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f58426a.f58409f.d(Integer.valueOf(this.f58427b.getSlot()));
    }
}
