package org.mistergroup.shouldianswer.p101ui.about;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2111a;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.about.AboutActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutActivity.class */
public final class AboutActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2501a f7365l = new C2501a(null);

    /* renamed from: m */
    private AbstractC2111a f7366m;

    /* renamed from: org.mistergroup.shouldianswer.ui.about.AboutActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/about/AboutActivity$a.class */
    public static final class C2501a {
        private C2501a() {
        }

        public /* synthetic */ C2501a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m862a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, AboutActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558428);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte… R.layout.about_activity)");
        this.f7366m = (AbstractC2111a) m5845a;
    }
}
