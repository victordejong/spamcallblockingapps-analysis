package com.facebook.p105c.p106a;

import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import com.facebook.C1803a;
import com.facebook.C2102k;
import com.facebook.EnumC2195o;
import com.facebook.FacebookException;
import com.facebook.internal.C2079x;
import com.facebook.p105c.p106a.C1950b;
import com.facebook.p105c.p107b.C1966g;
import com.facebook.p105c.p107b.C1972j;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.c.a.c */
/* loaded from: classes-dex2jar.jar:com/facebook/c/a/c.class */
public final class C1952c {
    /* renamed from: a */
    public static Pair<String, String> m15771a(String str) {
        int indexOf = str.indexOf(58);
        String str2 = null;
        String str3 = str;
        if (indexOf != -1) {
            str2 = null;
            str3 = str;
            if (str.length() > indexOf + 1) {
                str2 = str.substring(0, indexOf);
                str3 = str.substring(indexOf + 1);
            }
        }
        return new Pair<>(str2, str3);
    }

    /* renamed from: a */
    public static C2102k m15774a(C1803a c1803a, Uri uri, C2102k.AbstractC2108b abstractC2108b) {
        C2102k c2102k;
        if (C2079x.m15443c(uri)) {
            c2102k = m15773a(c1803a, new File(uri.getPath()), abstractC2108b);
        } else if (!C2079x.m15451b(uri)) {
            throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
        } else {
            C2102k.C2112f c2112f = new C2102k.C2112f(uri, "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", c2112f);
            c2102k = new C2102k(c1803a, "me/staging_resources", bundle, EnumC2195o.POST, abstractC2108b);
        }
        return c2102k;
    }

    /* renamed from: a */
    public static C2102k m15773a(C1803a c1803a, File file, C2102k.AbstractC2108b abstractC2108b) {
        C2102k.C2112f c2112f = new C2102k.C2112f(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", c2112f);
        return new C2102k(c1803a, "me/staging_resources", bundle, EnumC2195o.POST, abstractC2108b);
    }

    /* renamed from: a */
    public static JSONArray m15770a(JSONArray jSONArray, boolean z) {
        JSONArray jSONArray2;
        JSONArray jSONArray3 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                jSONArray2 = m15770a((JSONArray) obj, z);
            } else {
                jSONArray2 = obj;
                if (obj instanceof JSONObject) {
                    jSONArray2 = m15769a((JSONObject) obj, z);
                }
            }
            jSONArray3.put(jSONArray2);
        }
        return jSONArray3;
    }

    /* renamed from: a */
    public static JSONObject m15772a(C1966g c1966g) {
        return C1950b.m15778a(c1966g.m15743c(), new C1950b.AbstractC1951a() { // from class: com.facebook.c.a.c.1
            @Override // com.facebook.p105c.p106a.C1950b.AbstractC1951a
            /* renamed from: a */
            public JSONObject mo15768a(C1972j c1972j) {
                Uri m15731a = c1972j.m15731a();
                if (!C2079x.m15487a(m15731a)) {
                    throw new FacebookException("Only web images may be used in OG objects shared via the web dialog");
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", m15731a.toString());
                    return jSONObject;
                } catch (JSONException e) {
                    throw new FacebookException("Unable to attach images", e);
                }
            }
        });
    }

    /* renamed from: a */
    public static JSONObject m15769a(JSONObject jSONObject, boolean z) {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            jSONObject2 = null;
        } else {
            try {
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                JSONArray names = jSONObject.names();
                for (int i = 0; i < names.length(); i++) {
                    String string = names.getString(i);
                    JSONObject jSONObject5 = jSONObject.get(string);
                    if (jSONObject5 instanceof JSONObject) {
                        jSONObject5 = m15769a((JSONObject) jSONObject5, true);
                    } else if (jSONObject5 instanceof JSONArray) {
                        jSONObject5 = m15770a((JSONArray) jSONObject5, true);
                    }
                    Pair<String, String> m15771a = m15771a(string);
                    String str = (String) m15771a.first;
                    String str2 = (String) m15771a.second;
                    if (z) {
                        if (str != null && str.equals("fbsdk")) {
                            jSONObject3.put(string, jSONObject5);
                        } else if (str == null || str.equals("og")) {
                            jSONObject3.put(str2, jSONObject5);
                        } else {
                            jSONObject4.put(str2, jSONObject5);
                        }
                    } else if (str == null || !str.equals("fb")) {
                        jSONObject3.put(str2, jSONObject5);
                    } else {
                        jSONObject3.put(string, jSONObject5);
                    }
                }
                if (jSONObject4.length() > 0) {
                    jSONObject3.put("data", jSONObject4);
                }
                jSONObject2 = jSONObject3;
            } catch (JSONException e) {
                throw new FacebookException("Failed to create json object from share content");
            }
        }
        return jSONObject2;
    }
}
