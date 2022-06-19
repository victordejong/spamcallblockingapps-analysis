package org.mistergroup.shouldianswer.p101ui.number_detail;

import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2128aq;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity.class */
public final class NumberDetailActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2710a f8026l = new C2710a(null);

    /* renamed from: m */
    private AbstractC2128aq f8027m;

    /* renamed from: org.mistergroup.shouldianswer.ui.number_detail.NumberDetailActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity$a.class */
    public static final class C2710a {
        private C2710a() {
        }

        public /* synthetic */ C2710a(C1691e c1691e) {
            this();
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().setFlags(512, 512);
        super.onCreate(bundle);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558472);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…t.number_detail_activity)");
        this.f8027m = (AbstractC2128aq) m5845a;
    }
}
