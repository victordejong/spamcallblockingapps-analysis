package org.mistergroup.shouldianswer.p101ui.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2209dq;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.settings.account.SettingsAccountActivity;
import org.mistergroup.shouldianswer.p101ui.settings.allowed_numbers.SettingsAllowedNumbersActivity;
import org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers.SettingsBlockedNumbersActivity;
import org.mistergroup.shouldianswer.p101ui.settings.blocking.SettingsBlockingActivity;
import org.mistergroup.shouldianswer.p101ui.settings.notifications.SettingsNotificationsActivity;
import org.mistergroup.shouldianswer.p101ui.settings.other.SettingsOtherActivity;
import org.mistergroup.shouldianswer.p101ui.settings.protection.SettingsProtectionActivity;
import org.mistergroup.shouldianswer.p101ui.settings.reported_numbers.SettingsReportedNumbersActivity;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment.class */
public final class SettingsFragment extends AbstractC2510b {

    /* renamed from: b */
    private AbstractC2209dq f8542b;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment$a.class */
    static final class View$OnClickListenerC2875a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8543a;

        View$OnClickListenerC2875a(ActivityC2499a activityC2499a) {
            this.f8543a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsProtectionActivity.f8801l.m301a(this.f8543a);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment$b.class */
    static final class View$OnClickListenerC2876b implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8544a;

        View$OnClickListenerC2876b(ActivityC2499a activityC2499a) {
            this.f8544a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsBlockingActivity.f8738l.m319a(this.f8544a);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment$c.class */
    static final class View$OnClickListenerC2877c implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8545a;

        View$OnClickListenerC2877c(ActivityC2499a activityC2499a) {
            this.f8545a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsNotificationsActivity.f8771l.m309a(this.f8545a);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment$d.class */
    static final class View$OnClickListenerC2878d implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8546a;

        View$OnClickListenerC2878d(ActivityC2499a activityC2499a) {
            this.f8546a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsAccountActivity.f8551l.m360a(this.f8546a);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment$e.class */
    static final class View$OnClickListenerC2879e implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8547a;

        View$OnClickListenerC2879e(ActivityC2499a activityC2499a) {
            this.f8547a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsOtherActivity.f8783l.m306a(this.f8547a);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment$f.class */
    static final class View$OnClickListenerC2880f implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8548a;

        View$OnClickListenerC2880f(ActivityC2499a activityC2499a) {
            this.f8548a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsReportedNumbersActivity.f8837l.m287a(this.f8548a);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment$g.class */
    static final class View$OnClickListenerC2881g implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8549a;

        View$OnClickListenerC2881g(ActivityC2499a activityC2499a) {
            this.f8549a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsBlockedNumbersActivity.f8672l.m334a(this.f8549a);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.SettingsFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/SettingsFragment$h.class */
    static final class View$OnClickListenerC2882h implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ActivityC2499a f8550a;

        View$OnClickListenerC2882h(ActivityC2499a activityC2499a) {
            this.f8550a = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsAllowedNumbersActivity.f8606l.m349a(this.f8550a);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2209dq abstractC2209dq = this.f8542b;
        if (abstractC2209dq == null) {
            C1694h.m3116b("binding");
        }
        abstractC2209dq.f6034j.setOnClickListener(new View$OnClickListenerC2875a(activityC2499a));
        AbstractC2209dq abstractC2209dq2 = this.f8542b;
        if (abstractC2209dq2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2209dq2.f6029e.setOnClickListener(new View$OnClickListenerC2876b(activityC2499a));
        AbstractC2209dq abstractC2209dq3 = this.f8542b;
        if (abstractC2209dq3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2209dq3.f6032h.setOnClickListener(new View$OnClickListenerC2877c(activityC2499a));
        AbstractC2209dq abstractC2209dq4 = this.f8542b;
        if (abstractC2209dq4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2209dq4.f6028d.setOnClickListener(new View$OnClickListenerC2878d(activityC2499a));
        AbstractC2209dq abstractC2209dq5 = this.f8542b;
        if (abstractC2209dq5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2209dq5.f6033i.setOnClickListener(new View$OnClickListenerC2879e(activityC2499a));
        AbstractC2209dq abstractC2209dq6 = this.f8542b;
        if (abstractC2209dq6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2209dq6.f6035k.setOnClickListener(new View$OnClickListenerC2880f(activityC2499a));
        AbstractC2209dq abstractC2209dq7 = this.f8542b;
        if (abstractC2209dq7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2209dq7.f6031g.setOnClickListener(new View$OnClickListenerC2881g(activityC2499a));
        AbstractC2209dq abstractC2209dq8 = this.f8542b;
        if (abstractC2209dq8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2209dq8.f6030f.setOnClickListener(new View$OnClickListenerC2882h(activityC2499a));
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2209dq abstractC2209dq = this.f8542b;
        if (abstractC2209dq == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2209dq.f6027c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558514, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8542b = (AbstractC2209dq) m5843a;
        AbstractC2209dq abstractC2209dq = this.f8542b;
        if (abstractC2209dq == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2209dq.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }
}
