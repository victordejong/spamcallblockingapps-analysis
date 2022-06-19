package org.mistergroup.shouldianswer.p101ui.report_safe_number;

import androidx.lifecycle.AbstractC0919u;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.NumberReport;
/* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/b.class */
public final class C2816b extends AbstractC0919u {

    /* renamed from: a */
    public NumberReport f8380a;

    /* renamed from: b */
    private NumberReport.C2376c f8381b = new NumberReport.C2376c(null, null, null, null, 15, null);

    /* renamed from: a */
    public final void m460a(NumberReport.C2376c c2376c) {
        C1694h.m3117b(c2376c, "<set-?>");
        this.f8381b = c2376c;
    }

    /* renamed from: a */
    public final void m459a(NumberReport numberReport) {
        C1694h.m3117b(numberReport, "<set-?>");
        this.f8380a = numberReport;
    }

    /* renamed from: b */
    public final NumberReport m458b() {
        NumberReport numberReport = this.f8380a;
        if (numberReport == null) {
            C1694h.m3116b("numberReport");
        }
        return numberReport;
    }

    /* renamed from: c */
    public final NumberReport.C2376c m457c() {
        return this.f8381b;
    }
}
