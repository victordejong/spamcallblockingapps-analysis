package p193e.p1485h.p1486a.p1493c.p1502r0;

import com.amazon.device.ads.DtbConstants;
import com.clevertap.android.sdk.inbox.CTInboxMessage;
import com.clevertap.android.sdk.inbox.CTInboxMessageContent;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: e.h.a.c.r0.m */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/m.class */
public class C22825m {

    /* renamed from: a */
    public String f63335a;

    /* renamed from: b */
    public long f63336b;

    /* renamed from: c */
    public long f63337c;

    /* renamed from: d */
    public String f63338d;

    /* renamed from: e */
    public JSONObject f63339e;

    /* renamed from: f */
    public boolean f63340f;

    /* renamed from: g */
    public List<String> f63341g;

    /* renamed from: h */
    public String f63342h;

    /* renamed from: i */
    public JSONObject f63343i;

    public C22825m() {
        this.f63341g = new ArrayList();
    }

    public C22825m(String str, JSONObject jSONObject, boolean z, long j, long j2, String str2, List<String> list, String str3, JSONObject jSONObject2) {
        this.f63341g = new ArrayList();
        this.f63338d = str;
        this.f63339e = jSONObject;
        this.f63340f = z;
        this.f63336b = j;
        this.f63337c = j2;
        this.f63342h = str2;
        this.f63341g = list;
        this.f63335a = str3;
        this.f63343i = jSONObject2;
    }

    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* renamed from: b */
    public static C22825m m7730b(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.has("_id") ? jSONObject.getString("_id") : null;
            char c = jSONObject.has("date") ? jSONObject.getInt("date") : System.currentTimeMillis() / 1000;
            char c2 = jSONObject.has("wzrk_ttl") ? jSONObject.getInt("wzrk_ttl") : (System.currentTimeMillis() + DtbConstants.SIS_CHECKIN_INTERVAL) / 1000;
            JSONObject jSONObject2 = jSONObject.has(RemoteMessageConst.MessageBody.MSG) ? jSONObject.getJSONObject(RemoteMessageConst.MessageBody.MSG) : null;
            ArrayList arrayList = new ArrayList();
            if (jSONObject2 != null) {
                JSONArray jSONArray = jSONObject2.has("tags") ? jSONObject2.getJSONArray("tags") : null;
                if (jSONArray != null) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(jSONArray.getString(i));
                    }
                }
            }
            String string2 = jSONObject.has("wzrk_id") ? jSONObject.getString("wzrk_id") : "0_0";
            if (string2.equalsIgnoreCase("0_0")) {
                jSONObject.put("wzrk_id", string2);
            }
            JSONObject jSONObject3 = new JSONObject();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next.startsWith("wzrk_")) {
                    jSONObject3.put(next, jSONObject.get(next));
                }
            }
            return string == null ? null : new C22825m(string, jSONObject2, false, c, c2, str, arrayList, string2, jSONObject3);
        } catch (JSONException e) {
            e.getLocalizedMessage();
            return null;
        }
    }

    /* renamed from: a */
    public boolean m7731a() {
        boolean z = false;
        CTInboxMessageContent cTInboxMessageContent = new CTInboxMessage(m7728d()).f2380j.get(0);
        if (cTInboxMessageContent.m42049i() || cTInboxMessageContent.m42052f()) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public void m7729c(String str) {
        this.f63341g.addAll(Arrays.asList(str.split(",")));
    }

    /* renamed from: d */
    public JSONObject m7728d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f63338d);
            jSONObject.put(RemoteMessageConst.MessageBody.MSG, this.f63339e);
            jSONObject.put("isRead", this.f63340f);
            jSONObject.put("date", this.f63336b);
            jSONObject.put("wzrk_ttl", this.f63337c);
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.f63341g.size(); i++) {
                jSONArray.put(this.f63341g.get(i));
            }
            jSONObject.put("tags", jSONArray);
            jSONObject.put("wzrk_id", this.f63335a);
            jSONObject.put("wzrkParams", this.f63343i);
            return jSONObject;
        } catch (JSONException e) {
            e.getLocalizedMessage();
            return jSONObject;
        }
    }
}
