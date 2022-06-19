package org.mistergroup.shouldianswer.p101ui.settings.allowed_numbers;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2195dc;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersActivity.class */
public final class SettingsAllowedNumbersActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2905a f8606l = new C2905a(null);

    /* renamed from: m */
    private AbstractC2195dc f8607m;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersActivity$a.class */
    public static final class C2905a {
        private C2905a() {
        }

        public /* synthetic */ C2905a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m349a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, SettingsAllowedNumbersActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558507);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…allowed_numbers_activity)");
        this.f8607m = (AbstractC2195dc) m5845a;
    }
}
