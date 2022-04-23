package com.inmobi.ads;

import android.content.ContentValues;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a.class */
public class C8047a {

    /* renamed from: l */
    public static final String f31472l = "a";

    /* renamed from: a */
    public final int f31473a;

    /* renamed from: b */
    public final String f31474b;

    /* renamed from: c */
    public final String f31475c;

    /* renamed from: d */
    public final long f31476d;

    /* renamed from: e */
    public long f31477e;

    /* renamed from: f */
    public long f31478f;

    /* renamed from: g */
    public final String f31479g;

    /* renamed from: h */
    public String f31480h;

    /* renamed from: i */
    public String f31481i;

    /* renamed from: j */
    public boolean f31482j;

    /* renamed from: k */
    public final float f31483k;

    /* renamed from: m */
    public final String f31484m;

    /* renamed from: n */
    public String f31485n;

    /* renamed from: o */
    public InMobiAdRequest.MonetizationContext f31486o;

    /* renamed from: p */
    public final String f31487p;

    /* renamed from: com.inmobi.ads.a$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a$a.class */
    public static final class C8048a {
        /* renamed from: a */
        public static C8047a m6622a(ContentValues contentValues) {
            return (!contentValues.containsKey(BaseVideoPlayerActivity.VIDEO_URL) || contentValues.getAsString(BaseVideoPlayerActivity.VIDEO_URL) == null || contentValues.getAsString(BaseVideoPlayerActivity.VIDEO_URL).isEmpty()) ? new C8047a(contentValues) : new C8147bc(contentValues);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r35v0 */
        /* JADX WARN: Type inference failed for: r35v1 */
        /* JADX WARN: Type inference failed for: r35v2 */
        /* JADX WARN: Type inference failed for: r35v3 */
        /* JADX WARN: Type inference failed for: r35v4 */
        /* JADX WARN: Type inference failed for: r35v5 */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.inmobi.ads.C8047a m6620a(org.json.JSONObject r22, long r23, java.lang.String r25, java.lang.String r26, java.lang.String r27, com.inmobi.ads.InMobiAdRequest.MonetizationContext r28, com.inmobi.ads.C8302r r29) {
            /*
                Method dump skipped, instructions count: 1155
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8047a.C8048a.m6620a(org.json.JSONObject, long, java.lang.String, java.lang.String, java.lang.String, com.inmobi.ads.InMobiAdRequest$MonetizationContext, com.inmobi.ads.r):com.inmobi.ads.a");
        }

        /* renamed from: a */
        public static String m6621a(JSONObject jSONObject) {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
                if (jSONArray.length() == 0) {
                    return "";
                }
                String string = jSONObject.getString("assetType");
                if (string.equalsIgnoreCase("video")) {
                    return jSONArray.getString(0);
                }
                if (!string.equalsIgnoreCase("container")) {
                    return "";
                }
                String str = "";
                for (int i = 0; i < jSONArray.length(); i++) {
                    str = m6621a(jSONArray.getJSONObject(i));
                    str = str;
                    if (str.trim().length() != 0) {
                        break;
                    }
                }
                return str;
            } catch (JSONException e) {
                String unused = C8047a.f31472l;
                StringBuilder sb = new StringBuilder("Error getting VAST video XML (");
                sb.append(e.getMessage());
                sb.append(")");
                C8328a.m5878a().m5875a(new C8365a(e));
                return "";
            }
        }

        /* renamed from: a */
        public static List<String> m6619a(JSONObject jSONObject, C8197c.C8208k kVar) {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("pages");
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (!jSONArray.getJSONObject(i).isNull("rootContainer")) {
                        String a = m6621a(jSONArray.getJSONObject(i).getJSONObject("rootContainer"));
                        if (a.trim().length() == 0) {
                            String unused = C8047a.f31472l;
                        } else {
                            C8195by a2 = new C8190bv(kVar).m6230a(a);
                            if (a2 != null && a2.f31970f == 0) {
                                String b = a2.mo6204b();
                                if (b != null && !b.isEmpty()) {
                                    arrayList.add(b);
                                }
                            }
                            String unused2 = C8047a.f31472l;
                        }
                    }
                }
            } catch (JSONException e) {
                String unused3 = C8047a.f31472l;
            }
            return arrayList;
        }

