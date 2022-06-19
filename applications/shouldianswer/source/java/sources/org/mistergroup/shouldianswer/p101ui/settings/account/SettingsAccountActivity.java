package org.mistergroup.shouldianswer.p101ui.settings.account;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2188cw;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountActivity.class */
public final class SettingsAccountActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2883a f8551l = new C2883a(null);

    /* renamed from: m */
    private AbstractC2188cw f8552m;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/account/SettingsAccountActivity$a.class */
    public static final class C2883a {
        private C2883a() {
        }

        public /* synthetic */ C2883a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m360a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, SettingsAccountActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558504);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…ettings_account_activity)");
        this.f8552m = (AbstractC2188cw) m5845a;
    }
}
