package org.mistergroup.shouldianswer.p101ui.number_reports;

import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2134aw;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/NumberReportsActivity.class */
public final class NumberReportsActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2751a f8205l = new C2751a(null);

    /* renamed from: m */
    private AbstractC2134aw f8206m;

    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.NumberReportsActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/NumberReportsActivity$a.class */
    public static final class C2751a {
        private C2751a() {
        }

        public /* synthetic */ C2751a(C1691e c1691e) {
            this();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(2130772005, 2130772006);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(2130772003, 2130772004);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558475);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte….number_reports_activity)");
        this.f8206m = (AbstractC2134aw) m5845a;
    }
}
