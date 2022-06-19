package org.mistergroup.shouldianswer.p101ui.settings.blocking;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2205dm;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingActivity.class */
public final class SettingsBlockingActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2943a f8738l = new C2943a(null);

    /* renamed from: m */
    private AbstractC2205dm f8739m;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingActivity$a.class */
    public static final class C2943a {
        private C2943a() {
        }

        public /* synthetic */ C2943a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m319a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, SettingsBlockingActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558512);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…ttings_blocking_activity)");
        this.f8739m = (AbstractC2205dm) m5845a;
    }
}
