package org.mistergroup.shouldianswer.p101ui.debug;

import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2247i;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.debug.DebugActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/debug/DebugActivity.class */
public final class DebugActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2516a f7398l = new C2516a(null);

    /* renamed from: m */
    private AbstractC2247i f7399m;

    /* renamed from: org.mistergroup.shouldianswer.ui.debug.DebugActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/debug/DebugActivity$a.class */
    public static final class C2516a {
        private C2516a() {
        }

        public /* synthetic */ C2516a(C1691e c1691e) {
            this();
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558433);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte… R.layout.debug_activity)");
        this.f7399m = (AbstractC2247i) m5845a;
    }
}
