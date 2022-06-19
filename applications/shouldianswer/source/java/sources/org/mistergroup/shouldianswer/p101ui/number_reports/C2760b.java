package org.mistergroup.shouldianswer.p101ui.number_reports;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2136ay;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/b.class */
public final class C2760b extends RecyclerView.AbstractC0977w {

    /* renamed from: a */
    private final C2766f f8229a;

    /* renamed from: b */
    private final AbstractC2136ay f8230b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.b$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/b$a.class */
    public static final class View$OnClickListenerC2761a implements View.OnClickListener {
        View$OnClickListenerC2761a() {
            C2760b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC1662a<C1775o> m531b = C2760b.this.m539a().m531b();
            if (m531b != null) {
                m531b.mo3a();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2760b(C2766f c2766f, AbstractC2136ay abstractC2136ay) {
        super(abstractC2136ay.m5863d());
        C1694h.m3117b(c2766f, "adapter");
        C1694h.m3117b(abstractC2136ay, "binding");
        this.f8229a = c2766f;
        this.f8230b = abstractC2136ay;
    }

    /* renamed from: a */
    public final C2766f m539a() {
        return this.f8229a;
    }

    /* renamed from: a */
    public final void m538a(C2758a c2758a) {
        C1694h.m3117b(c2758a, "item");
        this.f8230b.f5683c.setOnClickListener(new View$OnClickListenerC2761a());
    }
}
