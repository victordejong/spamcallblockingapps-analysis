package p459j.p460a.p604y0.p610e;

import android.content.Context;
import android.util.SparseArray;
import androidx.annotation.WorkerThread;
import androidx.core.app.Person;
import com.appsflyer.internal.referrer.Payload;
import com.google.firebase.perf.metrics.Trace;
import com.google.gson.Gson;
import gogolook.callgogolook2.R$raw;
import gogolook.callgogolook2.gson.SmsFilterRulesHelper;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p325c.p379z.C10062a;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14150s2;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14989s;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u000200H\u0002J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0004H\u0003J\u0012\u00104\u001a\u0002022\b\u00105\u001a\u0004\u0018\u000106H\u0002J\u0010\u00104\u001a\u0002022\u0006\u00107\u001a\u00020\u0004H\u0002J\u0018\u00108\u001a\u0002022\u0006\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010<J\u0016\u0010=\u001a\u0002022\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<J\u0010\u0010>\u001a\u0002022\u0006\u00109\u001a\u00020:H\u0007J\u0010\u0010?\u001a\u00020\u00042\u0006\u00109\u001a\u00020:H\u0002J\u0016\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010A\u001a\u00020BH\u0002J\u001c\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00172\u0006\u0010A\u001a\u00020BH\u0002J\u0016\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010A\u001a\u00020BH\u0002J\u0016\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010A\u001a\u00020BH\u0002J \u0010F\u001a\u0012\u0012\u0004\u0012\u00020\u00040(j\b\u0012\u0004\u0012\u00020\u0004`)2\u0006\u0010A\u001a\u00020BH\u0002J\"\u0010G\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00180\u00172\u0006\u0010A\u001a\u00020BH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R.\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u0018\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR(\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\"\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0013\"\u0004\b#\u0010\u0015R\"\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0013\"\u0004\b&\u0010\u0015R.\u0010'\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010(j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`)X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006H"}, m815d2 = {"Lgogolook/callgogolook2/vas/setting/VasSettingConfigManager;", "", "()V", "KEY_CANCEL_WORD", "", "KEY_KEYWORD", "KEY_PERIOD", "KEY_PRICE", "KEY_PRICE_PREFIX", "KEY_TEMPLATE", "PREF_KEY_SUFFIX_VAS_SETTING_CONFIG", "isInitialized", "", "()Z", "setInitialized", "(Z)V", "vasCancelWord", "Landroid/util/SparseArray;", "getVasCancelWord", "()Landroid/util/SparseArray;", "setVasCancelWord", "(Landroid/util/SparseArray;)V", "vasInfoMap", "Ljava/util/HashMap;", "", "Lgogolook/callgogolook2/vas/setting/VasInfo;", "getVasInfoMap", "()Ljava/util/HashMap;", "setVasInfoMap", "(Ljava/util/HashMap;)V", "vasKeyword", "getVasKeyword", "setVasKeyword", "vasPeriod", "getVasPeriod", "setVasPeriod", "vasPrice", "getVasPrice", "setVasPrice", "vasPricePrefix", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getVasPricePrefix", "()Ljava/util/ArrayList;", "setVasPricePrefix", "(Ljava/util/ArrayList;)V", "combineKeywords", "jsonArray", "Lorg/json/JSONArray;", "handleResponseBody", "", "body", "handleVasResponse", Payload.RESPONSE, "Lgogolook/callgogolook2/net/ApiCall$ApiResponse;", "cache", "initVasSetting", "context", "Landroid/content/Context;", "listener", "Lgogolook/callgogolook2/vas/setting/VasSyncCallback;", "initVasSettingListFromServer", "initVasSettingSync", "loadDefaultVasJSON", "parseVasCancelWord", "vasObject", "Lorg/json/JSONObject;", "parseVasKeyword", "parseVasPeriod", "parseVasPrice", "parseVasPricePrefix", "parseVasTemplateSetting", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.e.c */
/* loaded from: classes3-dex2jar.jar:j/a/y0/e/c.class */
public final class C14577c {

    /* renamed from: a */
    public static HashMap<String, List<C14567a>> f32573a;

    /* renamed from: b */
    public static SparseArray<String> f32574b;

    /* renamed from: c */
    public static SparseArray<String> f32575c;

    /* renamed from: d */
    public static ArrayList<String> f32576d;

    /* renamed from: e */
    public static SparseArray<String> f32577e;

    /* renamed from: f */
    public static HashMap<String, String> f32578f;

    /* renamed from: g */
    public static boolean f32579g;

    /* renamed from: h */
    public static final C14577c f32580h = new C14577c();

    /* renamed from: j.a.y0.e.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$a.class */
    public static final class C14578a<T> implements Single.OnSubscribe<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f32581a;

