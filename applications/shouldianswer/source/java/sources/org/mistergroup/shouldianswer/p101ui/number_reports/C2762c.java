package org.mistergroup.shouldianswer.p101ui.number_reports;

import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2141bc;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/c.class */
public final class C2762c extends RecyclerView.AbstractC0977w {

    /* renamed from: a */
    private final AbstractC2141bc f8232a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762c(AbstractC2141bc abstractC2141bc) {
        super(abstractC2141bc.m5863d());
        C1694h.m3117b(abstractC2141bc, "binding");
        this.f8232a = abstractC2141bc;
    }

    /* renamed from: a */
    public final void m537a(C2758a c2758a) {
        C1694h.m3117b(c2758a, "item");
        AppCompatTextView appCompatTextView = this.f8232a.f5699c;
        C1694h.m3122a((Object) appCompatTextView, "this.binding.tvText");
        appCompatTextView.setText(c2758a.m541b());
    }
}
