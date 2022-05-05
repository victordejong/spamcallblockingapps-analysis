package p459j.p460a.p582w0.p590x4;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.provider.FontsContractCompat;
import com.appsflyer.AppsFlyerLib;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import gogolook.callgogolook2.gson.CInfo;
import gogolook.callgogolook2.gson.CallStats;
import java.util.List;
import p081h.p160h.p161a.p168n.C6260a;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.p591a0.C14234c;
/* renamed from: j.a.w0.x4.f */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/f.class */
public class C14261f {

    /* renamed from: j.a.w0.x4.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/f$a.class */
    public enum EnumC14262a {
        call,
        block,
        ndp,
        yes,
        no,
        report_tag,
        report_private,
        report_private_direct,
        report_spam,
        view_more,
        refresh,
        check,
        add_contact,
        report_favorite
    }

    /* renamed from: j.a.w0.x4.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/f$b.class */
    public enum EnumC14263b {
        info,
        question_spam,
        question_info,
        question_suggest_spam,
        question_suggest_info,
        question_diff_name,
        direct_ask,
        missed_call,
        whoscall_card,
        no_internet,
        private_number,
        category_report,
        expire_confirmation,
        direct_ask_2lv2
    }

    /* renamed from: j.a.w0.x4.f$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/f$c.class */
    public enum EnumC14264c {
        a_Incoming_Call,
        a_Outgoing_Call,
        a_CD_Show_Dialog,
        a_CD_Show_Data,
        a_CED_View,
        a_CED_Close,
        a_CED_Action,
        a_CED_Action_Done,
        a_Multiple_CED_View,
        a_Multiple_CED_Close,
        a_Multiple_CED_Check,
        a_Multiple_CED_Click_Notification,
        a_Message_Dialog_View,
        a_Message_Dialog_Click_Image,
        a_Message_Dialog_Click_Positive,
        a_Message_Dialog_Click_Negative
    }

    /* renamed from: j.a.w0.x4.f$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/f$d.class */
    public enum EnumC14265d {
        a_Intro_View,
        a_Intro_Accept,
        a_Intro_Refuse_View,
        a_Intro_Refuse_Accept,
        a_Intro_Refuse_Refuse,
        a_Disclosure_Notification,
        a_Disclosure_Popup_View,
        a_Disclosure_Popup_Accept,
        a_Disclosure_Popup_Refuse,
        a_Cover_Permission_View,
        a_Cover_Permission_Activate,
        a_Create_Whoscall_Card,
        a_Card_Intro_View,
        a_Card_Intro_Create,
        a_Card_Intro_Close
    }

    /* renamed from: j.a.w0.x4.f$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/f$e.class */
    public enum EnumC14266e {
        local_cache,
        offline_db,
        server
    }

    /* renamed from: j.a.w0.x4.f$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/f$f.class */
    public enum EnumC14267f {
        facebook,
        google
    }

    /* renamed from: j.a.w0.x4.f$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/f$g.class */
    public enum EnumC14268g {
        success,
        no_network,
        fail
    }

    /* renamed from: a */
    public static String m1986a(CInfo cInfo) {
        return cInfo == null ? "" : cInfo.cache ? EnumC14266e.local_cache.toString() : cInfo.offline ? EnumC14266e.offline_db.toString() : cInfo.server.equals(CInfo.ServerEnum.DATA.toString()) ? EnumC14266e.server.toString() : "";
    }

    /* renamed from: a */
    public static void m1991a() {
        m1988a(MyApplication.m29013o(), "Vas_scanicon_click", Bundle.EMPTY);
        AppsFlyerLib.getInstance().trackEvent(MyApplication.m29013o(), "Vas_scanicon_click", null);
    }

    /* renamed from: a */
    public static void m1990a(int i, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(FontsContractCompat.Columns.RESULT_CODE, i2);
        bundle.putInt("type", i);
        m1988a(MyApplication.m29013o(), "a_Register_Google_Result", bundle);
    }

    /* renamed from: a */
    public static void m1989a(long j) {
        if (j > 0) {
            Bundle bundle = new Bundle();
            bundle.putLong("mopub_sdk_init_duration", j);
            m1988a(MyApplication.m29013o(), "a_MoPub_Sdk_Init_Duration_App_Launch", bundle);
        }
    }

