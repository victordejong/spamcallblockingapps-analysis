package org.mistergroup.shouldianswer.p101ui.wizards.protection;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2155bq;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupDoneFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneFragment.class */
public final class ProtectionWizardActiveSetupDoneFragment extends AbstractC2510b {

    /* renamed from: b */
    public AbstractC2155bq f8903b;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupDoneFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneFragment$a.class */
    static final class View$OnClickListenerC3033a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8904a;

        View$OnClickListenerC3033a(ActivityC2499a activityC2499a) {
            this.f8904a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainFragment.f7560b.m751b(this.f8904a);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2155bq abstractC2155bq = this.f8903b;
        if (abstractC2155bq == null) {
            C1694h.m3116b("binding");
        }
        abstractC2155bq.f5746c.setOnClickListener(new View$OnClickListenerC3033a(activityC2499a));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        return null;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558485, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8903b = (AbstractC2155bq) m5843a;
        AbstractC2155bq abstractC2155bq = this.f8903b;
        if (abstractC2155bq == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2155bq.m5863d();
    }
}
