package com.flurry.sdk;

import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.flurry.sdk.dv */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dv.class */
public class C3008dv extends C3362jw {

    /* renamed from: a */
    public static final String f4691a = "dv";

    /* renamed from: a */
    public final String m33320a(C3013e eVar, String str) {
        String str2;
        String a = m32594a(str);
        while (a != null) {
            C3192h hVar = eVar.f4699c;
            AbstractC3518x xVar = hVar.f5303d;
            C2862bd a2 = hVar.f5304e.m33539a();
            C2909cf cfVar = eVar.f4699c.f5304e.f4111b.f4147b;
            boolean z = true;
            if (C3362jw.m32593a("fids", a)) {
                StringBuilder sb = new StringBuilder();
                for (Map.Entry entry : Collections.unmodifiableMap(C3296il.m32745a().f5577a).entrySet()) {
                    if (!z) {
                        sb.append(",");
                    }
                    sb.append(((EnumC3313it) entry.getKey()).f5627d);
                    sb.append(":");
                    if (((EnumC3313it) entry.getKey()).f5628e) {
                        sb.append(new String((byte[]) entry.getValue()));
                    } else {
                        sb.append(C3445la.m32461a((byte[]) entry.getValue()));
                    }
                    z = false;
                }
                C3356jq.m32615a(3, f4691a, "Replacing param fids with: " + sb.toString());
                str = str.replace(a, C3445la.m32455c(sb.toString()));
            } else if (C3362jw.m32593a("sid", a)) {
                C3294ij.m32755a();
                String valueOf = String.valueOf(C3294ij.m32752d());
                C3356jq.m32615a(3, f4691a, "Replacing param sid with: " + valueOf);
                str = str.replace(a, C3445la.m32455c(valueOf));
            } else if (C3362jw.m32593a("lid", a)) {
                String valueOf2 = String.valueOf(a2.f4159a);
                C3356jq.m32615a(3, f4691a, "Replacing param lid with: " + valueOf2);
                str = str.replace(a, C3445la.m32455c(valueOf2));
            } else if (C3362jw.m32593a("guid", a)) {
                String str3 = a2.f4161c;
                C3356jq.m32615a(3, f4691a, "Replacing param guid with: " + str3);
                str = str.replace(a, C3445la.m32455c(str3));
            } else if (C3362jw.m32593a("ats", a)) {
                String valueOf3 = String.valueOf(System.currentTimeMillis());
                C3356jq.m32615a(3, f4691a, "Replacing param ats with: " + valueOf3);
                str = str.replace(a, C3445la.m32455c(valueOf3));
            } else if (C3362jw.m32593a("apik", a)) {
                String str4 = C3331jb.m32681a().f5682d;
                C3356jq.m32615a(3, f4691a, "Replacing param apik with: " + str4);
                str = str.replace(a, C3445la.m32455c(str4));
            } else if (C3362jw.m32593a("hid", a)) {
                String str5 = cfVar.f4436b;
                C3356jq.m32615a(3, f4691a, "Replacing param hid with: " + str5);
                str = str.replace(a, C3445la.m32455c(str5));
            } else if (C3362jw.m32593a("eso", a)) {
                long currentTimeMillis = System.currentTimeMillis();
                C3294ij.m32755a();
                String l = Long.toString(currentTimeMillis - C3294ij.m32752d());
                C3356jq.m32615a(3, f4691a, "Replacing param eso with: " + l);
                str = str.replace(a, C3445la.m32455c(l));
            } else if (C3362jw.m32593a("uc", a)) {
                C3374k l2 = xVar.mo32278l();
                if (l2 != null) {
                    Iterator<Map.Entry<String, String>> it = l2.getUserCookies().entrySet().iterator();
                    String str6 = "";
                    while (true) {
                        str2 = str6;
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry<String, String> next = it.next();
                        str6 = str6 + "c_" + C3445la.m32455c(next.getKey()) + "=" + C3445la.m32455c(next.getValue()) + PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR;
                    }
                } else {
                    str2 = "";
                }
                C3356jq.m32615a(3, f4691a, "Replacing param uc with: " + str2);
                String replace = str.replace(a, str2);
                str = replace;
                if (str2.equals("")) {
                    str = replace;
                    if (replace.length() > 0) {
                        str = replace.substring(0, replace.length() - 1);
                    }
                }
            } else {
                C3356jq.m32615a(3, f4691a, "Unknown param: " + a);
                str = str.replace(a, "");
            }
            a = m32594a(str);
        }
        return C3015eb.m33297a(eVar, str);
    }
}
