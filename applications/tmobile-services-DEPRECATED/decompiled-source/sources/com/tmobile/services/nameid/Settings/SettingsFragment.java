package com.tmobile.services.nameid.Settings;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.Settings.callerIdPrefs.RealmCallerIdPrefsModel;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/SettingsFragment.class */
public class SettingsFragment extends Fragment implements TabFragmentInterface {

    /* renamed from: f */
    private SettingsItemClickListener f12796f;

    /* renamed from: g */
    private ScamShieldFeaturesItemClickListener f12797g;

    /* renamed from: h */
    NonScrollableListView f12798h;

    /* renamed from: i */
    NonScrollableListView f12799i;

    /* renamed from: j */
    TextView f12800j;

    /* renamed from: k */
    Button f12801k;

    /* renamed from: l */
    TextView f12802l;

    /* renamed from: m */
    AdapterView.OnItemClickListener f12803m = new AdapterView.OnItemClickListener() { // from class: com.tmobile.services.nameid.Settings.j
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
            SettingsFragment.this.m7392P0(adapterView, view, i, j);
        }
    };

    /* renamed from: n */
    AdapterView.OnItemClickListener f12804n = new AdapterView.OnItemClickListener() { // from class: com.tmobile.services.nameid.Settings.l
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
            SettingsFragment.this.m7391Q0(adapterView, view, i, j);
        }
    };

    /* renamed from: o */
    ClickableSpan f12805o = new ClickableSpan() { // from class: com.tmobile.services.nameid.Settings.SettingsFragment.1
        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            WidgetUtils.m5257P((Context) Objects.requireNonNull(SettingsFragment.this.getContext()), SettingsFragment.this.getContext().getString(C1517R.string.settings_scam_shield_features_url));
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(textPaint.linkColor);
            textPaint.setUnderlineText(false);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/SettingsFragment$ListAdapter.class */
    public class ListAdapter extends ArrayAdapter<SettingsListItem> {
        ListAdapter(SettingsFragment settingsFragment, Context context, int i, List<SettingsListItem> list) {
            super(context, i, list);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        @Nonnull
        public View getView(int i, @Nullable View view, ViewGroup viewGroup) {
            SettingsListItem item = getItem(i);
            View view2 = view;
            if (view == null) {
                view2 = LayoutInflater.from(getContext()).inflate(C1517R.layout.settings_list_item, (ViewGroup) null);
            }
            if (item != null) {
                TextView textView = (TextView) view2.findViewById(C1517R.C1520id.textview_settings_list_item_title);
                TextView textView2 = (TextView) view2.findViewById(C1517R.C1520id.textview_settings_list_item_subtext);
                View findViewById = view2.findViewById(C1517R.C1520id.settings_list_notification_container);
                textView.setText(item.m7374b());
                textView2.setText(item.m7375a());
                if (item.m7373c()) {
                    findViewById.setVisibility(0);
                } else {
                    findViewById.setVisibility(8);
                }
            }
            return view2;
        }
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/SettingsFragment$ScamShieldFeaturesItemClickListener.class */
    public interface ScamShieldFeaturesItemClickListener {
        /* renamed from: g */
        void mo7377g(int i);
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/SettingsFragment$SettingsItemClickListener.class */
    public interface SettingsItemClickListener {
        /* renamed from: c */
        void mo7376c(int i);
    }

    /* renamed from: G0 */
    private void m7401G0() {
        if (getContext() != null) {
            LogUtil.m5642e(getContext());
        }
    }

    /* renamed from: b1 */
    private void m7380b1() {
        LogUtil.m5639h("SettingsFragment#refreshOutboundCallerId", "Refreshing, if cache policy allows.");
        new RealmCallerIdPrefsModel().mo7336a();
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.SETTINGS;
    }

    /* renamed from: H0 */
    public void m7400H0() {
        AppFeaturesDialogFragment appFeaturesDialogFragment = new AppFeaturesDialogFragment();
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null && !fragmentManager.isDestroyed() && !fragmentManager.isStateSaved()) {
            appFeaturesDialogFragment.show(fragmentManager, "APP_FEATURES");
        }
    }

    /* renamed from: I0 */
    public void m7399I0() {
        AnalyticsWrapper.m5883E("SettingsFragment", "do_not_sell");
        WidgetUtils.m5257P(getContext(), BuildUtils.m5850d() ? "https://www.t-mobile.com/dns?brand=MbyT&site=NoSell_App&origin_url=com.privacystar.android.metro" : "https://www.t-mobile.com/dns?brand=Magenta&site=NoSell_App&origin_url=com.tmobile.services.nameid");
    }

    /* renamed from: J0 */
    public void m7398J0() {
        AnalyticsWrapper.m5883E("SettingsFragment", "faq");
        EventManager.m5725a(getActivity(), "FAQ_View_Entered");
        if (BuildUtils.m5850d()) {
            WidgetUtils.m5257P(getContext(), "https://metro-callmanagersupport.zendesk.com/");
        } else {
            WidgetUtils.m5257P(getContext(), "https://tmo-callmanagersupport.zendesk.com/");
        }
    }

    /* renamed from: K0 */
    public void m7397K0() {
        AnalyticsWrapper.m5883E("SettingsFragment", "legal_notices");
        ((MainActivity) getContext()).m7638H();
    }

    /* renamed from: L0 */
    public void m7396L0() {
        AnalyticsWrapper.m5883E("SettingsFragment", "go_to_privacy_center");
        WidgetUtils.m5257P(getContext(), "https://www.t-mobile.com/privacy-center");
    }

    /* renamed from: M0 */
    public void m7395M0() {
        AnalyticsWrapper.m5883E("SettingsFragment", "privacy_policy");
        if (BuildUtils.m5850d()) {
            WidgetUtils.m5257P(getContext(), "https://www.metropcs.com/terms-conditions/privacy.html");
        } else {
            WidgetUtils.m5257P(getContext(), "https://www.t-mobile.com/responsibility/privacy/privacy-policy");
        }
    }

    /* renamed from: N0 */
    public void m7394N0() {
        AnalyticsWrapper.m5883E("SettingsFragment", "rate_gp");
        EventManager.m5725a(getActivity(), "Rate_in_Google_Play Selected");
        String packageName = getContext().getPackageName();
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName)));
        } catch (ActivityNotFoundException e) {
            LogUtil.m5641f("SettingsFragmentgoToRate", "Could not open Google Play", e);
        }
    }

    /* renamed from: O0 */
    public void m7393O0() {
        EventManager.m5725a(getActivity(), "Support_View_Entered");
        AnalyticsWrapper.m5883E("SettingsFragment", "support");
        if (BuildUtils.m5850d()) {
            WidgetUtils.m5257P(getContext(), "https://metro-callmanagersupport.zendesk.com/hc/en-us/requests/new");
        } else {
            WidgetUtils.m5257P(getContext(), "https://tmo-callmanagersupport.zendesk.com/hc/en-us/requests/new");
        }
    }

    /* renamed from: P0 */
    public /* synthetic */ void m7392P0(AdapterView adapterView, View view, int i, long j) {
        this.f12796f.mo7376c(i);
    }

    /* renamed from: Q0 */
    public /* synthetic */ void m7391Q0(AdapterView adapterView, View view, int i, long j) {
        this.f12797g.mo7377g(i);
    }

    /* renamed from: R0 */
    public /* synthetic */ void m7390R0(View view) {
        m7399I0();
    }

    /* renamed from: S0 */
    public /* synthetic */ void m7389S0(View view) {
        m7401G0();
    }

    /* renamed from: T0 */
    public /* synthetic */ void m7388T0(View view) {
        m7393O0();
    }

    /* renamed from: U0 */
    public /* synthetic */ void m7387U0(View view) {
        m7398J0();
    }

    /* renamed from: V0 */
    public /* synthetic */ void m7386V0(View view) {
        m7394N0();
    }

    /* renamed from: W0 */
    public /* synthetic */ void m7385W0(View view) {
        m7397K0();
    }

    /* renamed from: X0 */
    public /* synthetic */ void m7384X0(View view) {
        m7400H0();
    }

    /* renamed from: Y0 */
    public /* synthetic */ void m7383Y0(View view) {
        m7395M0();
    }

    /* renamed from: Z0 */
    public /* synthetic */ void m7382Z0(View view) {
        m7396L0();
    }

    /* renamed from: a1 */
    public void m7381a1(@StringRes int i) {
        MainActivity.m7572q0(getString(i), getContext());
    }

    /* renamed from: c1 */
    void m7379c1() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean z = PreferenceUtils.m5395b("PREF_HAS_SHOWN_CATEGORY_MANAGER", false) || !SubscriptionHelper.m5317k();
        boolean b = PreferenceUtils.m5395b("PREF_HAS_SHOWN_CALLER_ID_PREFS", false);
        arrayList.add(new SettingsListItem(getString(C1517R.string.setting_my_account_title), getString(C1517R.string.setting_my_account_subtext), false));
        arrayList.add(new SettingsListItem(getString(C1517R.string.setting_category_manager_title), getString(C1517R.string.setting_category_maanger_subtext), !z));
        arrayList.add(new SettingsListItem(getString(C1517R.string.setting_caller_id_prefs_title), getString(C1517R.string.setting_caller_id_prefs_subtext), true ^ b));
        arrayList.add(new SettingsListItem(getString(C1517R.string.setting_notifications_title), getString(C1517R.string.setting_notifications_subtext), false));
        if (BuildUtils.m5848f() || BuildUtils.m5852b()) {
            arrayList.add(new SettingsListItem(getString(C1517R.string.setting_debug_title), "Edit Realm, set mock account status, etc.", false));
        }
        if (BuildUtils.m5851c() && !SubscriptionHelper.m5332B()) {
            arrayList2.add(new SettingsListItem(getString(C1517R.string.settings_proxy_by_digits_title), getString(C1517R.string.settings_proxy_by_digits_subtitle), false));
        }
        arrayList2.add(new SettingsListItem(getString(C1517R.string.settings_number_change_title), getString(C1517R.string.settings_number_change_subtitle), false));
        this.f12798h.setAdapter((android.widget.ListAdapter) new ListAdapter(this, (Context) Objects.requireNonNull(getActivity()), C1517R.layout.settings_list_item, arrayList));
        this.f12799i.setAdapter((android.widget.ListAdapter) new ListAdapter(this, getActivity(), C1517R.layout.settings_list_item, arrayList2));
        LogUtil.m5639h("SettingsFragment#setListItems", "set list items");
    }

    /* renamed from: d1 */
    void m7378d1() {
        if (getContext() instanceof MainActivity) {
            MainActivity mainActivity = (MainActivity) getContext();
            if (mainActivity.m7571r(mo6305F0())) {
                mainActivity.m7625N0(C1517R.string.fragment_settings_title);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof SettingsItemClickListener) {
            this.f12796f = (SettingsItemClickListener) context;
        }
        if (context instanceof ScamShieldFeaturesItemClickListener) {
            this.f12797g = (ScamShieldFeaturesItemClickListener) context;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5639h("SettingsFragment#onCreate", "created");
        m7380b1();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(C1517R.layout.fragment_settings, viewGroup, false);
        this.f12798h = (NonScrollableListView) inflate.findViewById(C1517R.C1520id.list_view_settings);
        this.f12799i = (NonScrollableListView) inflate.findViewById(C1517R.C1520id.list_view_scam_shield_features);
        this.f12800j = (TextView) inflate.findViewById(C1517R.C1520id.about_apk_version_value);
        this.f12801k = (Button) inflate.findViewById(C1517R.C1520id.settings_share_log);
        this.f12802l = (TextView) inflate.findViewById(C1517R.C1520id.device_id_value);
        this.f12801k.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7389S0(view);
            }
        });
        TextView textView = (TextView) inflate.findViewById(C1517R.C1520id.settings_scam_shield_features_body);
        String string = ((Context) Objects.requireNonNull(getContext())).getString(C1517R.string.settings_scam_shield_features_description);
        String string2 = getContext().getString(C1517R.string.settings_scam_shield_features_link);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getContext().getString(C1517R.string.settings_scam_shield_features_body, string, string2));
        spannableStringBuilder.setSpan(this.f12805o, spannableStringBuilder.toString().indexOf(string2), spannableStringBuilder.length(), 0);
        textView.setText(spannableStringBuilder);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.about_support_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7388T0(view);
            }
        });
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.about_faq_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7387U0(view);
            }
        });
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.about_rate_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7386V0(view);
            }
        });
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.about_legal_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7385W0(view);
            }
        });
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.about_app_features_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7384X0(view);
            }
        });
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.about_privacy_policy_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7383Y0(view);
            }
        });
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.about_privacy_center_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7382Z0(view);
            }
        });
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.about_do_not_sell_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.this.m7390R0(view);
            }
        });
        this.f12798h.setOnItemClickListener(this.f12803m);
        this.f12799i.setOnItemClickListener(this.f12804n);
        this.f12801k.setVisibility(BuildUtils.m5853a() ? 0 : 4);
        m7379c1();
        m7378d1();
        ActionBar supportActionBar = ((AppCompatActivity) getActivity()).getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo22088s(false);
            supportActionBar.mo22087t(false);
        }
        LogUtil.m5639h("SettingsFragment#onCreateView", "new view created");
        this.f12800j.setText("4.2.0.3336");
        this.f12802l.setText(DeviceInfoUtils.m5762b(getContext()));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f12796f = null;
        this.f12797g = null;
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        if (z) {
            m7378d1();
            m7381a1(C1517R.string.con_desc_settings);
        }
    }
}
