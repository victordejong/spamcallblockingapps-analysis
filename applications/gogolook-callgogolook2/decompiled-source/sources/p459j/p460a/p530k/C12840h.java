package p459j.p460a.p530k;

import android.util.Base64;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import gogolook.callgogolook2.util.OJni;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13992e4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.k.h */
/* loaded from: classes2-dex2jar.jar:j/a/k/h.class */
public class C12840h {

    /* renamed from: a */
    public static final String f29018a = "h";

    /* renamed from: j.a.k.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/k/h$a.class */
    public class C12841a implements Action1<Boolean> {
        public C12841a() {
        }

        /* renamed from: a */
        public void call(Boolean bool) {
            C12840h.this.m5164a(bool);
        }
    }

    /* renamed from: j.a.k.h$b */
    /* loaded from: classes2-dex2jar.jar:j/a/k/h$b.class */
    public class C12842b implements Action1<Throwable> {
        public C12842b() {
        }

        /* renamed from: a */
        public void call(Throwable th) {
            C12840h.this.m5162a(th);
        }
    }

    /* renamed from: j.a.k.h$c */
    /* loaded from: classes2-dex2jar.jar:j/a/k/h$c.class */
    public class C12843c implements Single.OnSubscribe<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ List f29021a;

        /* renamed from: b */
        public final /* synthetic */ String f29022b;

        /* renamed from: c */
        public final /* synthetic */ String f29023c;

        public C12843c(List list, String str, String str2) {
            this.f29021a = list;
            this.f29022b = str;
            this.f29023c = str2;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
            int i = 0;
            int i2 = 0;
            for (Map.Entry entry : C12840h.this.m5161a(this.f29021a).entrySet()) {
                try {
                    List a = C12840h.this.m5163a((String) entry.getKey(), this.f29022b, this.f29023c, C12840h.this.m5160a((JSONArray) entry.getValue()));
                    int size = i + a.size();
                    Iterator it = a.iterator();
                    int i3 = i2;
                    while (true) {
                        i = size;
                        i2 = i3;
                        if (it.hasNext()) {
                            C12378a.C12380b c = C12840h.this.m5159a(((C12844d) it.next()).m5153a()).m6261c();
                            if (c != null && c.f27921b == 200) {
                                i3++;
                            }
                        }
                    }
                } catch (UnsupportedEncodingException e) {
                    singleSubscriber.onError(e);
                    return;
                } catch (Throwable th) {
                    C14080m2.m2614a(C12840h.f29018a, th);
                    i = i;
                    i2 = i2;
                }
            }
            C14289m.m1878b(i, i2);
            singleSubscriber.onSuccess(true);
        }
    }

    /* renamed from: j.a.k.h$d */
    /* loaded from: classes2-dex2jar.jar:j/a/k/h$d.class */
    public class C12844d {

        /* renamed from: a */
        public String f29025a;

        /* renamed from: b */
        public String f29026b;

        /* renamed from: c */
        public String f29027c;

        /* renamed from: d */
        public int f29028d;

        /* renamed from: e */
        public List<String> f29029e;

        public C12844d(C12840h hVar, String str, String str2, String str3, int i, List<String> list) {
            this.f29025a = str;
            this.f29026b = str2;
            this.f29027c = str3;
            this.f29028d = i;
            this.f29029e = list;
        }

        /* renamed from: a */
        public JSONObject m5153a() {
            JSONArray jSONArray = new JSONArray();
            List<String> list = this.f29029e;
            if (list != null) {
                for (String str : list) {
                    jSONArray.put(str);
                }
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("date", this.f29025a);
                jSONObject.put("did", this.f29026b);
                jSONObject.put("uid", this.f29027c);
                jSONObject.put("no", this.f29028d);
                jSONObject.put("version", 3);
                jSONObject.put("data", jSONArray);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jSONObject;
        }
    }

    /* renamed from: a */
    public C12378a m5159a(JSONObject jSONObject) {
        return C12378a.m6276a(C12378a.EnumC12382d.POST_ANALYTICS_SMS_CONTENT, jSONObject, new String[0]);
    }

    /* renamed from: a */
    public final String m5170a(long j) {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(j));
    }

    /* renamed from: a */
    public final HashMap<String, JSONArray> m5161a(List<VasMessageRealm> list) {
        JSONArray jSONArray;
        HashMap<String, JSONArray> hashMap = new HashMap<>();
        for (VasMessageRealm vasMessageRealm : list) {
            try {
                String a = m5170a(vasMessageRealm.getTime());
                if (hashMap.containsKey(a)) {
                    jSONArray = hashMap.get(a);
                } else {
                    jSONArray = new JSONArray();
                    hashMap.put(a, jSONArray);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(VasMessageRealm.SUBSCRIPTION_TYPE, vasMessageRealm.getSubscriptionType());
                jSONObject.put(VasMessageRealm.PROMOTION_TYPE, vasMessageRealm.getPromotionType());
                jSONObject.put(VasMessageRealm.CANCEL_TYPE, vasMessageRealm.getCancelType());
                jSONObject.put("num", vasMessageRealm.getE164());
                jSONObject.put("content", vasMessageRealm.getContent());
                jSONObject.put("time", m5158b(vasMessageRealm.getTime()));
                jSONObject.put("name", vasMessageRealm.getName());
                jSONObject.put(VasMessageRealm.PRICE_TYPE, vasMessageRealm.getPriceType());
                jSONObject.put("price", vasMessageRealm.getPrice());
                jSONObject.put(VasMessageRealm.PERIOD_TYPE, vasMessageRealm.getPeriodType());
                jSONObject.put("period", vasMessageRealm.getPeriod());
                jSONArray.put(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final List<C12844d> m5163a(String str, String str2, String str3, @NonNull List<String> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (list.size() > i) {
            int min = Math.min(i + 10, list.size());
            arrayList.add(new C12844d(this, str, str2, str3, arrayList.size() + 1, list.subList(i, min)));
            i = min;
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<String> m5160a(@NonNull JSONArray jSONArray) throws UnsupportedEncodingException {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                arrayList.add(Base64.encodeToString(C13992e4.m2921b(jSONArray.get(i).toString().getBytes("UTF-8"), C13992e4.m2922b(OJni.getEncryptKey(MyApplication.m29013o())).getBytes()), 0));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m5164a(Boolean bool) {
        if (bool == Boolean.TRUE) {
            C13915b3.m3057b("pref_last_upload_vas_sms_time", System.currentTimeMillis());
        }
    }

    /* renamed from: a */
    public final void m5162a(Throwable th) {
        if (th instanceof UnsupportedEncodingException) {
            C13915b3.m3057b("pref_last_upload_vas_sms_time", System.currentTimeMillis());
        }
    }

    /* renamed from: b */
    public final String m5158b(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j));
    }

    /* renamed from: b */
    public void m5157b(List<VasMessageRealm> list) {
        if (System.currentTimeMillis() - C13915b3.m3049d("pref_last_upload_vas_sms_time") >= NumberInfo.Whoscall.Spam.EXPIRE_INTERVAL) {
            Single.create(new C12843c(list, C14017g4.m2820d(), C14217x3.m2120o())).subscribeOn(Schedulers.m0io()).subscribe(new C12841a(), new C12842b());
        }
    }
}
