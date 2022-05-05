package p459j.p460a.p564s;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.view.Window;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.SimpleExpandableListAdapter;
import android.widget.Toast;
import androidx.core.app.Person;
import com.google.firebase.iid.FirebaseInstanceId;
import gogolook.callgogolook2.util.control.VersionManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import p459j.p460a.p533l.p535o.C12998a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14315y;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15012h0;
import p626l.p632u.C15020l;
import p626l.p632u.C15025q;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R!\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/developmode/FirebaseRemoteConfigManagerDevTool;", "", "()V", "FIX_KEY", "", "devConfigKeyGroup", "", "getDevConfigKeyGroup", "()Ljava/util/Set;", "devConfigKeyGroup$delegate", "Lkotlin/Lazy;", "getConfigListAdapter", "Landroid/widget/ExpandableListAdapter;", "context", "Landroid/content/Context;", "configMgr", "Lgogolook/callgogolook2/firebase/FirebaseRemoteConfigManager;", "showDevToolDialog", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.s.y */
/* loaded from: classes2-dex2jar.jar:j/a/s/y.class */
public final class C13599y {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f30528a;

    /* renamed from: c */
    public static final C13599y f30530c = new C13599y();

    /* renamed from: b */
    public static final AbstractC14974f f30529b = C14975g.m662a(C13600a.f30531a);

    /* renamed from: j.a.s.y$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/y$a.class */
    public static final class C13600a extends AbstractC15150l implements AbstractC15107a<Set<? extends String>> {

        /* renamed from: a */
        public static final C13600a f30531a = new C13600a();

        public C13600a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Set<? extends String> invoke() {
            return C15012h0.m593b("dialpad_mostfrequent_duration_criteria", "mrt_activities_rating", "rating_disable_version", "perf_enable", "network_restricted_hint_counts", "is_enable_non_standard_number_search", "suggest_settings_on_calllog", "calllog_setting_location_show", "calllog_setting_location_period", "promote_notification_access", "cd_search_retry_countries", "whoscall_number_country_list", "cs_faq_enabled_countries", "calllog_setting_default_sms_show", "skip_google_policy", "iap_yearly_campaign", "offline_db_outdated_push_iap_show_time", "offline_db_expired_warning", "call_dialog_search_retry", "contact_call_show_ad", "sms_scan_config", "iap_reported_users_promotion", "force_update_version", "aottertrek_enable", "aottertrek_fetching_bypass_mopub", "adn_priority", "default_setting_value_list", "ads_settings_v1", "ad_layout_settings_v1", "ad_call_end_full", "ad_call_log_content_feed", "ad_sms_request_timeout", "mopub_init_scenario_v1", "enable_call_end_ndp_v2", "sms_filter_keywords_config", "sms_filter_rules", "br_telecom_block_list", "br_bank_block_list", "number_test_customized_sms", "country_can_enter_scp_without_setting_default_sms_v2", "personaldb_enable", "open_app_iap_promo", "iap_regular_pricing", "iap_post_call_end_promo", "url_redirect_check_max", "url_redirect_check_max_v2", "sms_url_scan_source", "iap_cancelled_survey_form", "iap_onboarding_promo_page_enable", "iap_promote_info", "main_drawer_item_list", "is_sms_assistant_available", "sms_assistant_enable", "sms_url_scan_time_limit", "hide_onboarding_register_skip", "iap_page_product_info", "sms_url_scan_manually", "pcp_features_enabled_version", "nondefault_sms_url_scan_notification", "sms_dialog_view_message_to_scp", "show_metaphor_on_scan_url_notification", "auto_block_enable");
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m815d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.s.y$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/y$b.class */
    public static final class DialogInterface$OnClickListenerC13601b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C13640c f30532a;

        /* renamed from: b */
        public final /* synthetic */ Context f30533b;

        /* renamed from: j.a.s.y$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/y$b$a.class */
        public static final class C13602a implements C13640c.AbstractC13645e {
            public C13602a() {
            }

            @Override // p459j.p460a.p568u.C13640c.AbstractC13645e
            /* renamed from: a */
            public final void mo1273a(int i, boolean z) {
                if (z) {
                    VersionManager.m25987h();
                    C12998a.f29391e.m4834i();
                    C13599y.m3858a(DialogInterface$OnClickListenerC13601b.this.f30533b);
                    C13963d3.m2960k();
                    return;
                }
                Toast.makeText(DialogInterface$OnClickListenerC13601b.this.f30533b, "fetch fail", 0).show();
            }
        }

        public DialogInterface$OnClickListenerC13601b(C13640c cVar, Context context) {
            this.f30532a = cVar;
            this.f30533b = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f30532a.m3750a(true, (C13640c.AbstractC13645e) new C13602a());
        }
    }