    @Deprecated
    /* renamed from: a */
    public static void m1988a(Context context, String str, @Nullable Bundle bundle) {
        if (bundle == null) {
            bundle = Bundle.EMPTY;
        }
        C14234c.m2095a(context, str, bundle);
    }

    /* renamed from: a */
    public static void m1987a(Bundle bundle, CInfo cInfo) {
        if (cInfo != null) {
            bundle.putBoolean("contact", cInfo.contact);
            bundle.putBoolean("spam", cInfo.spam);
            bundle.putBoolean("name", cInfo.name);
            bundle.putString("source", m1986a(cInfo));
            bundle.putString("biz_category", cInfo.biz_category);
            bundle.putString("spam_type", cInfo.spam_type);
        }
    }

    /* renamed from: a */
    public static void m1985a(EnumC14264c cVar) {
        m1988a(MyApplication.m29013o(), cVar.toString(), Bundle.EMPTY);
    }

    /* renamed from: a */
    public static void m1984a(EnumC14264c cVar, CallStats.Call call, CInfo cInfo) {
        Bundle bundle = new Bundle();
        m1987a(bundle, cInfo);
        if (cVar == EnumC14264c.a_Incoming_Call) {
            bundle.putBoolean("pickup", !call.m28477z());
        }
        bundle.putString("network_type", C14217x3.m2148e());
        m1988a(MyApplication.m29013o(), cVar.toString(), bundle);
    }

    /* renamed from: a */
    public static void m1983a(EnumC14264c cVar, CallStats.Call call, String str, long j) {
        Bundle bundle = new Bundle();
        if (cVar == EnumC14264c.a_CD_Show_Data) {
            CInfo d = call.m28503d(str);
            if (d != null) {
                m1987a(bundle, d);
            }
            bundle.putString("network_type", C14217x3.m2148e());
        }
        bundle.putString("direction", call.m28529B() ? "out" : "in");
        bundle.putLong("response_time", j);
        m1988a(MyApplication.m29013o(), cVar.toString(), bundle);
    }

    /* renamed from: a */
    public static void m1982a(EnumC14264c cVar, EnumC14263b bVar, EnumC14262a aVar, CallStats.Call call, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("type", bVar.toString());
        m1987a(bundle, call.m28503d(str));
        bundle.putBoolean("pickup", !call.m28477z());
        bundle.putString("direction", call.m28529B() ? "out" : "in");
        if (aVar != null) {
            bundle.putString("action", aVar.toString());
        }
        m1988a(MyApplication.m29013o(), cVar.toString(), bundle);
    }

    /* renamed from: a */
    public static void m1981a(EnumC14264c cVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("message_name", str);
        m1988a(MyApplication.m29013o(), cVar.toString(), bundle);
    }

    /* renamed from: a */
    public static void m1980a(EnumC14265d dVar) {
        m1979a(dVar, (String) null, (String) null);
    }

    /* renamed from: a */
    public static void m1979a(EnumC14265d dVar, @Nullable String str, @Nullable String str2) {
        Bundle bundle;
        if (str == null || str2 == null) {
            bundle = null;
        } else {
            Bundle bundle2 = new Bundle();
            bundle2.putString(str, str2);
            bundle = bundle2;
        }
        Context o = MyApplication.m29013o();
        String str3 = dVar.toString();
        Bundle bundle3 = bundle;
        if (bundle == null) {
            bundle3 = Bundle.EMPTY;
        }
        m1988a(o, str3, bundle3);
    }

    /* renamed from: a */
    public static void m1978a(EnumC14267f fVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("account_type", fVar.name());
        bundle.putString("source", str);
        m1988a(MyApplication.m29013o(), "a_Register_Button_Click", bundle);
    }

    /* renamed from: a */
    public static void m1977a(EnumC14267f fVar, String str, EnumC14268g gVar) {
        if (fVar == EnumC14267f.facebook) {
            C14299q.m1724e(str, EnumC14268g.success.ordinal());
        } else if (fVar == EnumC14267f.google) {
            C14299q.m1719f(str, EnumC14268g.success.ordinal());
        }
        Bundle bundle = new Bundle();
        bundle.putString("account_type", fVar.name());
        bundle.putString("source", str);
        bundle.putString("result", gVar.name());
        m1988a(MyApplication.m29013o(), "a_Register_Result", bundle);
    }

