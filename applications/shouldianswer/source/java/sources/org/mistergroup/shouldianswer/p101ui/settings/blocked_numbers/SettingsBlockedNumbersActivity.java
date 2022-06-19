package org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2201di;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersActivity.class */
public final class SettingsBlockedNumbersActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2924a f8672l = new C2924a(null);

    /* renamed from: m */
    private AbstractC2201di f8673m;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersActivity$a.class */
    public static final class C2924a {
        private C2924a() {
        }

        public /* synthetic */ C2924a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m334a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, SettingsBlockedNumbersActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558510);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…blocked_numbers_activity)");
        this.f8673m = (AbstractC2201di) m5845a;
    }
}
