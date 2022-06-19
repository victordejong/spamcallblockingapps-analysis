package org.mistergroup.shouldianswer.p101ui.search;

import androidx.appcompat.widget.AppCompatTextView;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
import org.mistergroup.shouldianswer.p097a.AbstractC2114ac;
/* renamed from: org.mistergroup.shouldianswer.ui.search.h */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/h.class */
public final class C2865h extends C2334a.C2338d {

    /* renamed from: a */
    private final AbstractC2114ac f8525a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2865h(org.mistergroup.shouldianswer.p097a.AbstractC2114ac r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "binding"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r4
            android.view.View r0 = r0.m5863d()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "binding.root"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f8525a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.search.C2865h.<init>(org.mistergroup.shouldianswer.a.ac):void");
    }

    /* renamed from: a */
    public final void m368a(C2853d c2853d) {
        C1694h.m3117b(c2853d, "item");
        AppCompatTextView appCompatTextView = this.f8525a.f5501c;
        C1694h.m3122a((Object) appCompatTextView, "binding.tvText");
        appCompatTextView.setText(c2853d.m383f());
    }
}
