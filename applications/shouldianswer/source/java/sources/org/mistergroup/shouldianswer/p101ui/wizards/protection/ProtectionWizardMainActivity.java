package org.mistergroup.shouldianswer.p101ui.wizards.protection;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2159bu;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainActivity.class */
public final class ProtectionWizardMainActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C3045a f8920l = new C3045a(null);

    /* renamed from: m */
    private AbstractC2159bu f8921m;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainActivity$a.class */
    public static final class C3045a {
        private C3045a() {
        }

        public /* synthetic */ C3045a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m252a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, ProtectionWizardMainActivity.class));
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(2130772005, 2130772006);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a
    /* renamed from: k */
    public void mo242k() {
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558487);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…ion_wizard_main_activity)");
        this.f8921m = (AbstractC2159bu) m5845a;
    }
}