        public C14578a(Context context) {
            this.f32581a = context;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Void> singleSubscriber) {
            C14577c.f32580h.m1084a(this.f32581a);
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.y0.e.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$b.class */
    public static final class C14579b<T> implements Action1<Void> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14587d f32582a;

        public C14579b(AbstractC14587d dVar) {
            this.f32582a = dVar;
        }

        /* renamed from: a */
        public final void call(Void r4) {
            C14577c.f32580h.m1077a(true);
            AbstractC14587d dVar = this.f32582a;
            if (dVar != null) {
                dVar.mo1056a();
            }
        }
    }

    /* renamed from: j.a.y0.e.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$c.class */
    public static final class C14580c<T> implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14587d f32583a;

        public C14580c(AbstractC14587d dVar) {
            this.f32583a = dVar;
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            C14577c.f32580h.m1077a(false);
            AbstractC14587d dVar = this.f32583a;
            if (dVar != null) {
                dVar.mo1055b();
            }
        }
    }

    /* renamed from: j.a.y0.e.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$d.class */
    public static final class C14581d extends C14150s2.AbstractC14162j {
        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14162j, p660rx.functions.Func0, java.util.concurrent.Callable
        public C12378a call() {
            C12378a a = C12378a.m6275a(C12378a.EnumC12382d.GET_VAS_SETTINGS, new String[0]);
            C15149k.m383a((Object) a, "ApiCall.create(ApiCall.RequestId.GET_VAS_SETTINGS)");
            return a;
        }
    }

    /* renamed from: j.a.y0.e.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$e.class */
    public static final class C14582e extends C14150s2.AbstractC14160h {
        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14160h, p660rx.functions.Action0
        public void call() {
        }
    }

    /* renamed from: j.a.y0.e.c$f */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$f.class */
    public static final class C14583f extends C14150s2.AbstractC14159g {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14587d f32584a;

        public C14583f(AbstractC14587d dVar) {
            this.f32584a = dVar;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14159g
        /* renamed from: a */
        public void call(C12378a.C12380b bVar) {
            Integer valueOf = bVar != null ? Integer.valueOf(bVar.f27921b) : null;
            if (valueOf != null && valueOf.intValue() == 200) {
                C14577c.f32580h.m1082a(bVar);
                C13915b3.m3057b("vas_last_sync_time", System.currentTimeMillis());
                C14577c.f32580h.m1077a(true);
                this.f32584a.mo1056a();
                return;
            }
            C14577c.f32580h.m1077a(false);
            this.f32584a.mo1055b();
        }
    }

    /* renamed from: j.a.y0.e.c$g */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$g.class */
    public static final class C14584g extends C14150s2.AbstractC14158f {
        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14158f
        /* renamed from: a */
        public Boolean call(C12378a.C12380b bVar) {
            return true;
        }
    }

    /* renamed from: j.a.y0.e.c$h */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$h.class */
    public static final class C14585h extends C14150s2.AbstractC14161i {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14587d f32585a;

        public C14585h(AbstractC14587d dVar) {
            this.f32585a = dVar;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14161i
        /* renamed from: a */
        public void mo1057a(Context context, Throwable th, C12378a.C12380b bVar, Boolean bool, Boolean bool2) {
            this.f32585a.mo1055b();
        }
    }

    /* renamed from: j.a.y0.e.c$i */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/c$i.class */
    public static final class C14586i extends C10173a<List<? extends C14567a>> {
    }

    /* renamed from: a */
    public final SparseArray<String> m1085a() {
        return f32577e;
    }

    /* renamed from: a */
    public final SparseArray<String> m1078a(JSONObject jSONObject) {
        SparseArray<String> sparseArray = new SparseArray<>();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("cancelword");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                C15149k.m383a((Object) next, Person.KEY_KEY);
                sparseArray.put(Integer.parseInt(next), jSONObject2.getString(next));
            }
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
        }
        return sparseArray;
    }

    /* renamed from: a */
    public final String m1079a(JSONArray jSONArray) {
        StringBuilder sb = new StringBuilder();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            String string = jSONArray.getString(i);
            if (i != 0) {
                sb.append("|");
            }
            sb.append(string);
        }
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "keywordBuilder.toString()");
        return sb2;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m1084a(Context context) {
        C15149k.m377b(context, "context");
        synchronized (this) {
            String a = C13915b3.m3063a(C12378a.f27908m + "/settings/vas", (String) null);
            String str = a;
            if (C14217x3.m2160b(a)) {
                str = f32580h.m1075b(context);
            }
            C14577c cVar = f32580h;
            C15149k.m383a((Object) str, "cache");
            cVar.m1073b(str);
            C14989s sVar = C14989s.f33022a;
        }
    }

    /* renamed from: a */
    public final void m1083a(Context context, AbstractC14587d dVar) {
        C15149k.m377b(context, "context");
        Single.create(new C14578a(context)).subscribeOn(Schedulers.m0io()).subscribe(new C14579b(dVar), new C14580c(dVar));
    }

    /* renamed from: a */
    public final void m1082a(C12378a.C12380b bVar) {
        String str = bVar != null ? bVar.f27922c : null;
        if (str != null) {
            C13915b3.m3047d(C12378a.f27908m + "/settings/vas", str);
            f32580h.m1080a(str);
        }
    }

    /* renamed from: a */
    public final void m1080a(String str) {
        Trace b = C10062a.m13512b("vas_parsing_time");
        try {
            JSONObject jSONObject = new JSONObject(str);
            f32573a = m1064f(jSONObject);
            f32574b = m1068d(jSONObject);
            f32576d = m1066e(jSONObject);
            f32575c = m1070c(jSONObject);
            f32577e = m1078a(jSONObject);
            f32578f = m1072b(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        b.stop();
    }

    /* renamed from: a */
    public final void m1077a(boolean z) {
        f32579g = z;
    }

    /* renamed from: b */
    public final String m1075b(Context context) {
        String str;
        try {
            InputStream openRawResource = context.getResources().openRawResource(R$raw.vas_number);
            byte[] bArr = new byte[openRawResource.available()];
            openRawResource.read(bArr);
            openRawResource.close();
            Charset forName = Charset.forName("UTF-8");
            C15149k.m383a((Object) forName, "Charset.forName(\"UTF-8\")");
            str = new String(bArr, forName);
        } catch (IOException e) {
            C14080m2.m2612a((Throwable) e);
            str = "";
        }
        return str;
    }

    /* renamed from: b */
    public final HashMap<String, List<C14567a>> m1076b() {
        return f32573a;
    }

    /* renamed from: b */
    public final HashMap<String, String> m1072b(JSONObject jSONObject) {
        HashMap<String, String> hashMap = new HashMap<>();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(SmsFilterRulesHelper.KEYWORD);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                C15149k.m383a((Object) jSONArray, "keywordArray");
                String a = m1079a(jSONArray);
                C15149k.m383a((Object) next, "keywordKey");
                hashMap.put(next, a);
            }
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
        }
        return hashMap;
    }

    /* renamed from: b */
    public final void m1074b(Context context, AbstractC14587d dVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(dVar, "listener");
        if (!C14217x3.m2137h(context)) {
            dVar.mo1055b();
        } else {
            C14150s2.m2355a(context).m2344a(new C14581d(), new C14582e(), new C14583f(dVar), new C14584g(), new C14585h(dVar));
        }
    }

    /* renamed from: b */
    public final void m1073b(String str) {
        m1080a(str);
    }

    /* renamed from: c */
    public final SparseArray<String> m1070c(JSONObject jSONObject) {
        SparseArray<String> sparseArray = new SparseArray<>();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("period");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                C15149k.m383a((Object) next, Person.KEY_KEY);
                sparseArray.put(Integer.parseInt(next), jSONObject2.getString(next));
            }
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
        }
        return sparseArray;
    }

    /* renamed from: c */
    public final HashMap<String, String> m1071c() {
        return f32578f;
    }

    /* renamed from: d */
    public final SparseArray<String> m1069d() {
        return f32575c;
    }

    /* renamed from: d */
    public final SparseArray<String> m1068d(JSONObject jSONObject) {
        SparseArray<String> sparseArray = new SparseArray<>();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("price");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                C15149k.m383a((Object) next, Person.KEY_KEY);
                sparseArray.put(Integer.parseInt(next), jSONObject2.getString(next));
            }
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
        }
        return sparseArray;
    }

    /* renamed from: e */
    public final SparseArray<String> m1067e() {
        return f32574b;
    }

    /* renamed from: e */
    public final ArrayList<String> m1066e(JSONObject jSONObject) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("priceprefix");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                arrayList.add(jSONArray.getString(i));
            }
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
        }
        return arrayList;
    }

    /* renamed from: f */
    public final ArrayList<String> m1065f() {
        return f32576d;
    }

    /* renamed from: f */
    public final HashMap<String, List<C14567a>> m1064f(JSONObject jSONObject) {
        HashMap<String, List<C14567a>> hashMap = new HashMap<>();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("template");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                List<C14567a> list = (List) new Gson().m30981a(jSONObject2.getJSONArray(next).toString(), new C14586i().m13276b());
                C15149k.m383a((Object) next, "templateKey");
                C15149k.m383a((Object) list, "vasInfoList");
                hashMap.put(next, list);
            }
        } catch (IncompatibleClassChangeError e) {
            C14080m2.m2612a((Throwable) e);
        } catch (JSONException e2) {
            C14080m2.m2612a((Throwable) e2);
        }
        return hashMap;
    }

    /* renamed from: g */
    public final boolean m1063g() {
        return f32579g;
    }
}
