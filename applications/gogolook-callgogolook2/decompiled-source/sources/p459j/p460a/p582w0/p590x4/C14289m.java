package p459j.p460a.p582w0.p590x4;

import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.aotter.net.trek.model.Entity;
import com.google.common.base.Joiner;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CInfo;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.main.calllog.CallLogsFragment;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.phonebook.FavoriteFragment;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import gogolook.callgogolook2.search.TextSearchFragment;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p183i.C6359b;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p463b0.EnumC11144p;
import p459j.p460a.p463b0.p465r.C11214c;
import p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p515i0.p516a.C12419d;
import p459j.p460a.p515i0.p516a.C12436l;
import p459j.p460a.p521j0.p522u.p523d.C12629k0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12895f;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14042j4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p582w0.p590x4.C14296p;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Actions;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.x4.m */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/m.class */
public class C14289m {

    /* renamed from: a */
    public static final HashMap<NumberInfo.InfoSource, Integer> f31998a = new HashMap<>();

    /* renamed from: b */
    public static final HashMap<NumberInfo.UsefulInfoType, Integer> f31999b = new HashMap<>();

    /* renamed from: c */
    public static final HashMap<C14108o4.EnumC14109a, Integer> f32000c = new HashMap<>();

    /* renamed from: f */
    public static HashMap<Integer, String> f32003f = new HashMap<>();

    /* renamed from: g */
    public static HashMap<Integer, String> f32004g = new HashMap<>();

    /* renamed from: h */
    public static HashMap<Integer, Integer> f32005h = new HashMap<>();

    /* renamed from: e */
    public static final HashMap<EnumC11144p, String> f32002e = new HashMap<>();

    /* renamed from: d */
    public static final HashMap<Class, String> f32001d = new HashMap<>();

    /* renamed from: l */
    public static final HashMap<TextSearchFragment.EnumC5125k1, Integer> f32009l = new HashMap<>();

    /* renamed from: k */
    public static HashMap<Integer, String> f32008k = new HashMap<>();

    /* renamed from: m */
    public static final String[] f32010m = {"recent", "label_curate", "label_auto", "keyword_curate", "keyword_auto", "history", "sug_label", "sug_kw", "icon", "keypad"};

    /* renamed from: i */
    public static final String[] f32006i = {"new", "dialog_pop", "setting"};

    /* renamed from: j */
    public static final String[] f32007j = {"yes", "x", "out", "back"};

    /* renamed from: j.a.w0.x4.m$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/m$a.class */
    public static final class C14290a extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ String f32011d;

        /* renamed from: e */
        public final /* synthetic */ int f32012e;

        /* renamed from: f */
        public final /* synthetic */ int f32013f;

        /* renamed from: j.a.w0.x4.m$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/m$a$a.class */
        public class C14291a implements Single.OnSubscribe<Object> {

            /* renamed from: a */
            public final /* synthetic */ NumberInfo f32014a;

            public C14291a(NumberInfo numberInfo) {
                this.f32014a = numberInfo;
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Object> singleSubscriber) {
                String a = C14042j4.m2727a(C14290a.this.f32011d);
                C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
                aVar.m1808a("ver", (Integer) 1);
                aVar.m1808a("from", Integer.valueOf(C14290a.this.f32012e));
                aVar.m1808a("block_page", (Integer) 4);
                aVar.m1807a("remote_e164", C14290a.this.f32011d);
                aVar.m1807a("spam_category", this.f32014a.m28383M());
                aVar.m1808a("contact", Integer.valueOf(!TextUtils.isEmpty(C14217x3.m2146e(MyApplication.m29013o(), C14290a.this.f32011d)) ? 1 : 0));
                aVar.m1808a("s_spam", Integer.valueOf(this.f32014a.m28381O() > 0 ? 1 : 0));
                aVar.m1807a("s_name", this.f32014a.m28393C());
                aVar.m1808a("c_spam", Integer.valueOf(1 ^ (TextUtils.isEmpty(a) ? 1 : 0)));
                aVar.m1807a("c_name", a);
                aVar.m1808a("type", Integer.valueOf(C14290a.this.f32013f));
                aVar.m1808a("default_sms_enable", Integer.valueOf(C12810o.m5236i() ? 1 : 0));
                C14296p.m1830a("whoscall_block_number", aVar.m1811a());
                singleSubscriber.onSuccess(null);
            }
        }

