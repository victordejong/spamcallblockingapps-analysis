package org.mistergroup.shouldianswer.p101ui.wizards.protection;

import android.app.role.RoleManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.EnumC2378a;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.p097a.AbstractC2157bs;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
/* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment.class */
public final class ProtectionWizardActiveSetupFragment extends AbstractC2510b {

    /* renamed from: b */
    public AbstractC2157bs f8905b;

    /* renamed from: c */
    private boolean f8906c;

    /* renamed from: d */
    private EnumC2378a f8907d = EnumC2378a.UNKNOWN;

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$a.class */
    static final class View$OnClickListenerC3034a implements View.OnClickListener {
        View$OnClickListenerC3034a() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.checkIncallScreen");
            ProtectionWizardActiveSetupFragment.this.m258a(EnumC2378a.IN_CALL_SCREEN);
            ProtectionWizardActiveSetupFragment.this.m254d().f5762m.setChecked(false);
            ProtectionWizardActiveSetupFragment.this.m253e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$b.class */
    static final class View$OnClickListenerC3035b implements View.OnClickListener {
        View$OnClickListenerC3035b() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butAlertsTypeInfo");
            Context context = ProtectionWizardActiveSetupFragment.this.getContext();
            if (context != null) {
                C3078ac c3078ac = C3078ac.f8981a;
                C1694h.m3122a((Object) context, "it");
                String string = ProtectionWizardActiveSetupFragment.this.getString(2131755325);
                C1694h.m3122a((Object) string, "getString(R.string.help_…ich_alert_type_to_choose)");
                c3078ac.m220a(context, string);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$c.class */
    static final class View$OnClickListenerC3036c implements View.OnClickListener {
        View$OnClickListenerC3036c() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.checkPopup");
            ProtectionWizardActiveSetupFragment.this.m254d().f5761l.setChecked(false);
            ProtectionWizardActiveSetupFragment.this.m258a(EnumC2378a.POPUP);
            ProtectionWizardActiveSetupFragment.this.m253e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d.class */
    public static final class View$OnClickListenerC3037d implements View.OnClickListener {
        View$OnClickListenerC3037d() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butActionDefaultPhoneApp");
            if (Build.VERSION.SDK_INT < 29) {
                new DialogInterfaceC0090d.C0091a(ProtectionWizardActiveSetupFragment.this.m859a()).m7920a(ProtectionWizardActiveSetupFragment.this.getString(2131755332)).m7913b(ProtectionWizardActiveSetupFragment.this.getString(2131755333)).m7919a(ProtectionWizardActiveSetupFragment.this.getString(2131755420), new DialogInterface.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment.d.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        C1694h.m3117b(dialogInterface, "dialogInterface");
                        C3115o.f9175a.m123a(ProtectionWizardActiveSetupFragment.this.m859a());
                    }
                }).m7912b(ProtectionWizardActiveSetupFragment.this.getString(2131755219), null).m7911c();
                return;
            }
            Context context = ProtectionWizardActiveSetupFragment.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            Object systemService = context.getSystemService("role");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.role.RoleManager");
            }
            Intent createRequestRoleIntent = ((RoleManager) systemService).createRequestRoleIntent("android.app.role.DIALER");
            C1694h.m3122a((Object) createRequestRoleIntent, "roleManager.createReques…(RoleManager.ROLE_DIALER)");
            ProtectionWizardActiveSetupFragment.this.startActivityForResult(createRequestRoleIntent, 1);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$e.class */
    static final class View$OnClickListenerC3039e implements View.OnClickListener {
        View$OnClickListenerC3039e() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butActionCallScreening");
            if (Build.VERSION.SDK_INT >= 29) {
                Object systemService = ProtectionWizardActiveSetupFragment.this.m859a().getSystemService("role");
                if (systemService == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.app.role.RoleManager");
                }
                Intent createRequestRoleIntent = ((RoleManager) systemService).createRequestRoleIntent("android.app.role.CALL_SCREENING");
                C1694h.m3122a((Object) createRequestRoleIntent, "roleManager.createReques…ager.ROLE_CALL_SCREENING)");
                ProtectionWizardActiveSetupFragment.this.startActivityForResult(createRequestRoleIntent, 1);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$f.class */
    static final class View$OnClickListenerC3040f implements View.OnClickListener {
        View$OnClickListenerC3040f() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butActionSystemPermissions");
            ProtectionWizardActiveSetupFragment.this.requestPermissions(new String[]{"android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CONTACTS"}, 0);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$g.class */
    static final class View$OnClickListenerC3041g implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8916b;

        View$OnClickListenerC3041g(ActivityC2499a activityC2499a) {
            ProtectionWizardActiveSetupFragment.this = r4;
            this.f8916b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butActionOverlay");
            try {
                ProtectionWizardActiveSetupFragment.this.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + this.f8916b.getPackageName())));
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                Toast.makeText(this.f8916b, ProtectionWizardActiveSetupFragment.this.getString(2131755184), 1).show();
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$h.class */
    static final class View$OnClickListenerC3042h implements View.OnClickListener {
        View$OnClickListenerC3042h() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butActionOverlaySkip");
            LinearLayout linearLayout = ProtectionWizardActiveSetupFragment.this.m254d().f5765p;
            C1694h.m3122a((Object) linearLayout, "binding.llActionOverlay");
            linearLayout.setVisibility(8);
            ProtectionWizardActiveSetupFragment.this.m256a(true);
            ProtectionWizardActiveSetupFragment.this.m253e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$i.class */
    static final class View$OnClickListenerC3043i implements View.OnClickListener {
        View$OnClickListenerC3043i() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butInCallScreenMoreInfo");
            new DialogInterfaceC0090d.C0091a(ProtectionWizardActiveSetupFragment.this.m859a()).m7915b(2131755575).m7919a(ProtectionWizardActiveSetupFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardActiveSetupFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$j.class */
    static final class View$OnClickListenerC3044j implements View.OnClickListener {
        View$OnClickListenerC3044j() {
            ProtectionWizardActiveSetupFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("ProtectionWizard.butPopupMoreInfo");
            new DialogInterfaceC0090d.C0091a(ProtectionWizardActiveSetupFragment.this.m859a()).m7915b(2131755341).m7919a(ProtectionWizardActiveSetupFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: e */
    public final void m253e() {
        boolean z;
        C3104j.m157a(C3104j.f9124a, "ProtectionWizard.updateUI", (String) null, 2, (Object) null);
        if (this.f8907d == EnumC2378a.UNKNOWN) {
            AbstractC2157bs abstractC2157bs = this.f8905b;
            if (abstractC2157bs == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout = abstractC2157bs.f5764o;
            C1694h.m3122a((Object) linearLayout, "binding.llActionDefaultPhoneApp");
            linearLayout.setVisibility(8);
            AbstractC2157bs abstractC2157bs2 = this.f8905b;
            if (abstractC2157bs2 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout2 = abstractC2157bs2.f5766q;
            C1694h.m3122a((Object) linearLayout2, "binding.llActionSystemPermissions");
            linearLayout2.setVisibility(8);
            AbstractC2157bs abstractC2157bs3 = this.f8905b;
            if (abstractC2157bs3 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout3 = abstractC2157bs3.f5763n;
            C1694h.m3122a((Object) linearLayout3, "binding.llActionCallScreening");
            linearLayout3.setVisibility(8);
            AbstractC2157bs abstractC2157bs4 = this.f8905b;
            if (abstractC2157bs4 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout4 = abstractC2157bs4.f5765p;
            C1694h.m3122a((Object) linearLayout4, "binding.llActionOverlay");
            linearLayout4.setVisibility(8);
            AbstractC2157bs abstractC2157bs5 = this.f8905b;
            if (abstractC2157bs5 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView = abstractC2157bs5.f5770u;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvRequiredActions");
            appCompatTextView.setVisibility(8);
            C3104j.m157a(C3104j.f9124a, "Hide permissions due no AlertType choosed", (String) null, 2, (Object) null);
            return;
        }
        boolean z2 = !C2405c.f6946b.m1215C() && (Build.VERSION.SDK_INT < 29 || this.f8907d == EnumC2378a.IN_CALL_SCREEN);
        boolean z3 = Build.VERSION.SDK_INT >= 29 && !C2405c.f6946b.m1214D() && this.f8907d == EnumC2378a.POPUP;
        boolean z4 = ((C2405c.f6946b.m1215C() && this.f8907d == EnumC2378a.IN_CALL_SCREEN) || (C2405c.f6946b.m1214D() && this.f8907d == EnumC2378a.POPUP)) && !C3115o.f9175a.m110m();
        boolean z5 = z3;
        if (z3) {
            z5 = z3;
            if (C2405c.f6946b.m1215C()) {
                z5 = false;
            }
        }
        boolean z6 = !z2 && !z5 && !z4;
        AbstractC2157bs abstractC2157bs6 = this.f8905b;
        if (abstractC2157bs6 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout5 = abstractC2157bs6.f5764o;
        C1694h.m3122a((Object) linearLayout5, "binding.llActionDefaultPhoneApp");
        linearLayout5.setVisibility(z2 ? 0 : 8);
        AbstractC2157bs abstractC2157bs7 = this.f8905b;
        if (abstractC2157bs7 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout6 = abstractC2157bs7.f5763n;
        C1694h.m3122a((Object) linearLayout6, "binding.llActionCallScreening");
        linearLayout6.setVisibility(z5 ? 0 : 8);
        AbstractC2157bs abstractC2157bs8 = this.f8905b;
        if (abstractC2157bs8 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout7 = abstractC2157bs8.f5766q;
        C1694h.m3122a((Object) linearLayout7, "binding.llActionSystemPermissions");
        linearLayout7.setVisibility(z4 ? 0 : 8);
        if (this.f8907d == EnumC2378a.POPUP) {
            boolean m111l = C3115o.f9175a.m111l();
            AbstractC2157bs abstractC2157bs9 = this.f8905b;
            if (abstractC2157bs9 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout8 = abstractC2157bs9.f5765p;
            C1694h.m3122a((Object) linearLayout8, "binding.llActionOverlay");
            int i = 8;
            if (!m111l) {
                i = this.f8906c ? 8 : 0;
            }
            linearLayout8.setVisibility(i);
            z = z6;
            if (!m111l) {
                z = z6;
                if (!this.f8906c) {
                    z = false;
                }
            }
        } else {
            AbstractC2157bs abstractC2157bs10 = this.f8905b;
            if (abstractC2157bs10 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout9 = abstractC2157bs10.f5765p;
            C1694h.m3122a((Object) linearLayout9, "binding.llActionOverlay");
            linearLayout9.setVisibility(8);
            z = z6;
        }
        if (z) {
            C3104j.m157a(C3104j.f9124a, "We can continue to next screen", (String) null, 2, (Object) null);
            C2398ai.f6930a.m1291a(EnumC2393af.ACTIVE);
            C2398ai.f6930a.m1292a(this.f8907d);
            MyApp.f5480c.m1802a().m1804c();
            m859a().finish();
            ProtectionWizardActiveSetupDoneActivity.f8901l.m259a(m859a());
            return;
        }
        AbstractC2157bs abstractC2157bs11 = this.f8905b;
        if (abstractC2157bs11 == null) {
            C1694h.m3116b("binding");
        }
        AppCompatTextView appCompatTextView2 = abstractC2157bs11.f5770u;
        C1694h.m3122a((Object) appCompatTextView2, "binding.tvRequiredActions");
        appCompatTextView2.setVisibility(0);
    }

    /* renamed from: a */
    public final void m258a(EnumC2378a enumC2378a) {
        C1694h.m3117b(enumC2378a, "<set-?>");
        this.f8907d = enumC2378a;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2157bs abstractC2157bs = this.f8905b;
        if (abstractC2157bs == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs.f5761l.setOnClickListener(new View$OnClickListenerC3034a());
        AbstractC2157bs abstractC2157bs2 = this.f8905b;
        if (abstractC2157bs2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs2.f5762m.setOnClickListener(new View$OnClickListenerC3036c());
        AbstractC2157bs abstractC2157bs3 = this.f8905b;
        if (abstractC2157bs3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs3.f5754e.setOnClickListener(new View$OnClickListenerC3037d());
        AbstractC2157bs abstractC2157bs4 = this.f8905b;
        if (abstractC2157bs4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs4.f5753d.setOnClickListener(new View$OnClickListenerC3039e());
        AbstractC2157bs abstractC2157bs5 = this.f8905b;
        if (abstractC2157bs5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs5.f5757h.setOnClickListener(new View$OnClickListenerC3040f());
        AbstractC2157bs abstractC2157bs6 = this.f8905b;
        if (abstractC2157bs6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs6.f5755f.setOnClickListener(new View$OnClickListenerC3041g(activityC2499a));
        AbstractC2157bs abstractC2157bs7 = this.f8905b;
        if (abstractC2157bs7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs7.f5756g.setOnClickListener(new View$OnClickListenerC3042h());
        AbstractC2157bs abstractC2157bs8 = this.f8905b;
        if (abstractC2157bs8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs8.f5759j.setOnClickListener(new View$OnClickListenerC3043i());
        AbstractC2157bs abstractC2157bs9 = this.f8905b;
        if (abstractC2157bs9 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs9.f5760k.setOnClickListener(new View$OnClickListenerC3044j());
        AbstractC2157bs abstractC2157bs10 = this.f8905b;
        if (abstractC2157bs10 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2157bs10.f5758i.setOnClickListener(new View$OnClickListenerC3035b());
        m253e();
    }

    /* renamed from: a */
    public final void m256a(boolean z) {
        this.f8906c = z;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2157bs abstractC2157bs = this.f8905b;
        if (abstractC2157bs == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2157bs.f5752c;
    }

    /* renamed from: d */
    public final AbstractC2157bs m254d() {
        AbstractC2157bs abstractC2157bs = this.f8905b;
        if (abstractC2157bs == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2157bs;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558486, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8905b = (AbstractC2157bs) m5843a;
        AbstractC2157bs abstractC2157bs = this.f8905b;
        if (abstractC2157bs == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2157bs.m5863d();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m253e();
    }
}
