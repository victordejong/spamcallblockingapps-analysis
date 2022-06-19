package org.mistergroup.shouldianswer.p101ui.promo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2147bi;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoActivity.class */
public final class PromoActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2772a f8264l = new C2772a(null);

    /* renamed from: m */
    private AbstractC2147bi f8265m;

    /* renamed from: org.mistergroup.shouldianswer.ui.promo.PromoActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/promo/PromoActivity$a.class */
    public static final class C2772a {
        private C2772a() {
        }

        public /* synthetic */ C2772a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m521a(Context context) {
            C1694h.m3117b(context, "context");
            context.startActivity(new Intent(context, PromoActivity.class));
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
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558481);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte… R.layout.promo_activity)");
        this.f8265m = (AbstractC2147bi) m5845a;
    }
}