    /* renamed from: j.a.s.y$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/y$c.class */
    public static final class DialogInterface$OnClickListenerC13603c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f30535a;

        /* renamed from: b */
        public final /* synthetic */ String f30536b;

        public DialogInterface$OnClickListenerC13603c(Context context, String str) {
            this.f30535a = context;
            this.f30536b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Object systemService = this.f30535a.getSystemService("clipboard");
            if (systemService != null) {
                ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("firebase token", this.f30536b));
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.content.ClipboardManager");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13599y.class), "devConfigKeyGroup", "getDevConfigKeyGroup()Ljava/util/Set;");
        C15131a0.m412a(sVar);
        f30528a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final void m3858a(Context context) {
        C15149k.m377b(context, "context");
        C13640c d = C13640c.m3745d();
        FirebaseInstanceId instance = FirebaseInstanceId.getInstance();
        C15149k.m383a((Object) instance, "FirebaseInstanceId.getInstance()");
        String token = instance.getToken();
        AlertDialog.Builder title = new AlertDialog.Builder(context).setTitle("Firebase info");
        ExpandableListView expandableListView = new ExpandableListView(context);
        C13599y yVar = f30530c;
        C15149k.m383a((Object) d, "configMgr");
        expandableListView.setAdapter(yVar.m3857a(context, d));
        AlertDialog create = title.setView(expandableListView).setNeutralButton("Fetch Config", new DialogInterface$OnClickListenerC13601b(d, context)).setNegativeButton("Copy token", new DialogInterface$OnClickListenerC13603c(context, token)).setPositiveButton("Cancel", (DialogInterface.OnClickListener) null).create();
        Window window = create.getWindow();
        if (window != null) {
            window.setLayout(C14217x3.m2201a(400.0f), C14217x3.m2201a(600.0f));
        }
        C15149k.m383a((Object) create, "AlertDialog.Builder(cont…0f), Utils.dp2px(600f)) }");
        C14315y.m1603b(create);
    }

    /* renamed from: a */
    public final ExpandableListAdapter m3857a(Context context, C13640c cVar) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<String> d = C15029u.m526d((Collection) m3859a());
        C15025q.m553c(d);
        for (String str : d) {
            HashMap hashMap = new HashMap();
            hashMap.put(Person.KEY_KEY, str);
            arrayList.add(hashMap);
            HashMap hashMap2 = new HashMap();
            String d2 = cVar.m3744d(str);
            C15149k.m383a((Object) d2, "configMgr.getStringValue(key)");
            hashMap2.put(Person.KEY_KEY, C13449h0.m4036a(d2));
            arrayList2.add(C15020l.m567a(hashMap2));
        }
        return new SimpleExpandableListAdapter(context, arrayList, 17367046, new String[]{Person.KEY_KEY}, new int[]{16908308}, arrayList2, 17367052, new String[]{Person.KEY_KEY}, new int[]{16908308});
    }

    /* renamed from: a */
    public final Set<String> m3859a() {
        AbstractC14974f fVar = f30529b;
        AbstractC14906i iVar = f30528a[0];
        return (Set) fVar.getValue();
    }
}
