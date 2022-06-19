package org.mistergroup.shouldianswer.p101ui.wizards.protection;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2168cc;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardPassiveSetupDoneFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupDoneFragment.class */
public final class ProtectionWizardPassiveSetupDoneFragment extends AbstractC2510b {

    /* renamed from: b */
    public AbstractC2168cc f8957b;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardPassiveSetupDoneFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupDoneFragment$a.class */
    static final class View$OnClickListenerC3060a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8958a;

        View$OnClickListenerC3060a(ActivityC2499a activityC2499a) {
            this.f8958a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f8958a.finish();
            MainFragment.f7560b.m751b(this.f8958a);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2168cc abstractC2168cc = this.f8957b;
        if (abstractC2168cc == null) {
            C1694h.m3116b("binding");
        }
        abstractC2168cc.f5809c.setOnClickListener(new View$OnClickListenerC3060a(activityC2499a));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        return null;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558491, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8957b = (AbstractC2168cc) m5843a;
        AbstractC2168cc abstractC2168cc = this.f8957b;
        if (abstractC2168cc == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2168cc.m5863d();
    }
}
