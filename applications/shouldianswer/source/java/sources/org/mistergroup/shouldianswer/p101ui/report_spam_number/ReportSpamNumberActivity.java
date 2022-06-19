package org.mistergroup.shouldianswer.p101ui.report_spam_number;

import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.ActivityC0711c;
import androidx.lifecycle.AbstractC0919u;
import androidx.lifecycle.C0925w;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2180co;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity.class */
public final class ReportSpamNumberActivity extends ActivityC2499a {

    /* renamed from: m */
    public static final C2817a f8382m = new C2817a(null);

    /* renamed from: l */
    public C2832b f8383l;

    /* renamed from: n */
    private AbstractC2180co f8384n;

    /* renamed from: org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity$a.class */
    public static final class C2817a {
        private C2817a() {
        }

        public /* synthetic */ C2817a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: m */
    public final C2832b m456m() {
        C2832b c2832b = this.f8383l;
        if (c2832b == null) {
            C1694h.m3116b("model");
        }
        return c2832b;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558497);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…ort_spam_number_activity)");
        this.f8384n = (AbstractC2180co) m5845a;
        AbstractC0919u m5061a = C0925w.m5053a((ActivityC0711c) this).m5061a(C2832b.class);
        C1694h.m3122a((Object) m5061a, "ViewModelProviders.of(th…berViewModel::class.java)");
        this.f8383l = (C2832b) m5061a;
    }
}
