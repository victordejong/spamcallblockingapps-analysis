package com.appnext.core.p017a;

import android.content.Context;
import android.text.TextUtils;
import com.appnext.base.C0472a;
import com.appnext.core.C0564o;
import com.appnext.core.C0565p;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appnext.core.a.a */
/* loaded from: classes-dex2jar.jar:com/appnext/core/a/a.class */
public final class C0522a {

    /* renamed from: eI */
    private static C0522a f1739eI;

    /* renamed from: eH */
    private String f1740eH;

    private C0522a(final Context context) {
        C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C0522a c0522a = C0522a.this;
                    C0565p.m42342aA();
                    c0522a.f1740eH = C0565p.m42341m(context);
                } catch (Throwable th) {
                    C0472a.m42577a("Language$Language", th);
                }
            }
        });
    }

    /* renamed from: a */
    private static String m42461a(String str, String str2, String str3, String str4) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        if (!jSONObject.has(str2)) {
            str2 = jSONObject.has("EN") ? "EN" : null;
        }
        return (TextUtils.isEmpty(str2) || !jSONObject.getJSONObject(str2).getJSONObject("settings").getBoolean("active")) ? str4 : jSONObject.getJSONObject(str2).getJSONObject(str3).getString(str4);
    }

    /* renamed from: q */
    public static C0522a m42459q(Context context) {
        C0522a c0522a;
        synchronized (C0522a.class) {
            try {
                if (f1739eI == null) {
                    f1739eI = new C0522a(context.getApplicationContext());
                }
                c0522a = f1739eI;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0522a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
        if (r7.equals("") != false) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m42462a(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            r6 = this;
            r0 = r7
            if (r0 == 0) goto L10
            r0 = r7
            r10 = r0
            r0 = r7
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L1b
        L10:
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r0 = r0.getLanguage()
            java.lang.String r0 = r0.toUpperCase()
            r10 = r0
        L1b:
            r0 = r6
            java.lang.String r0 = r0.f1740eH     // Catch: java.lang.Throwable -> L2a
            r1 = r10
            r2 = r8
            r3 = r9
            java.lang.String r0 = m42461a(r0, r1, r2, r3)     // Catch: java.lang.Throwable -> L2a
            r7 = r0
            goto L6f
        L2a:
            r7 = move-exception
            java.lang.String r0 = "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"??????\",\"Download\":\"????????????\",\"Shop\":\"???????????? ????????? ??????\",\"Sign up\":\"????????????\",\"Watch\":\"??????\",\"Join\":\"????????????\",\"Start\":\"??????\",\"Subscribe\":\"??????\",\"Add\":\"??????\",\"Search\":\"??????\",\"Share\":\"??????\",\"Get\":\"??????\",\"Book\":\"??????\",\"Play\":\"??????\"},\"existing\":{\"Install\":\"??????\",\"Use\":\"??????\",\"Play\":\"??????\",\"Reserve\":\"????????????\",\"Buy\":\"????????????\",\"View\":\"????????????\",\"Log in\":\"?????????\",\"Listen\":\"??????\",\"Read\":\"??????\",\"Watch\":\"??????\",\"See more\":\"??? ??????\",\"Find\":\"??????\",\"Book\":\"??????\",\"Chat\":\"??????\",\"Park\":\"??????\",\"Open\":\"??????\",\"Exercise\":\"????????????\",\"Optimize\":\"???????????????\"}}}"
            r1 = r10
            r2 = r8
            r3 = r9
            java.lang.String r0 = m42461a(r0, r1, r2, r3)     // Catch: java.lang.Throwable -> L38
            r7 = r0
            goto L6f
        L38:
            r11 = move-exception
            java.lang.String r0 = "Translate$translate"
            r1 = r11
            com.appnext.base.C0472a.m42577a(r0, r1)
            r0 = r6
            java.lang.String r0 = r0.f1740eH     // Catch: java.lang.Throwable -> L50
            java.lang.String r1 = "EN"
            r2 = r8
            r3 = r9
            java.lang.String r0 = m42461a(r0, r1, r2, r3)     // Catch: java.lang.Throwable -> L50
            r7 = r0
            goto L6f
        L50:
            r7 = move-exception
            java.lang.String r0 = "Translate$translate"
            r1 = r11
            com.appnext.base.C0472a.m42577a(r0, r1)
            java.lang.String r0 = "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"??????\",\"Download\":\"????????????\",\"Shop\":\"???????????? ????????? ??????\",\"Sign up\":\"????????????\",\"Watch\":\"??????\",\"Join\":\"????????????\",\"Start\":\"??????\",\"Subscribe\":\"??????\",\"Add\":\"??????\",\"Search\":\"??????\",\"Share\":\"??????\",\"Get\":\"??????\",\"Book\":\"??????\",\"Play\":\"??????\"},\"existing\":{\"Install\":\"??????\",\"Use\":\"??????\",\"Play\":\"??????\",\"Reserve\":\"????????????\",\"Buy\":\"????????????\",\"View\":\"????????????\",\"Log in\":\"?????????\",\"Listen\":\"??????\",\"Read\":\"??????\",\"Watch\":\"??????\",\"See more\":\"??? ??????\",\"Find\":\"??????\",\"Book\":\"??????\",\"Chat\":\"??????\",\"Park\":\"??????\",\"Open\":\"??????\",\"Exercise\":\"????????????\",\"Optimize\":\"???????????????\"}}}"
            java.lang.String r1 = "EN"
            r2 = r8
            r3 = r9
            java.lang.String r0 = m42461a(r0, r1, r2, r3)     // Catch: java.lang.Throwable -> L65
            r7 = r0
            goto L6f
        L65:
            r7 = move-exception
            java.lang.String r0 = "Translate$translate"
            r1 = r11
            com.appnext.base.C0472a.m42577a(r0, r1)
            r0 = r9
            r7 = r0
        L6f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "translate language = ["
            r1.<init>(r2)
            r11 = r0
            r0 = r11
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = "], type = ["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = "], key = ["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r9
            java.lang.String r2 = "], return = ["
            r3 = r7
            java.lang.String r4 = "]"
            p193e.p1432d.p1439c.p1440a.C22128a.m8666T0(r0, r1, r2, r3, r4)
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.core.p017a.C0522a.m42462a(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: aF */
    public final String m42460aF() {
        String str = this.f1740eH;
        return str != null ? str : "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"??????\",\"Download\":\"????????????\",\"Shop\":\"???????????? ????????? ??????\",\"Sign up\":\"????????????\",\"Watch\":\"??????\",\"Join\":\"????????????\",\"Start\":\"??????\",\"Subscribe\":\"??????\",\"Add\":\"??????\",\"Search\":\"??????\",\"Share\":\"??????\",\"Get\":\"??????\",\"Book\":\"??????\",\"Play\":\"??????\"},\"existing\":{\"Install\":\"??????\",\"Use\":\"??????\",\"Play\":\"??????\",\"Reserve\":\"????????????\",\"Buy\":\"????????????\",\"View\":\"????????????\",\"Log in\":\"?????????\",\"Listen\":\"??????\",\"Read\":\"??????\",\"Watch\":\"??????\",\"See more\":\"??? ??????\",\"Find\":\"??????\",\"Book\":\"??????\",\"Chat\":\"??????\",\"Park\":\"??????\",\"Open\":\"??????\",\"Exercise\":\"????????????\",\"Optimize\":\"???????????????\"}}}";
    }
}
