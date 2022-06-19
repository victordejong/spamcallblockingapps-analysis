package org.mistergroup.shouldianswer.p101ui.settings.other;

import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.p097a.AbstractC2217dy;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.utils.C3074a;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment.class */
public final class SettingsOtherFragment extends AbstractC2510b {

    /* renamed from: b */
    private AbstractC2217dy f8785b;

    /* renamed from: c */
    private boolean f8786c;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$a.class */
    static final class View$OnClickListenerC2979a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8788b;

        View$OnClickListenerC2979a(ActivityC2499a activityC2499a) {
            SettingsOtherFragment.this = r4;
            this.f8788b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!SettingsOtherFragment.this.f8786c) {
                C3074a.f8976a.m227c("UserSettings.setActTheme default");
                C2398ai.f6930a.m1290a(C2398ai.EnumC2399a.DEFAULT);
                SettingsOtherFragment.this.m302d();
                this.f8788b.finishAffinity();
                MainFragment.f7560b.m751b(this.f8788b);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$b.class */
    static final class View$OnClickListenerC2980b implements View.OnClickListener {
        View$OnClickListenerC2980b() {
            SettingsOtherFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsOtherFragment.this.m859a()).m7913b(SettingsOtherFragment.this.getString(2131755314)).m7919a(SettingsOtherFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c.class */
    static final class View$OnClickListenerC2981c implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8791b;

        View$OnClickListenerC2981c(ActivityC2499a activityC2499a) {
            SettingsOtherFragment.this = r4;
            this.f8791b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!SettingsOtherFragment.this.f8786c) {
                C3074a.f8976a.m227c("UserSettings.setActTheme light");
                C2398ai.f6930a.m1290a(C2398ai.EnumC2399a.LIGHT);
                SettingsOtherFragment.this.m302d();
                this.f8791b.finishAffinity();
                MainFragment.f7560b.m751b(this.f8791b);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$d.class */
    static final class View$OnClickListenerC2982d implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8793b;

        View$OnClickListenerC2982d(ActivityC2499a activityC2499a) {
            SettingsOtherFragment.this = r4;
            this.f8793b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!SettingsOtherFragment.this.f8786c) {
                C3074a.f8976a.m227c("UserSettings.setActTheme dark");
                C2398ai.f6930a.m1290a(C2398ai.EnumC2399a.DARK);
                SettingsOtherFragment.this.m302d();
                this.f8793b.finishAffinity();
                MainFragment.f7560b.m751b(this.f8793b);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$e.class */
    static final class C2983e implements CompoundButton.OnCheckedChangeListener {
        C2983e() {
            SettingsOtherFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsOtherFragment.this.f8786c) {
                C3074a.f8976a.m227c("UserSettings.showSimSelection");
                C2398ai.f6930a.m1239v(z);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f.class */
    static final class C2984f implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8796b;

        C2984f(ActivityC2499a activityC2499a) {
            SettingsOtherFragment.this = r4;
            this.f8796b = activityC2499a;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C1694h.m3117b(compoundButton, "compoundButton");
            if (!SettingsOtherFragment.this.f8786c) {
                C3074a.f8976a.m227c("UserSettings.useDarkTheme");
                C2398ai.f6930a.m1245s(z);
                MyApp.f5480c.m1802a().m1806a(MyApp.f5480c.m1802a());
                this.f8796b.finishAffinity();
                MainFragment.f7560b.m751b(this.f8796b);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$g.class */
    static final class C2985g implements CompoundButton.OnCheckedChangeListener {
        C2985g() {
            SettingsOtherFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsOtherFragment.this.f8786c) {
                C3074a.f8976a.m227c("UserSettings.ignoreContactInvisibleFlag");
                C2398ai.f6930a.m1237w(z);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$h.class */
    static final class C2986h implements CompoundButton.OnCheckedChangeListener {
        C2986h() {
            SettingsOtherFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsOtherFragment.this.f8786c) {
                C3074a.f8976a.m227c("UserSettings.dontUseIncallPopup");
                C2398ai.f6930a.m1253o(z);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$i.class */
    static final class View$OnClickListenerC2987i implements View.OnClickListener {
        View$OnClickListenerC2987i() {
            SettingsOtherFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsOtherFragment.this.m859a()).m7913b(SettingsOtherFragment.this.getString(2131755315)).m7919a(SettingsOtherFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.other.SettingsOtherFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$j.class */
    static final class View$OnClickListenerC2988j implements View.OnClickListener {
        View$OnClickListenerC2988j() {
            SettingsOtherFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsOtherFragment.this.m859a()).m7913b(SettingsOtherFragment.this.getString(2131755313)).m7919a(SettingsOtherFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: d */
    public final void m302d() {
        this.f8786c = true;
        AbstractC2217dy abstractC2217dy = this.f8785b;
        if (abstractC2217dy == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2217dy.f6072n;
        C1694h.m3122a((Object) linearLayout, "binding.llUseDarkTheme");
        linearLayout.setVisibility(Build.VERSION.SDK_INT < 29 ? 0 : 8);
        AbstractC2217dy abstractC2217dy2 = this.f8785b;
        if (abstractC2217dy2 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout2 = abstractC2217dy2.f6073o;
        C1694h.m3122a((Object) linearLayout2, "binding.llVisualTheme");
        int i = 8;
        if (Build.VERSION.SDK_INT >= 29) {
            i = 0;
        }
        linearLayout2.setVisibility(i);
        C2398ai.EnumC2399a m1310A = C2398ai.f6930a.m1310A();
        AbstractC2217dy abstractC2217dy3 = this.f8785b;
        if (abstractC2217dy3 == null) {
            C1694h.m3116b("binding");
        }
        RadioButton radioButton = abstractC2217dy3.f6069k;
        C1694h.m3122a((Object) radioButton, "binding.checkThemeDefault");
        radioButton.setChecked(m1310A == C2398ai.EnumC2399a.DEFAULT);
        AbstractC2217dy abstractC2217dy4 = this.f8785b;
        if (abstractC2217dy4 == null) {
            C1694h.m3116b("binding");
        }
        RadioButton radioButton2 = abstractC2217dy4.f6068j;
        C1694h.m3122a((Object) radioButton2, "binding.checkThemeDark");
        radioButton2.setChecked(m1310A == C2398ai.EnumC2399a.DARK);
        AbstractC2217dy abstractC2217dy5 = this.f8785b;
        if (abstractC2217dy5 == null) {
            C1694h.m3116b("binding");
        }
        RadioButton radioButton3 = abstractC2217dy5.f6070l;
        C1694h.m3122a((Object) radioButton3, "binding.checkThemeLight");
        radioButton3.setChecked(m1310A == C2398ai.EnumC2399a.LIGHT);
        AbstractC2217dy abstractC2217dy6 = this.f8785b;
        if (abstractC2217dy6 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat = abstractC2217dy6.f6067i;
        C1694h.m3122a((Object) switchCompat, "binding.checkShowSimSelection");
        switchCompat.setVisibility(0);
        AbstractC2217dy abstractC2217dy7 = this.f8785b;
        if (abstractC2217dy7 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat2 = abstractC2217dy7.f6067i;
        C1694h.m3122a((Object) switchCompat2, "binding.checkShowSimSelection");
        switchCompat2.setChecked(C2398ai.f6930a.m1306E());
        AbstractC2217dy abstractC2217dy8 = this.f8785b;
        if (abstractC2217dy8 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat3 = abstractC2217dy8.f6066h;
        C1694h.m3122a((Object) switchCompat3, "binding.checkIgnoreContactsInvisibleFlag");
        switchCompat3.setChecked(C2398ai.f6930a.m1305F());
        AbstractC2217dy abstractC2217dy9 = this.f8785b;
        if (abstractC2217dy9 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat4 = abstractC2217dy9.f6071m;
        C1694h.m3122a((Object) switchCompat4, "binding.checkUseDarkTheme");
        switchCompat4.setChecked(C2398ai.f6930a.m1309B());
        AbstractC2217dy abstractC2217dy10 = this.f8785b;
        if (abstractC2217dy10 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat5 = abstractC2217dy10.f6065g;
        C1694h.m3122a((Object) switchCompat5, "binding.checkDontShowInCallPopup");
        switchCompat5.setChecked(C2398ai.f6930a.m1240v());
        this.f8786c = false;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2217dy abstractC2217dy = this.f8785b;
        if (abstractC2217dy == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy.f6069k.setOnClickListener(new View$OnClickListenerC2979a(activityC2499a));
        AbstractC2217dy abstractC2217dy2 = this.f8785b;
        if (abstractC2217dy2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy2.f6070l.setOnClickListener(new View$OnClickListenerC2981c(activityC2499a));
        AbstractC2217dy abstractC2217dy3 = this.f8785b;
        if (abstractC2217dy3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy3.f6068j.setOnClickListener(new View$OnClickListenerC2982d(activityC2499a));
        AbstractC2217dy abstractC2217dy4 = this.f8785b;
        if (abstractC2217dy4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy4.f6067i.setOnCheckedChangeListener(new C2983e());
        AbstractC2217dy abstractC2217dy5 = this.f8785b;
        if (abstractC2217dy5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy5.f6071m.setOnCheckedChangeListener(new C2984f(activityC2499a));
        AbstractC2217dy abstractC2217dy6 = this.f8785b;
        if (abstractC2217dy6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy6.f6066h.setOnCheckedChangeListener(new C2985g());
        AbstractC2217dy abstractC2217dy7 = this.f8785b;
        if (abstractC2217dy7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy7.f6065g.setOnCheckedChangeListener(new C2986h());
        AbstractC2217dy abstractC2217dy8 = this.f8785b;
        if (abstractC2217dy8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy8.f6064f.setOnClickListener(new View$OnClickListenerC2987i());
        AbstractC2217dy abstractC2217dy9 = this.f8785b;
        if (abstractC2217dy9 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy9.f6062d.setOnClickListener(new View$OnClickListenerC2988j());
        AbstractC2217dy abstractC2217dy10 = this.f8785b;
        if (abstractC2217dy10 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2217dy10.f6063e.setOnClickListener(new View$OnClickListenerC2980b());
        m302d();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2217dy abstractC2217dy = this.f8785b;
        if (abstractC2217dy == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2217dy.f6061c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558518, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8785b = (AbstractC2217dy) m5843a;
        AbstractC2217dy abstractC2217dy = this.f8785b;
        if (abstractC2217dy == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2217dy.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m302d();
    }
}
