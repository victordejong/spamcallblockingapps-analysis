package org.mistergroup.shouldianswer.p101ui.settings.protection;

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
import android.widget.RadioButton;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.EnumC2378a;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.p097a.AbstractC2222ec;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.services.MonitoringService;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment.class */
public final class SettingsProtectionFragment extends AbstractC2510b {

    /* renamed from: f */
    private boolean f8807f;

    /* renamed from: g */
    private AbstractC2222ec f8808g;

    /* renamed from: b */
    private EnumC2393af f8803b = EnumC2393af.UNKNOWN;

    /* renamed from: c */
    private EnumC2378a f8804c = EnumC2378a.UNKNOWN;

    /* renamed from: d */
    private EnumC2393af f8805d = EnumC2393af.UNKNOWN;

    /* renamed from: e */
    private EnumC2378a f8806e = EnumC2378a.UNKNOWN;

    /* renamed from: h */
    private final int f8809h = 1;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$a.class */
    static final class View$OnClickListenerC2990a implements View.OnClickListener {
        View$OnClickListenerC2990a() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.checkActiveProtection");
            SettingsProtectionFragment.this.f8807f = true;
            SettingsProtectionFragment.this.f8803b = EnumC2393af.ACTIVE;
            SettingsProtectionFragment.this.m292d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$b.class */
    static final class View$OnClickListenerC2991b implements View.OnClickListener {
        View$OnClickListenerC2991b() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butActionCallScreening");
            if (Build.VERSION.SDK_INT >= 29) {
                Context context = SettingsProtectionFragment.this.getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                Object systemService = context.getSystemService("role");
                if (systemService == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.app.role.RoleManager");
                }
                Intent createRequestRoleIntent = ((RoleManager) systemService).createRequestRoleIntent("android.app.role.CALL_SCREENING");
                C1694h.m3122a((Object) createRequestRoleIntent, "roleManager.createReques…ager.ROLE_CALL_SCREENING)");
                SettingsProtectionFragment.this.startActivityForResult(createRequestRoleIntent, 1);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$c.class */
    static final class View$OnClickListenerC2992c implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8813b;

        View$OnClickListenerC2992c(ActivityC2499a activityC2499a) {
            SettingsProtectionFragment.this = r4;
            this.f8813b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butActionOverlay");
            SettingsProtectionFragment.this.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + this.f8813b.getPackageName())));
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$d.class */
    static final class View$OnClickListenerC2993d implements View.OnClickListener {
        View$OnClickListenerC2993d() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsProtectionFragment.this.requestPermissions(new String[]{"android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CONTACTS"}, 0);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$e.class */
    static final class View$OnClickListenerC2994e implements View.OnClickListener {
        View$OnClickListenerC2994e() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7913b(SettingsProtectionFragment.this.getString(2131755493)).m7919a(SettingsProtectionFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$f.class */
    static final class View$OnClickListenerC2995f implements View.OnClickListener {
        View$OnClickListenerC2995f() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butActiveProtectionMoreInfo");
            new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7915b(2131755569).m7919a(SettingsProtectionFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$g.class */
    static final class View$OnClickListenerC2996g implements View.OnClickListener {
        View$OnClickListenerC2996g() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butPassiveProtectionMoreInfo");
            new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7915b(2131755299).m7919a(SettingsProtectionFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$h.class */
    static final class View$OnClickListenerC2997h implements View.OnClickListener {
        View$OnClickListenerC2997h() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butNoProtectionMoreInfo");
            new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7915b(2131755558).m7919a(SettingsProtectionFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$i.class */
    static final class View$OnClickListenerC2998i implements View.OnClickListener {
        View$OnClickListenerC2998i() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butInCallScreenMoreInfo");
            new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7915b(2131755575).m7919a(SettingsProtectionFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$j.class */
    static final class View$OnClickListenerC2999j implements View.OnClickListener {
        View$OnClickListenerC2999j() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butPopupMoreInfo");
            new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7915b(2131755341).m7919a(SettingsProtectionFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$k.class */
    static final class View$OnClickListenerC3000k implements View.OnClickListener {
        View$OnClickListenerC3000k() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butSystemNotificationMoreInfo");
            new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7915b(2131755342).m7919a(SettingsProtectionFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$l.class */
    static final class View$OnClickListenerC3001l implements View.OnClickListener {
        View$OnClickListenerC3001l() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.checkPasiveProtection");
            SettingsProtectionFragment.this.f8807f = true;
            SettingsProtectionFragment.this.f8803b = EnumC2393af.PASSIVE;
            SettingsProtectionFragment.this.m292d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$m.class */
    static final class View$OnClickListenerC3002m implements View.OnClickListener {
        View$OnClickListenerC3002m() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butActionPermissionsMoreInfo");
            new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7915b(2131755561).m7919a(SettingsProtectionFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$n */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$n.class */
    static final class View$OnClickListenerC3003n implements View.OnClickListener {
        View$OnClickListenerC3003n() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butProtectionTypeInfo");
            Context context = SettingsProtectionFragment.this.getContext();
            if (context != null) {
                C3078ac c3078ac = C3078ac.f8981a;
                C1694h.m3122a((Object) context, "it");
                String string = SettingsProtectionFragment.this.getString(2131755326);
                C1694h.m3122a((Object) string, "getString(R.string.help_…otection_level_to_choose)");
                c3078ac.m220a(context, string);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$o */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$o.class */
    static final class View$OnClickListenerC3004o implements View.OnClickListener {
        View$OnClickListenerC3004o() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butAlertsTypeInfo");
            Context context = SettingsProtectionFragment.this.getContext();
            if (context != null) {
                C3078ac c3078ac = C3078ac.f8981a;
                C1694h.m3122a((Object) context, "it");
                String string = SettingsProtectionFragment.this.getString(2131755325);
                C1694h.m3122a((Object) string, "getString(R.string.help_…ich_alert_type_to_choose)");
                c3078ac.m220a(context, string);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$p */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$p.class */
    static final class View$OnClickListenerC3005p implements View.OnClickListener {
        View$OnClickListenerC3005p() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.checkNoProtection");
            SettingsProtectionFragment.this.f8807f = true;
            SettingsProtectionFragment.this.f8803b = EnumC2393af.NONE;
            SettingsProtectionFragment.this.m292d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$q */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$q.class */
    static final class View$OnClickListenerC3006q implements View.OnClickListener {
        View$OnClickListenerC3006q() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butChangeProtectionType");
            SettingsProtectionFragment.this.f8803b = EnumC2393af.UNKNOWN;
            SettingsProtectionFragment.this.f8804c = EnumC2378a.UNKNOWN;
            RadioButton radioButton = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6138u;
            C1694h.m3122a((Object) radioButton, "binding.checkActiveProtection");
            radioButton.setChecked(false);
            RadioButton radioButton2 = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6142y;
            C1694h.m3122a((Object) radioButton2, "binding.checkPasiveProtection");
            radioButton2.setChecked(false);
            RadioButton radioButton3 = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6140w;
            C1694h.m3122a((Object) radioButton3, "binding.checkNoProtection");
            radioButton3.setChecked(false);
            RadioButton radioButton4 = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6139v;
            C1694h.m3122a((Object) radioButton4, "binding.checkIncallScreen");
            radioButton4.setChecked(false);
            RadioButton radioButton5 = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6143z;
            C1694h.m3122a((Object) radioButton5, "binding.checkPopup");
            radioButton5.setChecked(false);
            RadioButton radioButton6 = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6141x;
            C1694h.m3122a((Object) radioButton6, "binding.checkNotification");
            radioButton6.setChecked(false);
            SettingsProtectionFragment.this.m292d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$r */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$r.class */
    static final class View$OnClickListenerC3007r implements View.OnClickListener {
        View$OnClickListenerC3007r() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.checkIncallScreen");
            SettingsProtectionFragment.this.f8804c = EnumC2378a.IN_CALL_SCREEN;
            SettingsProtectionFragment.this.m292d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$s */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$s.class */
    static final class View$OnClickListenerC3008s implements View.OnClickListener {
        View$OnClickListenerC3008s() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.checkPopup");
            SettingsProtectionFragment.this.f8804c = EnumC2378a.POPUP;
            SettingsProtectionFragment.this.m292d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$t */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$t.class */
    static final class View$OnClickListenerC3009t implements View.OnClickListener {
        View$OnClickListenerC3009t() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.checkNotification");
            SettingsProtectionFragment.this.f8804c = EnumC2378a.NOTIFICATION;
            SettingsProtectionFragment.this.m292d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$u */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u.class */
    static final class View$OnClickListenerC3010u implements View.OnClickListener {
        View$OnClickListenerC3010u() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butChangeAlertsType");
            SettingsProtectionFragment.this.f8804c = EnumC2378a.UNKNOWN;
            RadioButton radioButton = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6139v;
            C1694h.m3122a((Object) radioButton, "binding.checkIncallScreen");
            radioButton.setChecked(false);
            RadioButton radioButton2 = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6143z;
            C1694h.m3122a((Object) radioButton2, "binding.checkPopup");
            radioButton2.setChecked(false);
            RadioButton radioButton3 = SettingsProtectionFragment.m291d(SettingsProtectionFragment.this).f6141x;
            C1694h.m3122a((Object) radioButton3, "binding.checkNotification");
            radioButton3.setChecked(false);
            SettingsProtectionFragment.this.m292d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$v */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v.class */
    public static final class View$OnClickListenerC3011v implements View.OnClickListener {
        View$OnClickListenerC3011v() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3074a.f8976a.m226d("SettingsProtection.butActionDefaultPhoneApp");
            if (Build.VERSION.SDK_INT < 29) {
                new DialogInterfaceC0090d.C0091a(SettingsProtectionFragment.this.m859a()).m7920a(SettingsProtectionFragment.this.getString(2131755332)).m7913b(SettingsProtectionFragment.this.getString(2131755333)).m7919a(SettingsProtectionFragment.this.getString(2131755420), new DialogInterface.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment.v.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        C1694h.m3117b(dialogInterface, "dialogInterface");
                        C3115o.f9175a.m123a(SettingsProtectionFragment.this.m859a());
                    }
                }).m7912b(SettingsProtectionFragment.this.getString(2131755219), null).m7911c();
                return;
            }
            Context context = SettingsProtectionFragment.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            Object systemService = context.getSystemService("role");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.role.RoleManager");
            }
            Intent createRequestRoleIntent = ((RoleManager) systemService).createRequestRoleIntent("android.app.role.DIALER");
            C1694h.m3122a((Object) createRequestRoleIntent, "roleManager.createReques…(RoleManager.ROLE_DIALER)");
            SettingsProtectionFragment.this.startActivityForResult(createRequestRoleIntent, 1);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.protection.SettingsProtectionFragment$w */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w.class */
    public static final class View$OnClickListenerC3013w implements View.OnClickListener {
        View$OnClickListenerC3013w() {
            SettingsProtectionFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (SettingsProtectionFragment.this.f8803b == SettingsProtectionFragment.this.f8805d && SettingsProtectionFragment.this.f8804c == SettingsProtectionFragment.this.f8806e) {
                return;
            }
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "Changed protection settings to " + SettingsProtectionFragment.this.f8803b.name() + " " + SettingsProtectionFragment.this.f8804c.name() + " restarting service", (String) null, 2, (Object) null);
            C2398ai.f6930a.m1291a(SettingsProtectionFragment.this.f8803b);
            C2398ai.f6930a.m1292a(SettingsProtectionFragment.this.f8804c);
            SettingsProtectionFragment settingsProtectionFragment = SettingsProtectionFragment.this;
            settingsProtectionFragment.f8805d = settingsProtectionFragment.f8803b;
            SettingsProtectionFragment settingsProtectionFragment2 = SettingsProtectionFragment.this;
            settingsProtectionFragment2.f8806e = settingsProtectionFragment2.f8804c;
            MonitoringService.f7214a.m945c();
            SettingsProtectionFragment.this.m859a().finish();
        }
    }

    /* renamed from: d */
    public static final /* synthetic */ AbstractC2222ec m291d(SettingsProtectionFragment settingsProtectionFragment) {
        AbstractC2222ec abstractC2222ec = settingsProtectionFragment.f8808g;
        if (abstractC2222ec == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2222ec;
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x03d5, code lost:
        if (org.mistergroup.shouldianswer.model.C2405c.f6946b.m1215C() != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x06e6, code lost:
        if (r12 == false) goto L256;
     */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0722  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0735  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m292d() {
        /*
            Method dump skipped, instructions count: 1869
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.settings.protection.SettingsProtectionFragment.m292d():void");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        this.f8803b = C2398ai.f6930a.m1283c();
        this.f8805d = this.f8803b;
        this.f8804c = C2398ai.f6930a.m1275e();
        this.f8806e = this.f8804c;
        AbstractC2222ec abstractC2222ec = this.f8808g;
        if (abstractC2222ec == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec.f6138u.setOnClickListener(new View$OnClickListenerC2990a());
        AbstractC2222ec abstractC2222ec2 = this.f8808g;
        if (abstractC2222ec2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec2.f6142y.setOnClickListener(new View$OnClickListenerC3001l());
        AbstractC2222ec abstractC2222ec3 = this.f8808g;
        if (abstractC2222ec3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec3.f6140w.setOnClickListener(new View$OnClickListenerC3005p());
        AbstractC2222ec abstractC2222ec4 = this.f8808g;
        if (abstractC2222ec4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec4.f6129l.setOnClickListener(new View$OnClickListenerC3006q());
        AbstractC2222ec abstractC2222ec5 = this.f8808g;
        if (abstractC2222ec5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec5.f6139v.setOnClickListener(new View$OnClickListenerC3007r());
        AbstractC2222ec abstractC2222ec6 = this.f8808g;
        if (abstractC2222ec6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec6.f6143z.setOnClickListener(new View$OnClickListenerC3008s());
        AbstractC2222ec abstractC2222ec7 = this.f8808g;
        if (abstractC2222ec7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec7.f6141x.setOnClickListener(new View$OnClickListenerC3009t());
        AbstractC2222ec abstractC2222ec8 = this.f8808g;
        if (abstractC2222ec8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec8.f6128k.setOnClickListener(new View$OnClickListenerC3010u());
        AbstractC2222ec abstractC2222ec9 = this.f8808g;
        if (abstractC2222ec9 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec9.f6122e.setOnClickListener(new View$OnClickListenerC3011v());
        AbstractC2222ec abstractC2222ec10 = this.f8808g;
        if (abstractC2222ec10 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec10.f6121d.setOnClickListener(new View$OnClickListenerC2991b());
        AbstractC2222ec abstractC2222ec11 = this.f8808g;
        if (abstractC2222ec11 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec11.f6123f.setOnClickListener(new View$OnClickListenerC2992c(activityC2499a));
        AbstractC2222ec abstractC2222ec12 = this.f8808g;
        if (abstractC2222ec12 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec12.f6125h.setOnClickListener(new View$OnClickListenerC2993d());
        AbstractC2222ec abstractC2222ec13 = this.f8808g;
        if (abstractC2222ec13 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec13.f6135r.setOnClickListener(new View$OnClickListenerC2994e());
        AbstractC2222ec abstractC2222ec14 = this.f8808g;
        if (abstractC2222ec14 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec14.f6126i.setOnClickListener(new View$OnClickListenerC2995f());
        AbstractC2222ec abstractC2222ec15 = this.f8808g;
        if (abstractC2222ec15 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec15.f6133p.setOnClickListener(new View$OnClickListenerC2996g());
        AbstractC2222ec abstractC2222ec16 = this.f8808g;
        if (abstractC2222ec16 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec16.f6132o.setOnClickListener(new View$OnClickListenerC2997h());
        AbstractC2222ec abstractC2222ec17 = this.f8808g;
        if (abstractC2222ec17 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec17.f6131n.setOnClickListener(new View$OnClickListenerC2998i());
        AbstractC2222ec abstractC2222ec18 = this.f8808g;
        if (abstractC2222ec18 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec18.f6134q.setOnClickListener(new View$OnClickListenerC2999j());
        AbstractC2222ec abstractC2222ec19 = this.f8808g;
        if (abstractC2222ec19 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec19.f6137t.setOnClickListener(new View$OnClickListenerC3000k());
        AbstractC2222ec abstractC2222ec20 = this.f8808g;
        if (abstractC2222ec20 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec20.f6124g.setOnClickListener(new View$OnClickListenerC3002m());
        AbstractC2222ec abstractC2222ec21 = this.f8808g;
        if (abstractC2222ec21 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec21.f6136s.setOnClickListener(new View$OnClickListenerC3003n());
        AbstractC2222ec abstractC2222ec22 = this.f8808g;
        if (abstractC2222ec22 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2222ec22.f6127j.setOnClickListener(new View$OnClickListenerC3004o());
        m292d();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2222ec abstractC2222ec = this.f8808g;
        if (abstractC2222ec == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2222ec.f6120c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558520, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8808g = (AbstractC2222ec) m5843a;
        AbstractC2222ec abstractC2222ec = this.f8808g;
        if (abstractC2222ec == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2222ec.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m292d();
    }
}
