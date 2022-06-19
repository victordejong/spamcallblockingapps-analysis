package org.mistergroup.shouldianswer.p101ui.report_safe_number;

import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.ActivityC0711c;
import androidx.lifecycle.AbstractC0919u;
import androidx.lifecycle.C0925w;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2176ck;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberActivity.class */
public final class ReportSafeNumberActivity extends ActivityC2499a {

    /* renamed from: m */
    public static final C2805a f8356m = new C2805a(null);

    /* renamed from: l */
    public C2816b f8357l;

    /* renamed from: n */
    private AbstractC2176ck f8358n;

    /* renamed from: org.mistergroup.shouldianswer.ui.report_safe_number.ReportSafeNumberActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberActivity$a.class */
    public static final class C2805a {
        private C2805a() {
        }

        public /* synthetic */ C2805a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: m */
    public final C2816b m476m() {
        C2816b c2816b = this.f8357l;
        if (c2816b == null) {
            C1694h.m3116b("model");
        }
        return c2816b;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558495);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…ort_safe_number_activity)");
        this.f8358n = (AbstractC2176ck) m5845a;
        AbstractC0919u m5061a = C0925w.m5053a((ActivityC0711c) this).m5061a(C2816b.class);
        C1694h.m3122a((Object) m5061a, "ViewModelProviders.of(th…berViewModel::class.java)");
        this.f8357l = (C2816b) m5061a;
    }
}
