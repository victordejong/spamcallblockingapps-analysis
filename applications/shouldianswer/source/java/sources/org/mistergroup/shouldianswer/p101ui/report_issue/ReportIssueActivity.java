package org.mistergroup.shouldianswer.p101ui.report_issue;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2172cg;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueActivity.class */
public final class ReportIssueActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2788a f8302l = new C2788a(null);

    /* renamed from: m */
    private AbstractC2172cg f8303m;

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueActivity$a.class */
    public static final class C2788a {
        private C2788a() {
        }

        public /* synthetic */ C2788a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m491a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, ReportIssueActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558493);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…ut.report_issue_activity)");
        this.f8303m = (AbstractC2172cg) m5845a;
    }
}
