package org.mistergroup.shouldianswer.components.p099a;

import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2114ac;
/* renamed from: org.mistergroup.shouldianswer.components.a.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/d.class */
public final class C2313d extends RecyclerView.AbstractC0977w {

    /* renamed from: a */
    private final AbstractC2114ac f6533a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2313d(AbstractC2114ac abstractC2114ac) {
        super(abstractC2114ac.m5863d());
        C1694h.m3117b(abstractC2114ac, "binding");
        this.f6533a = abstractC2114ac;
    }

    /* renamed from: a */
    public final void m1647a(C2302a c2302a) {
        C1694h.m3117b(c2302a, "item");
        AppCompatTextView appCompatTextView = this.f6533a.f5501c;
        C1694h.m3122a((Object) appCompatTextView, "binding.tvText");
        appCompatTextView.setText(c2302a.m1661c());
    }
}
