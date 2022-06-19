package org.mistergroup.shouldianswer.p101ui.wizards.protection;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.EnumC2378a;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.p097a.AbstractC2170ce;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardPassiveSetupFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment.class */
public final class ProtectionWizardPassiveSetupFragment extends AbstractC2510b {

    /* renamed from: b */
    public AbstractC2170ce f8959b;

    /* renamed from: c */
    private boolean f8960c;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardPassiveSetupFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$a.class */
    static final class View$OnClickListenerC3061a implements View.OnClickListener {
        View$OnClickListenerC3061a() {
            ProtectionWizardPassiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butSystemPermissions");
            ProtectionWizardPassiveSetupFragment.this.requestPermissions(new String[]{"android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CONTACTS"}, 0);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardPassiveSetupFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$b.class */
    static final class View$OnClickListenerC3062b implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8963b;

        View$OnClickListenerC3062b(ActivityC2499a activityC2499a) {
            ProtectionWizardPassiveSetupFragment.this = r4;
            this.f8963b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butActionOverlay");
            try {
                ProtectionWizardPassiveSetupFragment.this.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + this.f8963b.getPackageName())));
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                Toast.makeText(this.f8963b, ProtectionWizardPassiveSetupFragment.this.getString(2131755184), 1).show();
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardPassiveSetupFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardPassiveSetupFragment$c.class */
    static final class View$OnClickListenerC3063c implements View.OnClickListener {
        View$OnClickListenerC3063c() {
            ProtectionWizardPassiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butActionOverlaySkip");
            LinearLayout linearLayout = ProtectionWizardPassiveSetupFragment.this.m244d().f5819g;
            C1694h.m3122a((Object) linearLayout, "binding.llActionOverlay");
            linearLayout.setVisibility(8);
            ProtectionWizardPassiveSetupFragment.this.m245a(true);
            ProtectionWizardPassiveSetupFragment.this.m243e();
        }
    }

    /* renamed from: e */
    public final void m243e() {
        boolean m110m = C3115o.f9175a.m110m();
        boolean m111l = C3115o.f9175a.m111l();
        AbstractC2170ce abstractC2170ce = this.f8959b;
        if (abstractC2170ce == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2170ce.f5820h;
        C1694h.m3122a((Object) linearLayout, "binding.llActionSystemPermissions");
        linearLayout.setVisibility(m110m ? 8 : 0);
        AbstractC2170ce abstractC2170ce2 = this.f8959b;
        if (abstractC2170ce2 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout2 = abstractC2170ce2.f5819g;
        C1694h.m3122a((Object) linearLayout2, "binding.llActionOverlay");
        linearLayout2.setVisibility(m111l ? 8 : 0);
        if (m110m) {
            if (!m111l && !this.f8960c) {
                return;
            }
            C2398ai.f6930a.m1291a(EnumC2393af.PASSIVE);
            C2398ai.f6930a.m1292a(EnumC2378a.POPUP);
            MyApp.f5480c.m1802a().m1804c();
            m859a().finish();
            ProtectionWizardPassiveSetupDoneActivity.f8955l.m247a(m859a());
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2170ce abstractC2170ce = this.f8959b;
        if (abstractC2170ce == null) {
            C1694h.m3116b("binding");
        }
        abstractC2170ce.f5818f.setOnClickListener(new View$OnClickListenerC3061a());
        AbstractC2170ce abstractC2170ce2 = this.f8959b;
        if (abstractC2170ce2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2170ce2.f5816d.setOnClickListener(new View$OnClickListenerC3062b(activityC2499a));
        AbstractC2170ce abstractC2170ce3 = this.f8959b;
        if (abstractC2170ce3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2170ce3.f5817e.setOnClickListener(new View$OnClickListenerC3063c());
    }

    /* renamed from: a */
    public final void m245a(boolean z) {
        this.f8960c = z;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2170ce abstractC2170ce = this.f8959b;
        if (abstractC2170ce == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2170ce.f5815c;
    }

    /* renamed from: d */
    public final AbstractC2170ce m244d() {
        AbstractC2170ce abstractC2170ce = this.f8959b;
        if (abstractC2170ce == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2170ce;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558492, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8959b = (AbstractC2170ce) m5843a;
        AbstractC2170ce abstractC2170ce = this.f8959b;
        if (abstractC2170ce == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2170ce.m5863d();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m243e();
    }
}
