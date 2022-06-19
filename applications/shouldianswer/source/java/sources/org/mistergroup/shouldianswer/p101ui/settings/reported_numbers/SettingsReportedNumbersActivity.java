package org.mistergroup.shouldianswer.p101ui.settings.reported_numbers;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2224ee;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersActivity.class */
public final class SettingsReportedNumbersActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C3015a f8837l = new C3015a(null);

    /* renamed from: m */
    private AbstractC2224ee f8838m;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersActivity$a.class */
    public static final class C3015a {
        private C3015a() {
        }

        public /* synthetic */ C3015a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m287a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, SettingsReportedNumbersActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558521);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…eported_numbers_activity)");
        this.f8838m = (AbstractC2224ee) m5845a;
    }
}