        /* renamed from: a */
        public static List<String> m6618a(JSONObject jSONObject, String str) {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (!jSONArray.getJSONObject(i).isNull("rootContainer")) {
                        arrayList.addAll(m6614c(jSONArray.getJSONObject(i).getJSONObject("rootContainer")));
                    }
                }
            } catch (JSONException e) {
                String unused = C8047a.f31472l;
            }
            return arrayList;
        }

        /* renamed from: b */
        public static List<String> m6615b(JSONObject jSONObject, String str) {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (!jSONArray.getJSONObject(i).isNull("rootContainer")) {
                        arrayList.addAll(m6613d(jSONArray.getJSONObject(i).getJSONObject("rootContainer")));
                    }
                }
            } catch (JSONException e) {
                String unused = C8047a.f31472l;
            }
            return arrayList;
        }

        /* renamed from: b */
        public static boolean m6616b(JSONObject jSONObject) {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
                if (jSONArray.length() == 0) {
                    return false;
                }
                String string = jSONObject.getString("assetType");
                if (string.equalsIgnoreCase("webview")) {
                    return !jSONObject.isNull("preload") && jSONObject.getBoolean("preload");
                }
                if (!string.equalsIgnoreCase("container")) {
                    return false;
                }
                int i = 0;
                boolean z = false;
                while (i < jSONArray.length()) {
                    boolean b = m6616b(jSONArray.getJSONObject(i));
                    z = b;
                    if (b) {
                        break;
                    }
                    i++;
                    z = b;
                }
                return z;
            } catch (JSONException e) {
                String unused = C8047a.f31472l;
                StringBuilder sb = new StringBuilder("Error getting preload webview flag (");
                sb.append(e.getMessage());
                sb.append(")");
                C8328a.m5878a().m5875a(new C8365a(e));
                return false;
            }
        }

        /* renamed from: c */
        public static List<String> m6614c(JSONObject jSONObject) {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
                if (jSONArray.length() == 0) {
                    return arrayList;
                }
                String string = jSONObject.getString("assetType");
                if (string.equalsIgnoreCase("image")) {
                    if (!jSONObject.isNull("preload") && jSONObject.getBoolean("preload")) {
                        arrayList.add(jSONArray.getString(0));
                    }
                    return arrayList;
                }
                if (string.equalsIgnoreCase("container")) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.addAll(m6614c(jSONArray.getJSONObject(i)));
                    }
                }
                return arrayList;
            } catch (JSONException e) {
                String unused = C8047a.f31472l;
                StringBuilder sb = new StringBuilder("Error getting getImageAssetUrls (");
                sb.append(e.getMessage());
                sb.append(")");
                return arrayList;
            }
        }

        /* renamed from: d */
        public static List<String> m6613d(JSONObject jSONObject) {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
                if (jSONArray.length() == 0) {
                    return arrayList;
                }
                String string = jSONObject.getString("assetType");
                if (string.equalsIgnoreCase("gif")) {
                    arrayList.add(jSONArray.getString(0));
                    return arrayList;
                }
                if (string.equalsIgnoreCase("container")) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.addAll(m6613d(jSONArray.getJSONObject(i)));
                    }
                }
                return arrayList;
            } catch (JSONException e) {
                String unused = C8047a.f31472l;
                StringBuilder sb = new StringBuilder("Error getting getGifAssetUrls (");
                sb.append(e.getMessage());
                sb.append(")");
                return arrayList;
            }
        }
    }

    public C8047a(ContentValues contentValues) {
        this.f31473a = contentValues.getAsInteger("id").intValue();
        this.f31474b = contentValues.getAsString("ad_type");
        this.f31484m = contentValues.getAsString("ad_size");
        this.f31485n = contentValues.getAsString("asset_urls");
        this.f31475c = contentValues.getAsString("ad_content");
        this.f31476d = contentValues.getAsLong("placement_id").longValue();
        this.f31477e = contentValues.getAsLong("insertion_ts").longValue();
        this.f31478f = contentValues.getAsLong("expiry_duration").longValue();
        this.f31479g = contentValues.getAsString("imp_id");
        this.f31480h = contentValues.getAsString("client_request_id");
        InMobiAdRequest.MonetizationContext a = InMobiAdRequest.MonetizationContext.m6733a(contentValues.getAsString("m10_context"));
        this.f31486o = a;
        if (a == null) {
            this.f31486o = InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY;
        }
        this.f31481i = contentValues.getAsString("web_vast");
        this.f31482j = contentValues.getAsInteger("preload_webView").intValue() != 0;
        this.f31483k = contentValues.getAsFloat("bid").floatValue();
        this.f31487p = contentValues.getAsString("bidInfo");
    }

    public C8047a(JSONObject jSONObject, long j, String str, String str2, String str3, String str4, InMobiAdRequest.MonetizationContext monetizationContext, long j2, float f, String str5) {
        this(jSONObject, null, j, str, str2, str3, str4, monetizationContext, false, j2, f, str5);
    }

    public /* synthetic */ C8047a(JSONObject jSONObject, long j, String str, String str2, String str3, String str4, InMobiAdRequest.MonetizationContext monetizationContext, long j2, float f, String str5, byte b) {
        this(jSONObject, j, str, str2, str3, str4, monetizationContext, j2, f, str5);
    }

    public C8047a(JSONObject jSONObject, String str, long j, String str2, String str3, String str4, String str5, InMobiAdRequest.MonetizationContext monetizationContext, boolean z, long j2, float f, String str6) {
        this.f31473a = -1;
        this.f31475c = jSONObject.toString();
        this.f31485n = str;
        this.f31476d = j;
        this.f31474b = str2;
        this.f31484m = str3;
        this.f31477e = System.currentTimeMillis();
        this.f31479g = str4;
        this.f31480h = str5;
        this.f31486o = monetizationContext;
        this.f31481i = "";
        this.f31482j = z;
        this.f31478f = j2;
        this.f31483k = f;
        this.f31487p = str6;
    }

    /* renamed from: a */
    public static /* synthetic */ void m6630a(JSONArray jSONArray, String str, int i) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", i);
        jSONObject.put("url", str);
        jSONArray.put(jSONObject);
    }

    /* renamed from: a */
    public ContentValues mo6341a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("ad_type", this.f31474b);
        contentValues.put("ad_size", this.f31484m);
        contentValues.put("asset_urls", this.f31485n);
        contentValues.put("ad_content", this.f31475c);
        contentValues.put("placement_id", Long.valueOf(this.f31476d));
        contentValues.put("insertion_ts", Long.valueOf(this.f31477e));
        contentValues.put("expiry_duration", Long.valueOf(this.f31478f));
        contentValues.put("imp_id", this.f31479g);
        contentValues.put("client_request_id", this.f31480h);
        contentValues.put("m10_context", this.f31486o.f31294a);
        String str = this.f31481i;
        if (str != null) {
            contentValues.put("web_vast", str);
        }
        contentValues.put("preload_webView", Integer.valueOf(this.f31482j ? 1 : 0));
        contentValues.put("bid", Float.valueOf(this.f31483k));
        contentValues.put("bidInfo", this.f31487p);
        return contentValues;
    }

    /* renamed from: a */
    public final boolean m6631a(C8047a aVar) {
        return m6627d().equals(aVar.m6627d());
    }

    /* renamed from: b */
    public final JSONObject m6629b() {
        try {
            return this.f31487p == null ? new JSONObject() : new JSONObject(this.f31487p);
        } catch (JSONException e) {
            return new JSONObject();
        }
    }

    /* renamed from: c */
    public final long m6628c() {
        long j = this.f31478f;
        if (j == -1) {
            return -1L;
        }
        return this.f31477e + j;
    }

    /* renamed from: d */
    public final Set<C8181bn> m6627d() {
        HashSet hashSet = new HashSet();
        String str = this.f31485n;
        if (!(str == null || str.length() == 0)) {
            try {
                JSONArray jSONArray = new JSONArray(this.f31485n);
                if (jSONArray.length() == 0) {
                    return hashSet;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = new JSONObject(jSONArray.getString(i));
                    int i2 = jSONObject.getInt("type");
                    String string = jSONObject.getString("url");
                    if (string != null) {
                        hashSet.add(new C8181bn(i2, string));
                    }
                }
                return hashSet;
            } catch (JSONException e) {
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        }
        return hashSet;
    }

    /* renamed from: e */
    public final String m6626e() {
        try {
            JSONObject jSONObject = new JSONObject(this.f31475c);
            return jSONObject.isNull("markupType") ? "" : jSONObject.getString("markupType");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }

    /* renamed from: f */
    public final JSONObject m6625f() {
        try {
            JSONObject jSONObject = new JSONObject(this.f31475c);
            if (jSONObject.has("cachedAdData")) {
                return jSONObject.getJSONObject("cachedAdData");
            }
            return null;
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }
}
