package org.mistergroup.shouldianswer.p101ui.number_reports;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2143be;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/d.class */
public final class C2763d extends RecyclerView.AbstractC0977w {

    /* renamed from: a */
    private final AbstractC2143be f8233a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2763d(final C2766f c2766f, AbstractC2143be abstractC2143be) {
        super(abstractC2143be.m5863d());
        C1694h.m3117b(c2766f, "adapter");
        C1694h.m3117b(abstractC2143be, "binding");
        this.f8233a = abstractC2143be;
        View d = this.f8233a.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        d.getContext();
        this.f8233a.f5704c.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.number_reports.d.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractC1662a<C1775o> m535a = c2766f.m535a();
                if (m535a != null) {
                    m535a.mo3a();
                }
            }
        });
    }
}
