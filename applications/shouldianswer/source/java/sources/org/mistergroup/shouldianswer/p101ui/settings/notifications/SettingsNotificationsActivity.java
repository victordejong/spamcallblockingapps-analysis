package org.mistergroup.shouldianswer.p101ui.settings.notifications;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2211ds;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsActivity.class */
public final class SettingsNotificationsActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2969a f8771l = new C2969a(null);

    /* renamed from: m */
    private AbstractC2211ds f8772m;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsActivity$a.class */
    public static final class C2969a {
        private C2969a() {
        }

        public /* synthetic */ C2969a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m309a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, SettingsNotificationsActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558515);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…s_notifications_activity)");
        this.f8772m = (AbstractC2211ds) m5845a;
    }
}
