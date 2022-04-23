package p459j.p460a.p582w0;

import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.ContactUploadSetting;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import java.util.HashSet;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p507f0.C12378a;
/* renamed from: j.a.w0.w3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/w3.class */
public class C14202w3 {

    /* renamed from: c */
    public static long f31726c = 604800000;

    /* renamed from: a */
    public Context f31727a;

    /* renamed from: b */
    public ContactUploadSetting f31728b;

    /* renamed from: j.a.w0.w3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/w3$b.class */
    public static class C14204b {

        /* renamed from: a */
        public static volatile C14202w3 f31729a = new C14202w3(MyApplication.m29013o());
    }

    /* renamed from: j.a.w0.w3$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/w3$c.class */
    public static class RunnableC14205c implements Runnable {
        public RunnableC14205c(Context context) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (System.currentTimeMillis() - C13915b3.m3065a("preference_contact_update_time", 0L) > C14202w3.f31726c) {
                try {
                    C12378a.C12380b c = C12378a.m6276a(C12378a.EnumC12382d.PUT_UPLOAD_CONTACT, C14202w3.m2227c().m2228b(), new String[0]).m6261c();
                    if (c != null && c.f27921b == 200) {
                        C14202w3.m2227c().m2232a(System.currentTimeMillis());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public C14202w3(Context context) {
        this.f31727a = context;
    }

    /* renamed from: c */
    public static C14202w3 m2227c() {
        return C14204b.f31729a;
    }

    /* renamed from: a */
    public C14202w3 m2231a(ContactUploadSetting contactUploadSetting) {
        synchronized (this) {
            this.f31728b = contactUploadSetting;
            f31726c = contactUploadSetting.cbuPeriod * 24 * 60 * 60 * 1000;
        }
        return this;
    }

    /* renamed from: a */
    public void m2233a() {
        if (System.currentTimeMillis() - C13915b3.m3065a("preference_contact_update_time", 0L) > f31726c) {
            C14174u.m2288p().submit(new RunnableC14205c(this.f31727a));
        }
    }

    /* renamed from: a */
    public final void m2232a(long j) {
        C13915b3.m3057b("preference_contact_update_time", j);
    }

    /* renamed from: b */
    public final JSONObject m2228b() {
        JSONObject jSONObject;
        synchronized (this) {
            HashSet hashSet = new HashSet();
            jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            Cursor query = this.f31727a.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, "display_name ASC");
            if (!(query == null || this.f31728b == null)) {
                boolean z = true;
                if (this.f31728b.cbuType == 1 || this.f31728b.cbuType == 2) {
                    if (this.f31728b.cbuType != 2) {
                        z = false;
                    }
                    int count = query.getCount();
                    for (int i = 0; i < count; i++) {
                        query.moveToPosition(i);
                        String string = query.getString(query.getColumnIndex("data1"));
                        if (string != null && C14108o4.m2475k(string) && !hashSet.contains(string)) {
                            hashSet.add(string);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("num", string);
                            if (z) {
                                String string2 = query.getString(query.getColumnIndex(CacheIndexRealmObject.DISPLAY_NAME));
                                if (!TextUtils.isEmpty(string2)) {
                                    jSONObject2.put("name", string2);
                                } else {
                                    jSONObject2.put("name", "");
                                }
                            } else {
                                jSONObject2.put("name", "");
                            }
                            jSONArray.put(jSONObject2);
                        }
                    }
                    query.close();
                }
            }
            try {
                jSONObject.put("region", C14017g4.m2810n().toUpperCase(Locale.US));
                jSONObject.put("contacts", jSONArray);
                jSONObject.put("device_id", C14017g4.m2820d());
            } catch (JSONException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return jSONObject;
    }
}
