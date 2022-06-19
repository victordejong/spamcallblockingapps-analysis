package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.net.URISyntaxException;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.g9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/g9.class */
public final class C1748g9 {

    /* renamed from: a */
    public static final AbstractC1766h9<jt> f6608a = m8.a;

    /* renamed from: b */
    public static final AbstractC1766h9<jt> f6609b = n8.a;

    /* renamed from: c */
    public static final AbstractC1766h9<jt> f6610c = o8.a;

    /* renamed from: d */
    public static final AbstractC1766h9<jt> f6611d = s8.a;

    /* renamed from: e */
    public static final AbstractC1766h9<jt> f6612e = new y8();

    /* renamed from: f */
    public static final AbstractC1766h9<jt> f6613f = new z8();

    /* renamed from: g */
    public static final AbstractC1766h9<jt> f6614g = t8.a;

    /* renamed from: h */
    public static final AbstractC1766h9<Object> f6615h = new a9();

    /* renamed from: i */
    public static final AbstractC1766h9<jt> f6616i = new b9();

    /* renamed from: j */
    public static final AbstractC1766h9<jt> f6617j = u8.a;

    /* renamed from: k */
    public static final AbstractC1766h9<jt> f6618k = new c9();

    /* renamed from: l */
    public static final AbstractC1766h9<jt> f6619l = new d9();

    /* renamed from: m */
    public static final AbstractC1766h9<rq> f6620m = new fs();

    /* renamed from: n */
    public static final AbstractC1766h9<rq> f6621n = new gs();

    /* renamed from: o */
    public static final AbstractC1766h9<jt> f6622o = new l8();

    /* renamed from: p */
    public static final v9 f6623p = new v9();

    /* renamed from: q */
    public static final AbstractC1766h9<jt> f6624q = new e9();

    /* renamed from: r */
    public static final AbstractC1766h9<jt> f6625r = new f9();

    /* renamed from: s */
    public static final AbstractC1766h9<jt> f6626s = new v8();

    /* renamed from: t */
    public static final AbstractC1766h9<jt> f6627t = new w8();

    /* renamed from: a */
    public static rz1<String> m7411a(jt jtVar, String str) {
        Uri uri;
        Uri parse = Uri.parse(str);
        try {
            zh2 w = jtVar.w();
            uri = parse;
            if (w != null) {
                uri = parse;
                if (w.m4634a(parse)) {
                    uri = w.m4630e(parse, jtVar.getContext(), jtVar.G(), jtVar.h());
                }
            }
        } catch (zzfi e) {
            C1894po.m6180f(str.length() != 0 ? "Unable to append parameter to URL: ".concat(str) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        String m4736b = C2054ym.m4736b(uri, jtVar.getContext());
        if (C1643a5.f5944f.m6222e().booleanValue()) {
            bz1 E = bz1.E(jtVar.W());
            fw1 fw1Var = p8.a;
            sz1 sz1Var = C2073zo.f9415f;
            return kz1.e(kz1.i(kz1.e(E, Throwable.class, fw1Var, sz1Var), new q8(m4736b), sz1Var), Throwable.class, new r8(m4736b), sz1Var);
        }
        return kz1.a(m4736b);
    }

    /* renamed from: b */
    static final /* synthetic */ void m7410b(AbstractC1824ku abstractC1824ku, Map map) {
        String str;
        JSONException e;
        PackageManager packageManager = abstractC1824ku.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString("c");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e2) {
                                String valueOf = String.valueOf(optString7);
                                C1894po.m6182d(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
                                intent = null;
                            }
                        }
                        boolean z = true;
                        Intent intent2 = intent;
                        if (intent == null) {
                            Intent intent3 = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent3.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent3.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent3.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent3.setPackage(optString5);
                            }
                            intent2 = intent3;
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                intent2 = intent3;
                                if (split.length == 2) {
                                    intent3.setComponent(new ComponentName(split[0], split[1]));
                                    intent2 = intent3;
                                }
                            }
                        }
                        if (packageManager.resolveActivity(intent2, 65536) == null) {
                            z = false;
                        }
                        try {
                            jSONObject.put(optString, z);
                        } catch (JSONException e3) {
                            e = e3;
                            str = "Error constructing openable urls response.";
                            C1894po.m6182d(str, e);
                        }
                    } catch (JSONException e4) {
                        e = e4;
                        str = "Error parsing the intent data.";
                    }
                }
                ((AbstractC1831lb) abstractC1824ku).m6704a("openableIntents", jSONObject);
            } catch (JSONException e5) {
                ((AbstractC1831lb) abstractC1824ku).m6704a("openableIntents", new JSONObject());
            }
        } catch (JSONException e6) {
            ((AbstractC1831lb) abstractC1824ku).m6704a("openableIntents", new JSONObject());
        }
    }
}
