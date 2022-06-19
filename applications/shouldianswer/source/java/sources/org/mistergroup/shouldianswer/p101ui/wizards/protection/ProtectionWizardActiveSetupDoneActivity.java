package org.mistergroup.shouldianswer.p101ui.wizards.protection;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2153bo;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupDoneActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneActivity.class */
public final class ProtectionWizardActiveSetupDoneActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C3032a f8901l = new C3032a(null);

    /* renamed from: m */
    private AbstractC2153bo f8902m;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupDoneActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneActivity$a.class */
    public static final class C3032a {
        private C3032a() {
        }

        public /* synthetic */ C3032a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m259a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, ProtectionWizardActiveSetupDoneActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558484);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…tive_setup_done_activity)");
        this.f8902m = (AbstractC2153bo) m5845a;
    }
}
