package org.mistergroup.shouldianswer.p101ui.dialpad;

import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2253o;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadActivity.class */
public final class DialpadActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2518a f7402l = new C2518a(null);

    /* renamed from: m */
    private AbstractC2253o f7403m;

    /* renamed from: org.mistergroup.shouldianswer.ui.dialpad.DialpadActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/dialpad/DialpadActivity$a.class */
    public static final class C2518a {
        private C2518a() {
        }

        public /* synthetic */ C2518a(C1691e c1691e) {
            this();
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558450);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte….layout.dialpad_activity)");
        this.f7403m = (AbstractC2253o) m5845a;
    }
}