        public C14290a(String str, int i, int i2) {
            this.f32011d = str;
            this.f32012e = i;
            this.f32013f = i2;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (numberInfo.m28296s0()) {
                Single.create(new C14291a(numberInfo)).subscribeOn(Schedulers.m0io()).subscribe(Actions.empty(), C14081m3.m2611a());
            }
        }
    }

    /* renamed from: j.a.w0.x4.m$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/m$b.class */
    public static final class C14292b extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ String f32016d;

        /* renamed from: j.a.w0.x4.m$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/m$b$a.class */
        public class C14293a implements Single.OnSubscribe<Object> {

            /* renamed from: a */
            public final /* synthetic */ NumberInfo f32017a;

            public C14293a(NumberInfo numberInfo) {
                this.f32017a = numberInfo;
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Object> singleSubscriber) {
                String a = C14042j4.m2727a(C14292b.this.f32016d);
                C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
                aVar.m1808a("ver", (Integer) 1);
                aVar.m1807a("remote_e164", C14292b.this.f32016d);
                aVar.m1807a("spam_category", this.f32017a.m28383M());
                aVar.m1808a("contact", Integer.valueOf(!TextUtils.isEmpty(C14217x3.m2146e(MyApplication.m29013o(), C14292b.this.f32016d)) ? 1 : 0));
                aVar.m1808a("s_spam", Integer.valueOf(this.f32017a.m28381O() > 0 ? 1 : 0));
                aVar.m1807a("s_name", this.f32017a.m28393C());
                aVar.m1808a("c_spam", Integer.valueOf(!TextUtils.isEmpty(a) ? 1 : 0));
                aVar.m1808a("c_name", Integer.valueOf(!TextUtils.isEmpty(a) ? 1 : 0));
                C14296p.m1830a("whoscall_blockcall", aVar.m1811a());
                singleSubscriber.onSuccess(null);
            }
        }

        public C14292b(String str) {
            this.f32016d = str;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (numberInfo.m28296s0()) {
                Single.create(new C14293a(numberInfo)).subscribeOn(Schedulers.m0io()).subscribe(Actions.empty(), C14081m3.m2611a());
            }
        }
    }

    static {
        f31998a.put(NumberInfo.InfoSource.NONE, 0);
        f31998a.put(NumberInfo.InfoSource.OFFLINE_DB, 1);
        f31998a.put(NumberInfo.InfoSource.SERVER, 2);
        f31998a.put(NumberInfo.InfoSource.MEMORY_CACHE, 3);
        f31998a.put(NumberInfo.InfoSource.DB_CACHE, 4);
        f31998a.put(NumberInfo.InfoSource.PERSONAL_DB, 5);
        f31999b.put(NumberInfo.UsefulInfoType.CALL_OUT_COUNT, 1);
        f31999b.put(NumberInfo.UsefulInfoType.PICK_UP_COUNT, 2);
        f31999b.put(NumberInfo.UsefulInfoType.ANSWER_RATE, 3);
        f31999b.put(NumberInfo.UsefulInfoType.FOREIGN_NUMBER, 4);
        f32000c.put(C14108o4.EnumC14109a.Unknown, 0);
        f32000c.put(C14108o4.EnumC14109a.Mobile_2G, 1);
        f32000c.put(C14108o4.EnumC14109a.Mobile_3G, 2);
        f32000c.put(C14108o4.EnumC14109a.Mobile_4G, 3);
        f32003f.put(1, "calllog");
        f32003f.put(2, "contact");
        f32003f.put(3, "search_h");
        f32003f.put(4, "search_r");
        f32003f.put(6, "fav");
        f32003f.put(8, "search_r");
        f32003f.put(9, "search_h");
        f32003f.put(15, "CED");
        f32003f.put(16, "CTC");
        f32003f.put(17, "block");
        f32003f.put(18, "report");
        f32003f.put(19, "calllog");
        f32003f.put(20, "contact");
        f32003f.put(21, "fav");
        f32003f.put(30, "dialer");
        f32003f.put(22, "dialer");
        f32003f.put(31, "dialer");
        f32003f.put(24, "dialer");
        f32003f.put(32, "dialer");
        f32003f.put(23, "dialer");
        f32003f.put(33, "dialer");
        f32003f.put(25, "dialer");
        f32003f.put(34, "dialer");
        f32003f.put(35, "dialer");
        f32003f.put(26, "CTC");
        f32003f.put(27, "CED");
        f32003f.put(29, "outside");
        f32003f.put(28, NotificationCompat.CATEGORY_RECOMMENDATION);
        f32003f.put(37, NotificationCompat.CATEGORY_RECOMMENDATION);
        f32004g.put(30, "dialer_frequent");
        f32004g.put(22, "dialer_frequent");
        f32004g.put(31, "dialer_frequent");
        f32004g.put(24, "dialer_frequent");
        f32004g.put(32, "dialer_search");
        f32004g.put(33, "dialer_search");
        f32004g.put(23, "dialer_search");
        f32004g.put(25, "dialer_search");
        f32004g.put(34, "dialer_input");
        f32004g.put(35, "dialer_input");
        f32005h.put(1, 0);
        f32005h.put(2, 0);
        f32005h.put(3, 0);
        f32005h.put(4, 0);
        f32005h.put(6, 0);
        f32005h.put(8, 1);
        f32005h.put(9, 1);
        f32005h.put(12, 0);
        f32005h.put(15, 0);
        f32005h.put(16, 0);
        f32005h.put(17, 1);
        f32005h.put(18, 1);
        f32005h.put(19, 1);
        f32005h.put(20, 1);
        f32005h.put(21, 1);
        f32005h.put(22, 1);
        f32005h.put(24, 1);
        f32005h.put(23, 1);
        f32005h.put(25, 1);
        f32005h.put(26, 1);
        f32005h.put(27, 1);
        f32005h.put(37, 0);
        f32005h.put(28, 1);
        f32002e.put(EnumC11144p.CALLLOG, "calllog");
        f32002e.put(EnumC11144p.CONTACT, "contacts");
        f32002e.put(EnumC11144p.SMS, "sms");
        f32001d.put(CallLogsFragment.class, "calllog");
        f32001d.put(View$OnLongClickListenerC11269m.class, "dialpad");
        f32001d.put(C11214c.class, "contacts");
        f32001d.put(TextSearchFragment.class, "search");
        f32001d.put(FavoriteFragment.class, Entity.ENTITY_FAV_KEY);
        f32001d.put(C12895f.class, "block");
        f32001d.put(OfflineDbActivity.class, "db");
        f32009l.put(TextSearchFragment.EnumC5125k1.NONE, 0);
        f32009l.put(TextSearchFragment.EnumC5125k1.KEYPAD, 1);
        f32009l.put(TextSearchFragment.EnumC5125k1.SEARCH_ICON, 2);
        f32009l.put(TextSearchFragment.EnumC5125k1.SEARCH_ON_MAP, 3);
        f32009l.put(TextSearchFragment.EnumC5125k1.SEARCH_AREA, 4);
        f32009l.put(TextSearchFragment.EnumC5125k1.SEARCH_MORE, 5);
        f32008k.put(30, "dialercall");
        f32008k.put(22, "dialercall");
        f32008k.put(31, "dialercall");
        f32008k.put(24, "dialercall");
        f32008k.put(32, "dialercall");
        f32008k.put(33, "dialercall");
        f32008k.put(23, "dialercall");
        f32008k.put(25, "dialercall");
        f32008k.put(34, "dialercall");
        f32008k.put(35, "dialercall");
        f32008k.put(-1, "new");
        f32008k.put(0, "");
    }

    /* renamed from: a */
    public static int m1915a(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 5;
            case 3:
            case 6:
            case 9:
            case 10:
            default:
                return -2;
            case 4:
                return 1;
            case 5:
                return 3;
            case 7:
                return 2;
            case 8:
                return 0;
            case 11:
            case 12:
            case 13:
                return -1;
        }
    }

    /* renamed from: a */
    public static int m1902a(TextSearchFragment.EnumC5125k1 k1Var) {
        if (f32009l.containsKey(k1Var)) {
            return f32009l.get(k1Var).intValue();
        }
        return 0;
    }

    /* renamed from: a */
    public static void m1916a() {
        m1848i(1);
    }

    /* renamed from: a */
    public static void m1914a(int i, int i2) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("source", Integer.valueOf(i));
        aVar.m1808a("action", Integer.valueOf(i2));
        C14296p.m1830a("whoscall_notification_types", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1913a(int i, int i2, int i3) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 1);
        aVar.m1808a("from", Integer.valueOf(i));
        aVar.m1808a("block_page", Integer.valueOf(i2));
        aVar.m1807a("remote_e164", "");
        aVar.m1807a("spam_category", "");
        aVar.m1808a("contact", (Integer) 0);
        aVar.m1808a("s_spam", (Integer) 0);
        aVar.m1807a("s_name", "");
        aVar.m1808a("c_spam", (Integer) 0);
        aVar.m1807a("c_name", "");
        aVar.m1808a("type", Integer.valueOf(i3));
        aVar.m1808a("default_sms_enable", Integer.valueOf(C12810o.m5236i() ? 1 : 0));
        C14296p.m1830a("whoscall_block_number", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1912a(int i, int i2, int i3, int i4, int i5) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("source", Integer.valueOf(i));
        aVar.m1808a("dialog_type", Integer.valueOf(i2));
        aVar.m1808a("action", Integer.valueOf(i3));
        aVar.m1808a("network_type", Integer.valueOf(i4));
        aVar.m1808a("restrict_type", Integer.valueOf(i5));
        C14296p.m1830a("whoscall_popup", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1911a(int i, int i2, int i3, int i4, int i5, List<String> list, List<String> list2, String str, boolean z, int i6) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("source", Integer.valueOf(i));
        aVar.m1808a("pv", (Integer) 1);
        aVar.m1808a("action", Integer.valueOf(i2));
        aVar.m1807a("receiver", String.valueOf(i3));
        aVar.m1807a("attachment", String.valueOf(i4));
        aVar.m1808a("duration", Integer.valueOf(i5));
        String str2 = "";
        aVar.m1807a("remote_num", list != null ? Joiner.m31135on(",").join(list) : "");
        if (list2 != null) {
            str2 = Joiner.m31135on(",").join(list2);
        }
        aVar.m1807a("remote_e164", str2);
        aVar.m1807a(CacheIndexRealmObject.DISPLAY_NAME, str);
        aVar.m1808a("has_url", Integer.valueOf(z ? 1 : 0));
        aVar.m1808a("sms_type", Integer.valueOf(i6));
        aVar.m1808a("default_sms_app_status", Integer.valueOf(1 ^ (C12810o.m5236i() ? 1 : 0)));
        C14296p.m1830a("whoscall_defaultsms_conversation_page", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1910a(int i, int i2, int i3, String str) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("filter_type", Integer.valueOf(i));
        aVar.m1808a("filter_type_promotion", Integer.valueOf(i2));
        aVar.m1808a("filter_type_cancel", Integer.valueOf(i3));
        aVar.m1807a("num", str);
        C14296p.m1830a("whoscall_vas_message", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1909a(int i, int i2, String str) {
        C11052i.m10328e().m10340a(str, new C14290a(str, i, i2), 0, EnumC11047e.Other);
    }

    /* renamed from: a */
    public static void m1908a(int i, int i2, boolean z, int i3, int i4, @Nullable String str, long j) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("dbtype", Integer.valueOf(i));
        aVar.m1808a("dbver", Integer.valueOf(i2));
        aVar.m1808a("update", Integer.valueOf(z ? 1 : 0));
        aVar.m1808a("action", Integer.valueOf(i3));
        aVar.m1808a("fail_cause", Integer.valueOf(i4));
        aVar.m1808a("download_time", Integer.valueOf((int) j));
        if (str == null) {
            str = "none";
        }
        aVar.m1807a("fail_message", str);
        C14296p.m1830a("whoscall_db_download_v2", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1907a(int i, int i2, boolean z, boolean z2, boolean z3, int i3) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("issue_categ", Integer.valueOf(i));
        aVar.m1808a("action", Integer.valueOf(i2));
        aVar.m1808a("comment", Integer.valueOf(z ? 1 : 0));
        aVar.m1808a("email", Integer.valueOf(z2 ? 1 : 0));
        aVar.m1808a("hasName", Integer.valueOf(z3 ? 1 : 0));
        aVar.m1808a("picture", Integer.valueOf(i3));
        C14296p.m1830a("whoscall_zendesk_cs", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1906a(int i, @Nullable C14108o4.EnumC14109a aVar, Integer num, Integer num2, int i2, int i3, int i4) {
        C14296p.C14297a.C14298a aVar2 = new C14296p.C14297a.C14298a();
        aVar2.m1808a("source", Integer.valueOf(i));
        aVar2.m1808a("mobile_network_type", f32000c.get(aVar));
        aVar2.m1808a("dialog_speed", num);
        aVar2.m1808a("info_search_speed", num2);
        aVar2.m1808a("type", Integer.valueOf(i2));
        aVar2.m1808a("action", Integer.valueOf(i3));
        aVar2.m1808a(SmsUrlScanResultRealmObject.RATING, Integer.valueOf(i4));
        C14296p.m1830a("whoscall_rating", aVar2.m1811a());
    }

    /* renamed from: a */
    public static void m1905a(int i, String str) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 1);
        aVar.m1808a("action", Integer.valueOf(i));
        aVar.m1807a("event_name", str);
        C14296p.m1830a("whoscall_notification", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1904a(int i, boolean z) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a(NotificationCompat.CATEGORY_EVENT, Integer.valueOf(i));
        aVar.m1808a("call_type", Integer.valueOf(z ? 2 : 1));
        C14296p.m1830a("whoscall_incallscreen_call", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1903a(int i, boolean z, int i2, boolean z2, int i3) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("type", Integer.valueOf(i));
        int i4 = 2;
        aVar.m1808a("success", Integer.valueOf(z ? 2 : 1));
        aVar.m1808a("time", Integer.valueOf(i2));
        if (z2) {
            i4 = 1;
        }
        aVar.m1808a("is_owner", Integer.valueOf(i4));
        aVar.m1808a("reason", Integer.valueOf(i3));
        C14296p.m1830a("whoscall_number_verificaiton", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1901a(C14005a.C14007b bVar) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("version", Integer.valueOf(bVar.m2850k()));
        aVar.m1808a("source", Integer.valueOf(bVar.m2854g()));
        aVar.m1808a("url_scan_result", Integer.valueOf(bVar.m2855f()));
        aVar.m1807a("checked_url", bVar.m2870a());
        aVar.m1807a("remote_num", bVar.m2857e());
        aVar.m1807a("remote_e164", bVar.m2860d());
        aVar.m1807a("received_url", bVar.m2866b());
        aVar.m1808a("url_redirect_times", Integer.valueOf(bVar.m2851j()));
        aVar.m1808a("url_checking_times", Integer.valueOf(bVar.m2852i()));
        aVar.m1808a("url_checking_duration", Integer.valueOf((int) bVar.m2863c()));
        aVar.m1807a("3rd_party_url_scan_result", bVar.m2853h());
        C14296p.m1830a("whoscall_sms_url_scanner", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1900a(Integer num) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("action", num);
        C14296p.m1830a("whoscall_CTC", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1899a(Integer num, Integer num2) {
        m1896a(num, num2, (Integer) null, (String) null);
    }

    /* renamed from: a */
    public static void m1898a(Integer num, Integer num2, Integer num3) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("toast", num);
        aVar.m1808a("warning_ced", num2);
        aVar.m1808a("action", num3);
        C14296p.m1830a("whoscall_incallscreen_unauthorized_function", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1897a(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("pv", num);
        aVar.m1808a("action", num2);
        aVar.m1808a("longpress", num3);
        aVar.m1808a("clickmenu", num4);
        aVar.m1808a("action_complete", num5);
        aVar.m1808a("filter_list", num6);
        C14296p.m1830a("whoscall_calllog", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1896a(Integer num, Integer num2, Integer num3, String str) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("option", num);
        aVar.m1808a("option_btn", num2);
        aVar.m1808a("plus_option", num3);
        aVar.m1807a("plus_option_str", str);
        C14296p.m1830a("whoscall_blockpage_v2", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1895a(Integer num, Integer num2, Integer num3, String str, String str2) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("pv", num);
        aVar.m1808a("action", num2);
        aVar.m1808a("longpress", num3);
        aVar.m1807a("entry_point", str);
        aVar.m1807a("action_section", str2);
        C14296p.m1830a("whoscall_dialpad_v2", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1894a(Integer num, String str, Integer num2) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("action", num);
        aVar.m1807a("action_clicktype", str);
        aVar.m1808a("SRP_click_position", num2);
        C14296p.m1830a("whoscall_search_action", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1893a(String str) {
        C11052i.m10328e().m10340a(str, new C14292b(str), 0, EnumC11047e.Other);
    }

    /* renamed from: a */
    public static void m1892a(String str, int i) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("count", (Integer) 1);
        aVar.m1807a("subtab", str);
        aVar.m1808a("duration", Integer.valueOf(i));
        C14296p.m1830a("whoscall_call_tab", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1891a(String str, String str2, CallStats.Call call, boolean z, @NonNull NumberInfo.InfoSource infoSource, NumberInfo.CloudFrontType cloudFrontType, @NonNull Integer num, boolean z2, @Nullable String str3, @Nullable NumberInfo.UsefulInfoType usefulInfoType, boolean z3, @Nullable String str4, boolean z4, boolean z5, boolean z6, @Nullable C14108o4.EnumC14109a aVar, boolean z7, @Nullable String str5) {
        JSONObject g = C12436l.m6168g();
        try {
            CInfo d = call.m28503d(str2);
            if (d != null) {
                g.put("hit", d.hit_source.get(NumberInfo.InfoSource.PERSONAL_DB.m28282a()));
            }
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
        }
        C14296p.C14297a.C14298a aVar2 = new C14296p.C14297a.C14298a();
        int i = 2;
        aVar2.m1808a("call_type", Integer.valueOf(call.m28529B() ? 2 : 1));
        aVar2.m1808a("has_info", Integer.valueOf(z ? 1 : 2));
        aVar2.m1808a("info_source", f31998a.get(infoSource));
        aVar2.m1808a("cloudfront_hit", Integer.valueOf(cloudFrontType == NumberInfo.CloudFrontType.HIT ? 2 : cloudFrontType == NumberInfo.CloudFrontType.HAS_CF_HEADER_BUT_NO_HIT ? 1 : 0));
        aVar2.m1808a("info_search_speed", num);
        aVar2.m1808a("name", Integer.valueOf(z2 ? 1 : 2));
        aVar2.m1807a(NumberInfo.KEY_NAME_SOURCE, str3);
        aVar2.m1808a("useful_info", f31999b.get(usefulInfoType));
        aVar2.m1808a("category_biz", Integer.valueOf(z3 ? 1 : 2));
        aVar2.m1807a("category_spam", str4);
        aVar2.m1808a("whoscall_card", Integer.valueOf(z4 ? 1 : 0));
        aVar2.m1808a("web_search_result", Integer.valueOf(z5 ? 1 : 0));
        if (z6) {
            i = 1;
        }
        aVar2.m1808a("contact", Integer.valueOf(i));
        aVar2.m1808a("mobile_network_type", f32000c.get(aVar));
        aVar2.m1808a("request_error", Integer.valueOf(z7 ? 1 : 0));
        aVar2.m1807a("info_origin", str5);
        aVar2.m1807a("remote_num", str);
        aVar2.m1807a("uuid", call.m28482u());
        aVar2.m1807a("personal_db", g.toString());
        C14296p.m1830a("whoscall_calldialog_info_v2", aVar2.m1811a());
    }

    /* renamed from: a */
    public static void m1890a(String str, String str2, String str3, boolean z, boolean z2, String str4, boolean z3, String str5, int i) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 1);
        aVar.m1807a("remote_num", str);
        aVar.m1807a("remote_e164", str2);
        aVar.m1807a("spam_category", str3);
        aVar.m1808a("contact", Integer.valueOf(z ? 1 : 0));
        aVar.m1808a("s_spam", Integer.valueOf(z2 ? 1 : 0));
        aVar.m1807a("s_name", str4);
        aVar.m1808a("c_spam", Integer.valueOf(z3 ? 1 : 0));
        aVar.m1807a("c_name", str5);
        aVar.m1808a("block_reason", Integer.valueOf(m1915a(i)));
        C14296p.m1830a("whoscall_blocked_sms_history", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1889a(String str, String str2, String str3, boolean z, boolean z2, String str4, boolean z3, String str5, int i, boolean z4, boolean z5, boolean z6, String str6) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 2);
        aVar.m1807a("remote_num", str);
        aVar.m1807a("remote_e164", str2);
        aVar.m1807a("spam_category", str3);
        aVar.m1808a("contact", Integer.valueOf(z ? 1 : 0));
        aVar.m1808a("s_spam", Integer.valueOf(z2 ? 1 : 0));
        aVar.m1807a("s_name", str4);
        aVar.m1808a("c_spam", Integer.valueOf(z3 ? 1 : 0));
        aVar.m1807a("c_name", str5);
        aVar.m1808a("block_reason", Integer.valueOf(m1915a(i)));
        aVar.m1808a("result", Integer.valueOf(z4 ? 1 : 0));
        aVar.m1808a("default_phone", Integer.valueOf(z5 ? 1 : 0));
        aVar.m1808a("default_caller_id", Integer.valueOf(z6 ? 1 : 0));
        aVar.m1807a("block_from", str6);
        C14296p.m1830a("whoscall_blocked_history", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1888a(String str, boolean z) {
        m1896a((Integer) 9, Integer.valueOf(z ? 1 : 0), (Integer) null, str);
    }

    /* renamed from: a */
    public static void m1887a(String str, boolean z, boolean z2, String str2, String str3, String str4, String str5, boolean z3) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("number", str);
        aVar.m1808a("bar_165", Integer.valueOf(z ? 1 : 0));
        aVar.m1808a("bar_886", Integer.valueOf(z2 ? 1 : 0));
        aVar.m1807a("remote_e164", str2);
        aVar.m1807a("name_display", str3);
        aVar.m1807a("spam_display", str4);
        aVar.m1807a("call_stat", str5);
        aVar.m1808a("call_type", Integer.valueOf(z3 ? 2 : 1));
        C14296p.m1830a("whoscall_sn", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1886a(String str, boolean z, boolean z2, boolean z3, TextSearchFragment.EnumC5125k1 k1Var) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("search_submit_wording", str);
        aVar.m1808a("SRP_count", (Integer) 1);
        aVar.m1808a("location", Integer.valueOf(z ? 1 : 0));
        aVar.m1808a("gps", Integer.valueOf(z2 ? 1 : 0));
        aVar.m1808a("map_button_show", Integer.valueOf(z3 ? 1 : 0));
        aVar.m1808a("submit_type", Integer.valueOf(m1902a(k1Var)));
        C14296p.m1830a("whoscall_search_submit_and_display", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1885a(Map<String, Object> map, CInfo cInfo) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("num", cInfo.num);
        aVar.m1808a("c_name", Integer.valueOf(cInfo.name ? 1 : 0));
        aVar.m1808a("c_spam", Integer.valueOf(cInfo.spam ? 1 : 0));
        int i = 1;
        aVar.m1808a("s_name", Integer.valueOf((map == null || !map.containsKey("name") || !((Boolean) map.get("name")).booleanValue()) ? 0 : 1));
        if (map == null || !map.containsKey("spam") || !((Boolean) map.get("spam")).booleanValue()) {
            i = 0;
        }
        aVar.m1808a("s_spam", Integer.valueOf(i));
        aVar.m1807a("s_name_source", map != null ? (String) map.get(NumberInfo.KEY_NAME_SOURCE) : null);
        aVar.m1807a("c_name_type", cInfo.name_type);
        aVar.m1808a("contact", Integer.valueOf(cInfo.contact ? 1 : 0));
        aVar.m1807a("lookup_source", cInfo.lookup_source);
        aVar.m1807a("name_display", cInfo.name_d);
        aVar.m1807a("spam_category", cInfo.spam_type);
        aVar.m1808a("memory_cache", cInfo.hit_source.get(NumberInfo.InfoSource.MEMORY_CACHE.m28282a()));
        aVar.m1808a("common_db", cInfo.hit_source.get(NumberInfo.InfoSource.OFFLINE_DB.m28282a()));
        aVar.m1808a("personal_db", cInfo.hit_source.get(NumberInfo.InfoSource.PERSONAL_DB.m28282a()));
        aVar.m1808a("db_cache", cInfo.hit_source.get(NumberInfo.InfoSource.DB_CACHE.m28282a()));
        aVar.m1808a("server", cInfo.hit_source.get(NumberInfo.InfoSource.SERVER.m28282a()));
        C14296p.m1830a("whoscall_hitrate", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1884a(boolean z) {
        m1904a(1, z);
    }

    /* renamed from: a */
    public static void m1883a(boolean z, int i, Integer num, Integer num2, String str, boolean z2) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("general_source", Integer.valueOf(z ? 1 : 0));
        aVar.m1807a("inapp_source", m1869c(i));
        aVar.m1808a("inapp_position", m1879b(i));
        aVar.m1808a("number_info", num);
        aVar.m1808a("number_contact", num2);
        aVar.m1807a("number_type", str);
        aVar.m1807a("dialpad_callout_section", m1852g(i));
        aVar.m1808a("call_emergency_dialer_status", Integer.valueOf(z2 ? 1 : 0));
        C14296p.m1830a("whoscall_calloutsource", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1882a(boolean z, String str) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("readable", Integer.valueOf(z ? 1 : 0));
        aVar.m1807a("telecom", str);
        C14296p.m1830a("whoscall_background_mapping", aVar.m1811a());
    }

    /* renamed from: a */
    public static void m1881a(boolean z, boolean z2, boolean z3, @Nullable Integer num, int i) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        int i2 = 2;
        aVar.m1808a("call_type", Integer.valueOf(z ? 2 : 1));
        aVar.m1808a("contact", Integer.valueOf(z2 ? 1 : 2));
        aVar.m1808a("dialog_setting", Integer.valueOf(z3 ? 1 : 2));
        aVar.m1808a("dialog_speed", num);
        if (num != null) {
            i2 = 1;
        }
        aVar.m1808a("dialog_popup", Integer.valueOf(i2));
        aVar.m1808a("no_popup_reason", Integer.valueOf(i));
        C14296p.m1830a("whoscall_call_status", aVar.m1811a());
    }

    /* renamed from: b */
    public static Integer m1879b(int i) {
        if (f32005h.containsKey(Integer.valueOf(i))) {
            return f32005h.get(Integer.valueOf(i));
        }
        return 0;
    }

    /* renamed from: b */
    public static void m1880b() {
        m1848i(0);
    }

    /* renamed from: b */
    public static void m1878b(int i, int i2) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 1);
        aVar.m1808a("total", Integer.valueOf(i));
        aVar.m1808a("success", Integer.valueOf(i2));
        C14296p.m1830a("whoscall_SMS_success", aVar.m1811a());
    }

    /* renamed from: b */
    public static void m1877b(int i, int i2, int i3) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("dialer_creation_action", m1862d(i));
        aVar.m1807a("dialer_shortcut_create", m1857e(i2));
        aVar.m1807a("dialer_shortcut_trigger_type", m1854f(i3));
        C14296p.m1830a("whoscall_call_trigger", aVar.m1811a());
    }

    /* renamed from: b */
    public static void m1876b(int i, boolean z) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("action", Integer.valueOf(i));
        aVar.m1808a("supported", Integer.valueOf(z ? 1 : 2));
        C14296p.m1830a("whoscall_incallscreen_ui_event", aVar.m1811a());
    }

    /* renamed from: b */
    public static void m1875b(Integer num) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("group_amount", num);
        C14296p.m1830a("whoscall_contact_group", aVar.m1811a());
    }

    /* renamed from: b */
    public static void m1874b(Integer num, Integer num2) {
        m1896a(num, (Integer) null, num2, (String) null);
    }

    /* renamed from: b */
    public static void m1873b(String str) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("source", str);
        C14296p.m1830a("whoscall_sms_log", aVar.m1811a());
    }

    /* renamed from: b */
    public static void m1872b(String str, boolean z) {
        m1896a((Integer) 10, Integer.valueOf(z ? 1 : 0), (Integer) null, str);
    }

    /* renamed from: b */
    public static void m1871b(boolean z) {
        m1904a(2, z);
    }

    /* renamed from: c */
    public static String m1869c(int i) {
        return f32003f.containsKey(Integer.valueOf(i)) ? f32003f.get(Integer.valueOf(i)) : "calllog";
    }

    /* renamed from: c */
    public static void m1870c() {
        m1848i(3);
    }

    /* renamed from: c */
    public static void m1868c(int i, int i2) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("source", Integer.valueOf(i));
        aVar.m1808a("action", Integer.valueOf(i2));
        C14296p.m1830a("whoscall_suggested_permission", aVar.m1811a());
    }

    /* renamed from: c */
    public static void m1867c(int i, boolean z) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("entrance", Integer.valueOf(i));
        aVar.m1808a("enable_status", Integer.valueOf(z ? 1 : 0));
        C14296p.m1830a("whoscall_set_defaultsms", aVar.m1811a());
    }

    /* renamed from: c */
    public static void m1866c(Integer num, Integer num2) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("action", num);
        aVar.m1808a("source", num2);
        aVar.m1808a("status", (Integer) null);
        C14296p.m1830a("whoscall_vas_detection_v2", aVar.m1811a());
    }

    /* renamed from: c */
    public static void m1865c(String str, boolean z) {
        m1896a((Integer) 8, Integer.valueOf(z ? 1 : 0), (Integer) null, str);
    }

    /* renamed from: c */
    public static void m1864c(boolean z) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("setting_action", Integer.valueOf(z ? 1 : 2));
        C14296p.m1830a("whoscall_incallscreen_setting", aVar.m1811a());
    }

    /* renamed from: d */
    public static String m1862d(int i) {
        String str;
        if (i >= 0) {
            String[] strArr = f32007j;
            if (i < strArr.length) {
                str = strArr[i];
                return str;
            }
        }
        str = "";
        return str;
    }

    /* renamed from: d */
    public static void m1863d() {
        m1848i(4);
    }

    /* renamed from: d */
    public static void m1861d(int i, int i2) {
        m1907a(i, i2, false, false, false, 0);
    }

    /* renamed from: d */
    public static void m1860d(String str, boolean z) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("number", str);
        aVar.m1808a("name_fpn", Integer.valueOf(z ? 1 : 0));
        C14296p.m1830a("whoscall_fpn", aVar.m1811a());
    }

    /* renamed from: d */
    public static void m1859d(boolean z) {
        m1876b(2, z);
    }

    /* renamed from: e */
    public static String m1857e(int i) {
        String str;
        if (i >= 0) {
            String[] strArr = f32006i;
            if (i < strArr.length) {
                str = strArr[i];
                return str;
            }
        }
        str = "";
        return str;
    }

    /* renamed from: e */
    public static void m1858e() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("action", (Integer) 1);
        C14296p.m1830a("whoscall_blocklist", aVar.m1811a());
    }

    /* renamed from: e */
    public static void m1856e(boolean z) {
        m1876b(1, z);
    }

    /* renamed from: f */
    public static String m1854f(int i) {
        return f32008k.containsKey(Integer.valueOf(i)) ? f32008k.get(Integer.valueOf(i)) : "generalcall";
    }

    /* renamed from: f */
    public static void m1855f() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("action", (Integer) 2);
        C14296p.m1830a("whoscall_blocklist", aVar.m1811a());
    }

    /* renamed from: g */
    public static String m1852g(int i) {
        return f32004g.containsKey(Integer.valueOf(i)) ? f32004g.get(Integer.valueOf(i)) : "dialer_none";
    }

    /* renamed from: g */
    public static void m1853g() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("action", (Integer) 0);
        C14296p.m1830a("whoscall_blocklist", aVar.m1811a());
    }

    /* renamed from: h */
    public static String m1850h(int i) {
        String str;
        if (i >= 0) {
            String[] strArr = f32010m;
            if (i < strArr.length) {
                str = strArr[i];
                return str;
            }
        }
        str = "recent";
        return str;
    }

    /* renamed from: h */
    public static void m1851h() {
        int i = C12629k0.m5706i() ? 3 : 2;
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("popup_setting", Integer.valueOf(i));
        aVar.m1808a("popup_position_portrait", Integer.valueOf(C12629k0.m5710e()));
        aVar.m1808a("screen_height", Integer.valueOf(C14217x3.m2126l()));
        aVar.m1808a("popup_position_landscape", Integer.valueOf(C12629k0.m5711d()));
        C14296p.m1830a("whoscall_call_dialog_position", aVar.m1811a());
    }

    /* renamed from: i */
    public static void m1849i() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("default_confirm", (Integer) 1);
        C14296p.m1830a("whoscall_defaultapp_setdone", aVar.m1811a());
    }

    /* renamed from: i */
    public static void m1848i(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("active_user_type", i);
        C14261f.m1974a("active_user", bundle);
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 1);
        aVar.m1808a("action", Integer.valueOf(i));
        aVar.m1808a("registration", Integer.valueOf(C14137r4.m2372f() ? 1 : 0));
        aVar.m1808a("phone", Integer.valueOf(C14137r4.m2370h() ? 1 : 0));
        aVar.m1807a("iid", C6334a.m23211s().m23219k());
        aVar.m1808a("data_saver", Integer.valueOf(C13878a3.m3192z() ? 1 : 0));
        aVar.m1808a("power_saver", Integer.valueOf(C13878a3.m3259C() ? 1 : 0));
        aVar.m1808a("ignore_data_saver", Integer.valueOf(!C13878a3.m3193y() ? 1 : 0));
        aVar.m1808a("ignore_power_saver", Integer.valueOf(C13878a3.m3261A() ? 1 : 0));
        aVar.m1808a("dbver_common", Integer.valueOf(C12419d.m6208e()));
        aVar.m1808a("dbver_personal", Integer.valueOf(C12436l.m6170e()));
        C14296p.m1830a("whoscall_active_user", aVar.m1811a());
    }

    /* renamed from: j */
    public static void m1847j() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("system", C14017g4.m2802v() ? Resources.getSystem().getConfiguration().getLocales().get(0).toString() : Resources.getSystem().getConfiguration().locale.toString());
        aVar.m1807a("whoscall", "");
        aVar.m1807a("arc", System.getProperty("os.arch"));
        aVar.m1807a("manufacturer", Build.MANUFACTURER);
        aVar.m1807a("brand", Build.BRAND);
        aVar.m1807a("model", Build.MODEL);
        aVar.m1808a("sim_count", Integer.valueOf(AbstractC12181l0.m6886t().mo6877c()));
        C14296p.m1830a("whoscall_device", aVar.m1811a());
    }

    /* renamed from: j */
    public static void m1846j(int i) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("issue_categ", Integer.valueOf(i));
        C14296p.m1830a("whoscall_cs", aVar.m1811a());
    }

    /* renamed from: k */
    public static void m1845k() {
        C14261f.m1974a("gga_first_open", (Bundle) null);
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 1);
        aVar.m1807a("iid", C6334a.m23211s().m23219k());
        C14296p.m1830a("whoscall_first_open", aVar.m1811a());
    }

    /* renamed from: k */
    public static void m1844k(int i) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("action", (Integer) 0);
        aVar.m1808a("source", (Integer) null);
        aVar.m1808a("status", Integer.valueOf(i));
        C14296p.m1830a("whoscall_vas_detection_v2", aVar.m1811a());
    }

    /* renamed from: l */
    public static void m1843l() {
        String n = C14017g4.m2810n();
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1809a(n);
        C14296p.C14297a a = aVar.m1811a();
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - C13915b3.m3065a("pref_gf_monitor_last_send_time", 0L) > TimeUnit.DAYS.toMillis(1L)) {
            C6357a.m23028a("DailyJob_GF_MonitorDau", a.m1818b(), (List<Integer>) null, C6359b.m23013a());
            C14261f.m1973a("DailyJob_GF_MonitorDau", n);
            C13915b3.m3057b("pref_gf_monitor_last_send_time", currentTimeMillis);
            C6357a.m23039a(C14217x3.m2115r());
            return;
        }
        C6357a.m23028a("DailyJob_GF_MonitorDauDuplicate", a.m1818b(), (List<Integer>) null, C6359b.m23013a());
        C14261f.m1973a("DailyJob_GF_MonitorDauDuplicate", n);
    }

    /* renamed from: l */
    public static void m1842l(int i) {
        m1866c(Integer.valueOf(i), (Integer) null);
    }

    /* renamed from: m */
    public static void m1841m() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("searchbar_click", (Integer) 1);
        C14296p.m1830a("whoscall_search_click", aVar.m1811a());
    }

    /* renamed from: n */
    public static void m1840n() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("search_pv", (Integer) 1);
        C14296p.m1830a("whoscall_search_pv", aVar.m1811a());
    }

    /* renamed from: o */
    public static void m1839o() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("dialer_shortcut_tutorial", (Integer) 1);
        C14296p.m1830a("whoscall_shortcut_trigger_tutorial", aVar.m1811a());
    }

    /* renamed from: p */
    public static void m1838p() {
        MyApplication.m29013o();
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("default_phone_status", Integer.valueOf(CallUtils.m26536h() ? 1 : 0));
        aVar.m1808a("notification_access_status", Integer.valueOf(C13878a3.m3215e(MyApplication.m29013o()) ? 1 : 0));
        aVar.m1808a("default_sms_status", Integer.valueOf(C12810o.m5236i() ? 1 : 0));
        aVar.m1808a("location_permission_status", Integer.valueOf(C13878a3.m3206l() ? 1 : 0));
        aVar.m1808a("default_caller_id_status", Integer.valueOf(CallUtils.m26528p() ? 1 : 0));
        C14296p.m1830a("whoscall_user_status", aVar.m1811a());
    }
}