    /* renamed from: a */
    public static void m1976a(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        m1988a(MyApplication.m29013o(), "a_Ad_close_by_user_action", bundle);
    }

    /* renamed from: a */
    public static void m1975a(String str, long j) {
        if (j > 0) {
            Bundle bundle = new Bundle();
            bundle.putString(AdsSettingsKt.KEY_AD_UNIT, str);
            bundle.putLong("mopub_sdk_init_duration", j);
            m1988a(MyApplication.m29013o(), "a_MoPub_Sdk_Init_Duration_Request_Ad", bundle);
        }
    }

    /* renamed from: a */
    public static void m1974a(String str, @Nullable Bundle bundle) {
        Context o = MyApplication.m29013o();
        if (bundle == null) {
            bundle = Bundle.EMPTY;
        }
        m1988a(o, str, bundle);
    }

    /* renamed from: a */
    public static void m1973a(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("region", str2);
        m1988a(MyApplication.m29013o(), str, bundle);
    }

    /* renamed from: a */
    public static void m1972a(@NonNull List<C6260a> list) {
        for (C6260a aVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString(AdsSettingsKt.KEY_AD_UNIT, aVar.m23464d());
            bundle.putString("ad_source", aVar.m23466c().m23635a());
            bundle.putString("fetch_status", aVar.m23459g());
            bundle.putString("adN_fetch_status", aVar.m23468b());
            bundle.putString("custom_event", aVar.m23462e());
            bundle.putLong("total_fetch_latency", aVar.m23454l());
            bundle.putLong("fetch_start_time", aVar.m23460f());
            bundle.putLong("fetch_stop_time", aVar.m23458h());
            bundle.putLong("custom_event_latency", aVar.m23457i());
            bundle.putLong("adN_fetch_latency", aVar.m23472a());
            m1988a(MyApplication.m29013o(), "a_Ad_Fetch_Log", bundle);
        }
    }

    /* renamed from: a */
    public static void m1971a(boolean z) {
        m1988a(MyApplication.m29013o(), z ? "callend_contact_close" : "callend_stranger_close", Bundle.EMPTY);
    }

    /* renamed from: b */
    public static void m1970b() {
        m1988a(MyApplication.m29013o(), "calllog_inventory", Bundle.EMPTY);
    }

    /* renamed from: b */
    public static void m1969b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("category", str);
        m1988a(MyApplication.m29013o(), "a_Track_NewsCenter_Received", bundle);
    }

    /* renamed from: b */
    public static void m1968b(boolean z) {
        m1988a(MyApplication.m29013o(), z ? "callend_contact" : "callend_stranger", Bundle.EMPTY);
    }

    /* renamed from: c */
    public static void m1967c() {
        m1988a(MyApplication.m29013o(), "a_Offline_Db_Noti_Open", Bundle.EMPTY);
    }

    /* renamed from: c */
    public static void m1966c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        m1988a(MyApplication.m29013o(), "a_Register_Page_View", bundle);
    }

    /* renamed from: c */
    public static void m1965c(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("status", z);
        m1988a(MyApplication.m29013o(), "user_subscription_status", bundle);
    }

    /* renamed from: d */
    public static void m1964d() {
        m1988a(MyApplication.m29013o(), "Vas_resultpage_view_none", Bundle.EMPTY);
        AppsFlyerLib.getInstance().trackEvent(MyApplication.m29013o(), "Vas_resultpage_view_none", null);
    }

    /* renamed from: d */
    public static void m1963d(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        m1988a(MyApplication.m29013o(), "a_Register_Skip", bundle);
    }

    /* renamed from: e */
    public static void m1962e() {
        m1988a(MyApplication.m29013o(), "Vas_resultpage_view_promotion", Bundle.EMPTY);
        AppsFlyerLib.getInstance().trackEvent(MyApplication.m29013o(), "Vas_resultpage_view_promotion", null);
    }

    /* renamed from: f */
    public static void m1961f() {
        m1988a(MyApplication.m29013o(), "Vas_resultpage_view_sub", Bundle.EMPTY);
        AppsFlyerLib.getInstance().trackEvent(MyApplication.m29013o(), "Vas_resultpage_view_sub", null);
    }
}
