package org.mistergroup.shouldianswer.p101ui.wizards.protection;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2166ca;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardPassiveSetupDoneActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupDoneActivity.class */
public final class ProtectionWizardPassiveSetupDoneActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C3059a f8955l = new C3059a(null);

    /* renamed from: m */
    private AbstractC2166ca f8956m;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardPassiveSetupDoneActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupDoneActivity$a.class */
    public static final class C3059a {
        private C3059a() {
        }

        public /* synthetic */ C3059a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m247a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, ProtectionWizardPassiveSetupDoneActivity.class));
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
        overridePendingTransition(2130772003, 2130772004);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558490);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…sive_setup_done_activity)");
        this.f8956m = (AbstractC2166ca) m5845a;
    }
}
