package org.mistergroup.shouldianswer.p101ui.wizards.welcome;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2234eo;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.welcome.WelcomeActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity.class */
public final class WelcomeActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C3064a f8965l = new C3064a(null);

    /* renamed from: m */
    private AbstractC2234eo f8966m;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.welcome.WelcomeActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeActivity$a.class */
    public static final class C3064a {
        private C3064a() {
        }

        public /* synthetic */ C3064a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m241a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, WelcomeActivity.class));
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a
    /* renamed from: k */
    public void mo242k() {
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558527);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte….layout.welcome_activity)");
        this.f8966m = (AbstractC2234eo) m5845a;
    }
}
