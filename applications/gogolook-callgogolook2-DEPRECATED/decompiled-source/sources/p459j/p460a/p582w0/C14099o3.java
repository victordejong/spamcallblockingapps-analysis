package p459j.p460a.p582w0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompatJellybean;
import com.google.gson.Gson;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$raw;
import gogolook.callgogolook2.gson.ContactUploadSetting;
import gogolook.callgogolook2.gson.InCallSupportedDevices;
import gogolook.callgogolook2.gson.InCallSupportedFunctions;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6078h;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p569u0.C13659c;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p582w0.p587d5.C13978e;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p660rx.Single;
import p660rx.SingleSubscriber;
/* renamed from: j.a.w0.o3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/o3.class */
public class C14099o3 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: l */
    public static C14099o3 f31574l;

    /* renamed from: b */
    public List<C14106f> f31576b = null;

    /* renamed from: c */
    public List<C14105e> f31577c = null;

    /* renamed from: d */
    public List<C14105e> f31578d = null;

    /* renamed from: e */
    public List<C13673f> f31579e = null;

    /* renamed from: f */
    public List<C13673f> f31580f = null;

    /* renamed from: g */
    public List<C13673f> f31581g = null;

    /* renamed from: h */
    public ContactUploadSetting f31582h = null;

    /* renamed from: i */
    public List<Integer> f31583i = null;

    /* renamed from: j */
    public InCallSupportedDevices f31584j = null;

    /* renamed from: k */
    public InCallSupportedFunctions f31585k = null;

    /* renamed from: a */
    public Context f31575a = MyApplication.m29013o();

    /* renamed from: j.a.w0.o3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o3$a.class */
    public class C14100a implements Single.OnSubscribe<Void> {

        /* renamed from: a */
        public final /* synthetic */ boolean f31586a;

        public C14100a(boolean z) {
            this.f31586a = z;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Void> singleSubscriber) {
            try {
                C14099o3.this.m2531b(this.f31586a);
                singleSubscriber.onSuccess(null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: j.a.w0.o3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o3$b.class */
    public class RunnableC14101b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C13673f f31588a;

        /* renamed from: j.a.w0.o3$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/o3$b$a.class */
        public class C14102a extends AbstractC6078h<File> {
            public C14102a() {
            }

            /* renamed from: a */
            public void m2508a(File file, AbstractC6063c<? super File> cVar) {
                String str = "Download file successfully , url = " + RunnableC14101b.this.f31588a.f30652f + ", local file = " + file.getAbsolutePath();
            }

            @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
                m2508a((File) obj, (AbstractC6063c<? super File>) cVar);
            }
        }

        public RunnableC14101b(C13673f fVar) {
            this.f31588a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C5776l.m24470c(C14099o3.this.f31575a).m24450a(this.f31588a.f30652f).m24525c(new C14102a());
        }
    }

    /* renamed from: j.a.w0.o3$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o3$c.class */
    public static class C14103c {
    }

    /* renamed from: j.a.w0.o3$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o3$d.class */
    public static class C14104d {

        /* renamed from: a */
        public String f31591a;

        /* renamed from: b */
        public String f31592b;
    }

    /* renamed from: j.a.w0.o3$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o3$e.class */
    public static class C14105e {

        /* renamed from: a */
        public int f31593a;

        /* renamed from: b */
        public String f31594b;

        /* renamed from: c */
        public String f31595c;

        /* renamed from: d */
        public List<C14107g> f31596d = new ArrayList();
    }

    /* renamed from: j.a.w0.o3$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o3$f.class */
    public static class C14106f {

        /* renamed from: a */
        public int f31597a;

        /* renamed from: b */
        public String f31598b;

        /* renamed from: c */
        public String f31599c;

        /* renamed from: d */
        public List<C14104d> f31600d = new ArrayList();

        public String toString() {
            return "order=" + this.f31597a + ",name=" + this.f31598b + ",cid=" + this.f31599c;
        }
    }

    /* renamed from: j.a.w0.o3$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o3$g.class */
    public static class C14107g {

        /* renamed from: a */
        public int f31601a;

        /* renamed from: b */
        public String f31602b;
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m2545a(int i, JSONArray jSONArray, C11507b.C11508a aVar) {
        aVar.m9447a("referral_ad_free", false);
        aVar.m9447a("referral_premiumdb", false);
        for (int i2 = 0; i2 < i; i2++) {
            try {
                if (jSONArray.get(i2).toString().equals("ads")) {
                    aVar.m9447a("referral_ad_free", true);
                } else if (jSONArray.get(i2).toString().equals("offlinedb")) {
                    aVar.m9447a("referral_premiumdb", true);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: n */
    public static C14099o3 m2510n() {
        if (f31574l == null) {
            f31574l = new C14099o3();
        }
        return f31574l;
    }

    /* renamed from: a */
    public int m2543a(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        int a = m2540a(m2530c(), str);
        if (a == -1) {
            a = m2540a(m2515i(), str);
        }
        return a;
    }

    /* renamed from: a */
    public final int m2540a(@NonNull List<C14105e> list, @NonNull String str) {
        for (C14105e eVar : list) {
            if (TextUtils.equals(str, eVar.f31594b)) {
                return eVar.f31593a;
            }
            List<C14107g> list2 = eVar.f31596d;
            if (list2 != null && list2.size() > 0) {
                for (C14107g gVar : eVar.f31596d) {
                    if (TextUtils.equals(gVar.f31602b, str)) {
                        return gVar.f31601a;
                    }
                }
                continue;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final ContactUploadSetting m2537a(JSONObject jSONObject) {
        try {
            return (ContactUploadSetting) new Gson().m30982a(jSONObject.toString(), (Class<Object>) ContactUploadSetting.class);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: a */
    public String m2546a(@NonNull int i) {
        String a = m2541a(m2530c(), i);
        if (TextUtils.isEmpty(a)) {
            a = m2541a(m2515i(), i);
        }
        return a;
    }

    /* renamed from: a */
    public final String m2541a(List<C14105e> list, int i) {
        for (C14105e eVar : list) {
            if (i == eVar.f31593a) {
                return eVar.f31594b;
            }
            List<C14107g> list2 = eVar.f31596d;
            if (list2 != null && list2.size() > 0) {
                for (C14107g gVar : eVar.f31596d) {
                    if (i == gVar.f31601a) {
                        return gVar.f31602b;
                    }
                }
                continue;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final List<C14103c> m2538a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                C14103c cVar = new C14103c();
                if (jSONObject.has("name")) {
                    jSONObject.getString("name");
                }
                if (jSONObject.has(NotificationCompatJellybean.KEY_LABEL)) {
                    jSONObject.getString(NotificationCompatJellybean.KEY_LABEL);
                }
                arrayList.add(cVar);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public void m2547a() {
        m2536a(false);
    }

    /* renamed from: a */
    public final void m2542a(List<C13673f> list) {
        if (!C14217x3.m2173a(list)) {
            for (C13673f fVar : list) {
                if (!C14217x3.m2160b(fVar.f30652f) && !C13659c.m3718a(fVar.f30652f)) {
                    C14174u.m2293k().post(new RunnableC14101b(fVar));
                }
            }
        }
    }

    /* renamed from: a */
    public final void m2539a(List<C14105e> list, List<String> list2) {
        for (C14105e eVar : list) {
            if (!TextUtils.isEmpty(eVar.f31594b) && list2.indexOf(eVar.f31594b) < 0) {
                list2.add(eVar.f31594b);
            }
            List<C14107g> list3 = eVar.f31596d;
            if (list3 != null && list3.size() > 0) {
                for (C14107g gVar : eVar.f31596d) {
                    if (!TextUtils.isEmpty(gVar.f31602b) && list2.indexOf(gVar.f31602b) < 0) {
                        list2.add(gVar.f31602b);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m2536a(boolean z) {
        Single.create(new C14100a(z)).subscribeOn(C14174u.m2303a()).subscribe();
    }

    /* renamed from: b */
    public final InCallSupportedDevices m2532b(JSONObject jSONObject) {
        try {
            return (InCallSupportedDevices) new Gson().m30982a(jSONObject.toString(), (Class<Object>) InCallSupportedDevices.class);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: b */
    public String m2534b(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (C14105e eVar : m2530c()) {
            if (TextUtils.equals(str, eVar.f31595c)) {
                return eVar.f31594b;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final List<C14105e> m2533b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                C14105e eVar = new C14105e();
                if (jSONObject.has("name")) {
                    eVar.f31594b = jSONObject.getString("name");
                }
                if (jSONObject.has(UserProfile.CARDCATE_KEY_CID)) {
                    eVar.f31595c = jSONObject.getString(UserProfile.CARDCATE_KEY_CID);
                    if (eVar.f31595c.equals(UserProfile.CARDCATE_NAME_PERSONAL)) {
                    }
                }
                if (jSONObject.has("lid")) {
                    eVar.f31593a = jSONObject.getInt("lid");
                }
                if (!jSONObject.isNull("subc")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray("subc");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                        C14107g gVar = new C14107g();
                        if (jSONObject2.has("order")) {
                            jSONObject2.getInt("order");
                        }
                        if (jSONObject2.has("name")) {
                            gVar.f31602b = jSONObject2.getString("name");
                        }
                        if (jSONObject2.has("lid")) {
                            gVar.f31601a = jSONObject2.getInt("lid");
                        }
                        eVar.f31596d.add(gVar);
                    }
                }
                arrayList.add(eVar);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: b */
    public void m2531b(boolean z) throws Exception {
        if (!C14017g4.m2810n().equals(C13915b3.m3056b("settings_v3_last_sync_region", "")) || System.currentTimeMillis() - C13915b3.m3065a("settings_v3_last_sync_time", 0L) > AdUtils.ONE_DAY || z) {
            String lowerCase = C14017g4.m2816h().toLowerCase();
            C12378a.C12380b c = C12378a.m6275a(C12378a.EnumC12382d.GET_SETTINGS, C14017g4.m2810n().toUpperCase(Locale.US), lowerCase, C14092n3.m2584a("settings_v3_etags", "")).m6261c();
            if (c != null && c.f27921b == 200) {
                m2529c(c.f27922c);
            }
        }
    }

    /* renamed from: b */
    public String[] m2535b() {
        ArrayList arrayList = new ArrayList(1024);
        m2539a(m2530c(), arrayList);
        m2539a(m2515i(), arrayList);
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    /* renamed from: c */
    public final InCallSupportedFunctions m2527c(JSONObject jSONObject) {
        try {
            if (jSONObject.has("function")) {
                return (InCallSupportedFunctions) new Gson().m30982a(jSONObject.getJSONObject("function").toString(), (Class<Object>) InCallSupportedFunctions.class);
            }
            return null;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: c */
    public List<C14105e> m2530c() {
        if (this.f31577c == null) {
            try {
                if (m2525d("settings_v3_card_labels")) {
                    this.f31577c = m2533b(new JSONArray(C14092n3.m2584a("settings_v3_card_labels", null)));
                } else {
                    this.f31577c = m2533b(new JSONArray(m2521f()));
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
            if (this.f31577c == null) {
                this.f31577c = Collections.unmodifiableList(new ArrayList());
            }
        }
        return this.f31577c;
    }

    /* renamed from: c */
    public final List<C14106f> m2528c(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                C14106f fVar = new C14106f();
                if (jSONObject.has("order")) {
                    fVar.f31597a = jSONObject.getInt("order");
                }
                if (jSONObject.has("name")) {
                    fVar.f31598b = jSONObject.getString("name");
                }
                if (jSONObject.has(UserProfile.CARDCATE_KEY_CID)) {
                    fVar.f31599c = jSONObject.getString(UserProfile.CARDCATE_KEY_CID);
                }
                if (jSONObject.has("area")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray("area");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                        C14104d dVar = new C14104d();
                        if (jSONObject2.has("order")) {
                            jSONObject2.getInt("order");
                        }
                        if (jSONObject2.has("name")) {
                            dVar.f31591a = jSONObject2.getString("name");
                        }
                        if (jSONObject2.has(UserProfile.CARDCATE_KEY_CID)) {
                            dVar.f31592b = jSONObject2.getString(UserProfile.CARDCATE_KEY_CID);
                        }
                        fVar.f31600d.add(dVar);
                    }
                }
                arrayList.add(fVar);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: c */
    public final void m2529c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("result")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("result");
                if (!jSONObject2.isNull("allow_redeem")) {
                    m2522e(jSONObject2.getJSONArray("allow_redeem"));
                }
                if (!jSONObject2.isNull("cbu")) {
                    this.f31582h = m2537a(jSONObject2.getJSONObject("cbu"));
                }
                if (!jSONObject2.isNull("telecom")) {
                    m2520f(jSONObject2.getJSONArray("telecom"));
                    jSONObject2.remove("telecom");
                }
                if (!jSONObject2.isNull("citys")) {
                    this.f31576b = m2528c(jSONObject2.getJSONArray("citys"));
                    C14092n3.m2583b("settings_v3_cities", jSONObject2.getJSONArray("citys").toString());
                    jSONObject2.remove("citys");
                }
                if (!jSONObject2.isNull("card_labels")) {
                    this.f31577c = m2533b(jSONObject2.getJSONArray("card_labels"));
                    C14092n3.m2583b("settings_v3_card_labels", jSONObject2.getJSONArray("card_labels").toString());
                    jSONObject2.remove("card_labels");
                }
                if (!jSONObject2.isNull("none_card_labels")) {
                    this.f31578d = m2524d(jSONObject2.getJSONArray("none_card_labels"));
                    C14092n3.m2583b("settings_v3_non_card_lables", jSONObject2.getJSONArray("none_card_labels").toString());
                    jSONObject2.remove("none_card_labels");
                }
                if (!jSONObject2.isNull("ad_groups")) {
                    m2538a(jSONObject2.getJSONArray("ad_groups"));
                    C14092n3.m2583b("settings_v3_ad_group", jSONObject2.getJSONArray("ad_groups").toString());
                    jSONObject2.remove("ad_groups");
                }
                if (!jSONObject2.isNull("flexible_dialog")) {
                    this.f31580f = m2518g(jSONObject2.getJSONArray("flexible_dialog"));
                    C14092n3.m2583b("settings_v3_flexiable_dialog", jSONObject2.getJSONArray("flexible_dialog").toString());
                    jSONObject2.remove("flexible_dialog");
                }
                if (!jSONObject2.isNull("flexible_notification")) {
                    this.f31581g = m2518g(jSONObject2.getJSONArray("flexible_notification"));
                    C14092n3.m2583b("settings_v3_flexiable_notification", jSONObject2.getJSONArray("flexible_notification").toString());
                    jSONObject2.remove("flexible_notification");
                }
                this.f31579e = new ArrayList();
                if (!C14217x3.m2173a(this.f31580f)) {
                    this.f31579e.addAll(this.f31580f);
                }
                if (!C14217x3.m2173a(this.f31581g)) {
                    this.f31579e.addAll(this.f31581g);
                }
                this.f31579e = Collections.unmodifiableList(this.f31579e);
                C13659c.m3717a(this.f31579e);
                if (!jSONObject2.isNull("suggest_labels")) {
                    this.f31583i = m2516h(jSONObject2.getJSONArray("suggest_labels"));
                    C14092n3.m2583b("settings_v3_suggest_labels", jSONObject2.getJSONArray("suggest_labels").toString());
                    jSONObject2.remove("suggest_labels");
                }
                if (!jSONObject2.isNull("incall_service")) {
                    this.f31584j = m2532b(jSONObject2.getJSONObject("incall_service"));
                    this.f31585k = m2527c(jSONObject2.getJSONObject("incall_service"));
                    C14092n3.m2583b("settings_v3_incall_support", jSONObject2.getJSONObject("incall_service").toString());
                    jSONObject2.remove("incall_service");
                }
                C14092n3.m2583b("settings_v3_fixed_key", jSONObject2.toString());
                if (!jSONObject2.isNull("etags")) {
                    C14092n3.m2583b("settings_v3_etags", C6432e.m22602a(jSONObject2.getJSONObject("etags")));
                }
                C13915b3.m3057b("settings_v3_last_sync_time", System.currentTimeMillis());
                C13915b3.m3044e("settings_v3_last_sync_region", C14017g4.m2810n());
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: d */
    public List<C14106f> m2526d() {
        if (this.f31576b == null) {
            try {
                if (m2525d("settings_v3_cities")) {
                    this.f31576b = m2528c(new JSONArray(C14092n3.m2584a("settings_v3_cities", null)));
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
            if (this.f31576b == null) {
                this.f31576b = Collections.unmodifiableList(new ArrayList());
            }
        }
        return this.f31576b;
    }

    /* renamed from: d */
    public final List<C14105e> m2524d(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                C14105e eVar = new C14105e();
                if (jSONObject.has("name")) {
                    eVar.f31594b = jSONObject.getString("name");
                }
                if (jSONObject.has(UserProfile.CARDCATE_KEY_CID)) {
                    eVar.f31595c = jSONObject.getString(UserProfile.CARDCATE_KEY_CID);
                }
                if (jSONObject.has("lid")) {
                    eVar.f31593a = jSONObject.getInt("lid");
                }
                if (!jSONObject.isNull("subc")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray("subc");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                        C14107g gVar = new C14107g();
                        if (jSONObject2.has("order")) {
                            jSONObject2.getInt("order");
                        }
                        if (jSONObject2.has("name")) {
                            gVar.f31602b = jSONObject2.getString("name");
                        }
                        if (jSONObject2.has("lid")) {
                            gVar.f31601a = jSONObject2.getInt("lid");
                        }
                        eVar.f31596d.add(gVar);
                    }
                }
                arrayList.add(eVar);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: d */
    public final boolean m2525d(String str) {
        return C14017g4.m2810n().equals(C13915b3.m3056b("settings_v3_last_sync_region", "")) && (C13915b3.m3067a(str) || C14092n3.m2585a(str));
    }

    /* renamed from: e */
    public ContactUploadSetting m2523e() {
        if (this.f31582h == null && m2525d("settings_v3_fixed_key")) {
            try {
                this.f31582h = m2537a(new JSONObject(C14092n3.m2584a("settings_v3_fixed_key", null)).getJSONObject("cbu"));
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return this.f31582h;
    }

    /* renamed from: e */
    public final void m2522e(final JSONArray jSONArray) {
        try {
            final int length = jSONArray.length();
            C13978e.f31386a.m9457a(new AbstractC15118l() { // from class: j.a.w0.c
                @Override // p626l.p641z.p642c.AbstractC15118l
                public final Object invoke(Object obj) {
                    return C14099o3.m2545a(length, jSONArray, (C11507b.C11508a) obj);
                }
            });
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: f */
    public final String m2521f() {
        StringBuilder sb = new StringBuilder();
        try {
            InputStream openRawResource = (!C14017g4.m2809o().equalsIgnoreCase("TW") || !C14017g4.m2816h().equalsIgnoreCase("zh")) ? this.f31575a.getResources().openRawResource(R$raw.card_type_en) : this.f31575a.getResources().openRawResource(R$raw.card_type_zh);
            byte[] bArr = new byte[1024];
            while (openRawResource.read(bArr) != -1) {
                sb.append(new String(bArr));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }

    /* renamed from: f */
    public final void m2520f(JSONArray jSONArray) {
        C14189u3.m2264c().m2268a(jSONArray);
    }

    /* renamed from: g */
    public InCallSupportedDevices m2519g() {
        if (this.f31584j == null && m2525d("settings_v3_incall_support")) {
            try {
                this.f31584j = m2532b(new JSONObject(C14092n3.m2584a("settings_v3_incall_support", null)));
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return this.f31584j;
    }

    /* renamed from: g */
    public final List<C13673f> m2518g(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.addAll(Arrays.asList((C13673f[]) new Gson().m30982a(jSONArray.toString(), (Class<Object>) C13673f[].class)));
            m2542a(arrayList);
            return arrayList;
        } catch (Error | Exception e) {
            C14080m2.m2612a(e);
            return Collections.unmodifiableList(arrayList);
        }
    }

    /* renamed from: h */
    public InCallSupportedFunctions m2517h() {
        if (this.f31585k == null && m2525d("settings_v3_incall_support")) {
            try {
                this.f31585k = m2527c(new JSONObject(C14092n3.m2584a("settings_v3_incall_support", null)));
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return this.f31585k;
    }

    /* renamed from: h */
    public final List<Integer> m2516h(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        try {
            return new ArrayList(Arrays.asList((Integer[]) new Gson().m30982a(jSONArray.toString(), (Class<Object>) Integer[].class)));
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return Collections.unmodifiableList(arrayList);
        }
    }

    /* renamed from: i */
    public List<C14105e> m2515i() {
        if (this.f31578d == null) {
            try {
                if (m2525d("settings_v3_non_card_lables")) {
                    this.f31578d = m2524d(new JSONArray(C14092n3.m2584a("settings_v3_non_card_lables", null)));
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
            if (this.f31578d == null) {
                this.f31578d = Collections.unmodifiableList(new ArrayList());
            }
        }
        return this.f31578d;
    }

    /* renamed from: j */
    public void m2514j() throws Exception {
        m2531b(false);
    }

    /* renamed from: k */
    public String[] m2513k() {
        ArrayList arrayList = new ArrayList(16);
        for (Integer num : m2512l()) {
            String a = m2546a(num.intValue());
            if (!TextUtils.isEmpty(a)) {
                arrayList.add(a);
            }
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    /* renamed from: l */
    public List<Integer> m2512l() {
        if (this.f31583i == null) {
            try {
                if (m2525d("settings_v3_suggest_labels")) {
                    this.f31583i = m2516h(new JSONArray(C14092n3.m2584a("settings_v3_suggest_labels", null)));
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
            if (this.f31583i == null) {
                this.f31583i = Collections.unmodifiableList(new ArrayList());
            }
        }
        return this.f31583i;
    }

    /* renamed from: m */
    public List<C13673f> m2511m() {
        if (this.f31580f == null || this.f31581g == null) {
            try {
                if (m2525d("settings_v3_flexiable_dialog")) {
                    this.f31580f = m2518g(new JSONArray(C14092n3.m2584a("settings_v3_flexiable_dialog", null)));
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
            if (this.f31580f == null) {
                this.f31580f = Collections.unmodifiableList(new ArrayList());
            }
            try {
                if (m2525d("settings_v3_flexiable_notification")) {
                    this.f31581g = m2518g(new JSONArray(C14092n3.m2584a("settings_v3_flexiable_notification", null)));
                }
            } catch (Exception e2) {
                C14080m2.m2612a((Throwable) e2);
            }
            if (this.f31581g == null) {
                this.f31581g = Collections.unmodifiableList(new ArrayList());
            }
        }
        this.f31579e = new ArrayList();
        if (!C14217x3.m2173a(this.f31580f)) {
            this.f31579e.addAll(this.f31580f);
        }
        if (!C14217x3.m2173a(this.f31581g)) {
            this.f31579e.addAll(this.f31581g);
        }
        this.f31579e = Collections.unmodifiableList(this.f31579e);
        return this.f31579e;
    }
}
