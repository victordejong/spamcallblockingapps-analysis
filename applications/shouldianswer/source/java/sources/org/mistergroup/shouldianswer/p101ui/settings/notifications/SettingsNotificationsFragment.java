package org.mistergroup.shouldianswer.p101ui.settings.notifications;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.EnumC2378a;
import org.mistergroup.shouldianswer.p097a.AbstractC2213du;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment.class */
public final class SettingsNotificationsFragment extends AbstractC2510b {

    /* renamed from: b */
    private AbstractC2213du f8773b;

    /* renamed from: c */
    private final boolean f8774c;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$a.class */
    static final class C2970a implements CompoundButton.OnCheckedChangeListener {
        C2970a() {
            SettingsNotificationsFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsNotificationsFragment.this.f8774c) {
                C2398ai.f6930a.m1255n(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.blockNotify" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$b.class */
    static final class C2971b implements CompoundButton.OnCheckedChangeListener {
        C2971b() {
            SettingsNotificationsFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsNotificationsFragment.this.f8774c) {
                C2398ai.f6930a.m1284b(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.PromoNotifications" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$c.class */
    static final class C2972c implements CompoundButton.OnCheckedChangeListener {
        C2972c() {
            SettingsNotificationsFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsNotificationsFragment.this.f8774c) {
                C2398ai.f6930a.m1243t(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.ttsAlerts" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$d.class */
    static final class C2973d implements CompoundButton.OnCheckedChangeListener {
        C2973d() {
            SettingsNotificationsFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsNotificationsFragment.this.f8774c) {
                C2398ai.f6930a.m1241u(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.ttsIncomingCalls" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$e.class */
    static final class C2974e implements CompoundButton.OnCheckedChangeListener {
        C2974e() {
            SettingsNotificationsFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsNotificationsFragment.this.f8774c) {
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.ShowAfterCall" + String.valueOf(z));
                C2398ai.f6930a.m1249q(z);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$f.class */
    static final class C2975f implements CompoundButton.OnCheckedChangeListener {
        C2975f() {
            SettingsNotificationsFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsNotificationsFragment.this.f8774c) {
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.alertsWantShowForUnkownRating" + String.valueOf(z));
                C2398ai.f6930a.m1251p(z);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$g.class */
    static final class View$OnClickListenerC2976g implements View.OnClickListener {
        View$OnClickListenerC2976g() {
            SettingsNotificationsFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsNotificationsFragment.this.m859a()).m7913b(SettingsNotificationsFragment.this.getString(2131755111)).m7919a(SettingsNotificationsFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.notifications.SettingsNotificationsFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$h.class */
    static final class View$OnClickListenerC2977h implements View.OnClickListener {
        View$OnClickListenerC2977h() {
            SettingsNotificationsFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsNotificationsFragment.this.m859a()).m7913b(SettingsNotificationsFragment.this.getString(2131755117)).m7919a(SettingsNotificationsFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2213du abstractC2213du = this.f8773b;
        if (abstractC2213du == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat = abstractC2213du.f6047f;
        C1694h.m3122a((Object) switchCompat, "binding.checkBlockNotify");
        switchCompat.setChecked(C2398ai.f6930a.m1248r());
        AbstractC2213du abstractC2213du2 = this.f8773b;
        if (abstractC2213du2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2213du2.f6047f.setOnCheckedChangeListener(new C2970a());
        AbstractC2213du abstractC2213du3 = this.f8773b;
        if (abstractC2213du3 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat2 = abstractC2213du3.f6048g;
        C1694h.m3122a((Object) switchCompat2, "binding.checkPromoNotify");
        switchCompat2.setChecked(C2398ai.f6930a.m1279d());
        AbstractC2213du abstractC2213du4 = this.f8773b;
        if (abstractC2213du4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2213du4.f6048g.setOnCheckedChangeListener(new C2971b());
        AbstractC2213du abstractC2213du5 = this.f8773b;
        if (abstractC2213du5 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat3 = abstractC2213du5.f6051j;
        C1694h.m3122a((Object) switchCompat3, "binding.checkTTSAlert");
        switchCompat3.setChecked(C2398ai.f6930a.m1308C());
        AbstractC2213du abstractC2213du6 = this.f8773b;
        if (abstractC2213du6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2213du6.f6051j.setOnCheckedChangeListener(new C2972c());
        AbstractC2213du abstractC2213du7 = this.f8773b;
        if (abstractC2213du7 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat4 = abstractC2213du7.f6052k;
        C1694h.m3122a((Object) switchCompat4, "binding.checkTTSIncomingCall");
        switchCompat4.setChecked(C2398ai.f6930a.m1307D());
        AbstractC2213du abstractC2213du8 = this.f8773b;
        if (abstractC2213du8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2213du8.f6052k.setOnCheckedChangeListener(new C2973d());
        AbstractC2213du abstractC2213du9 = this.f8773b;
        if (abstractC2213du9 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat5 = abstractC2213du9.f6049h;
        C1694h.m3122a((Object) switchCompat5, "binding.checkShowAfterCall");
        switchCompat5.setChecked(C2398ai.f6930a.m1234y());
        AbstractC2213du abstractC2213du10 = this.f8773b;
        if (abstractC2213du10 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2213du10.f6049h.setOnCheckedChangeListener(new C2974e());
        AbstractC2213du abstractC2213du11 = this.f8773b;
        if (abstractC2213du11 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat6 = abstractC2213du11.f6050i;
        C1694h.m3122a((Object) switchCompat6, "binding.checkShowAlertsForUnknownRated");
        switchCompat6.setVisibility(C2398ai.f6930a.m1275e() == EnumC2378a.POPUP ? 0 : 8);
        AbstractC2213du abstractC2213du12 = this.f8773b;
        if (abstractC2213du12 == null) {
            C1694h.m3116b("binding");
        }
        SwitchCompat switchCompat7 = abstractC2213du12.f6050i;
        C1694h.m3122a((Object) switchCompat7, "binding.checkShowAlertsForUnknownRated");
        switchCompat7.setChecked(C2398ai.f6930a.m1236x());
        AbstractC2213du abstractC2213du13 = this.f8773b;
        if (abstractC2213du13 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2213du13.f6050i.setOnCheckedChangeListener(new C2975f());
        AbstractC2213du abstractC2213du14 = this.f8773b;
        if (abstractC2213du14 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2213du14.f6046e.setOnClickListener(new View$OnClickListenerC2976g());
        AbstractC2213du abstractC2213du15 = this.f8773b;
        if (abstractC2213du15 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2213du15.f6045d.setOnClickListener(new View$OnClickListenerC2977h());
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2213du abstractC2213du = this.f8773b;
        if (abstractC2213du == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2213du.f6044c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        menuInflater.inflate(2131623938, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558516, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8773b = (AbstractC2213du) m5843a;
        AbstractC2213du abstractC2213du = this.f8773b;
        if (abstractC2213du == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2213du.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Context context;
        C1694h.m3117b(menuItem, "item");
        if (menuItem.getItemId() == 2131361841 && (context = getContext()) != null) {
            C3078ac c3078ac = C3078ac.f8981a;
            C1694h.m3122a((Object) context, "it");
            String string = getString(2131755408);
            C1694h.m3122a((Object) string, "getString(R.string.notifications_settings)");
            c3078ac.m220a(context, string);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
