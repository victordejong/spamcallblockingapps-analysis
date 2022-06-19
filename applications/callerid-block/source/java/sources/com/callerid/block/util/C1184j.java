package com.callerid.block.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.callerid.block.R$raw;
import com.callerid.block.bean.EZCountryCode;
import com.tencent.mmkv.MMKV;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.j */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/j.class */
public class C1184j {

    /* renamed from: b */
    private static C1184j f5005b;

    /* renamed from: a */
    public EZCountryCode f5006a;

    /* renamed from: a */
    public static List m9829a(Context context) {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = new JSONArray(m9824f(context, null));
        for (int i = 0; i < jSONArray.length(); i++) {
            EZCountryCode eZCountryCode = new EZCountryCode();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            eZCountryCode.setCountry_name(jSONObject.getString("COUNTRY"));
            eZCountryCode.setCountry_code(jSONObject.getString("COUNTRY CODE"));
            eZCountryCode.setIso_code(jSONObject.getString("ISO CODES"));
            arrayList.add(eZCountryCode);
        }
        return arrayList;
    }

    /* renamed from: b */
    public static String m9828b(Context context) {
        String str;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            str = "";
            if (telephonyManager != null) {
                str = telephonyManager.getSimCountryIso().toUpperCase();
            }
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: c */
    public static String m9827c(Context context, String str) {
        String str2;
        try {
            str2 = new JSONObject(m9823g(context)).getString(str);
        } catch (JSONException e) {
            e.printStackTrace();
            str2 = "";
        }
        return str2;
    }

    /* renamed from: d */
    public static EZCountryCode m9826d(Context context) {
        MMKV mmkv;
        try {
            if (MMKV.n() == null) {
                MMKV.o(C1235y.f5092a, new a());
            }
            mmkv = null;
            if (MMKV.n() != null) {
                mmkv = MMKV.t("CallerIdMain", 2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            mmkv = null;
        }
        if (mmkv == null) {
            EZCountryCode eZCountryCode = new EZCountryCode();
            eZCountryCode.setCountry_code("");
            eZCountryCode.setIso_code("");
            eZCountryCode.setCountry_name("");
            return eZCountryCode;
        }
        EZCountryCode eZCountryCode2 = new EZCountryCode();
        try {
            eZCountryCode2.setCountry_code(mmkv.f("country_code", ""));
            eZCountryCode2.setIso_code(mmkv.f("country_iso", ""));
            eZCountryCode2.setCountry_name(mmkv.f("country_name", ""));
        } catch (Throwable th2) {
            eZCountryCode2.setCountry_code("");
            eZCountryCode2.setIso_code("");
            eZCountryCode2.setCountry_name("");
            th2.printStackTrace();
        }
        return eZCountryCode2;
    }

    /* renamed from: e */
    public static C1184j m9825e() {
        if (f5005b == null) {
            f5005b = new C1184j();
        }
        return f5005b;
    }

    /* renamed from: f */
    public static String m9824f(Context context, String str) {
        String str2 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(R$raw.countrycodenew)));
            String str3 = "";
            while (true) {
                str2 = str3;
                String readLine = bufferedReader.readLine();
                str2 = str3;
                if (readLine == null) {
                    break;
                }
                String str4 = str3;
                StringBuilder sb = new StringBuilder();
                String str5 = str3;
                sb.append(str3);
                String str6 = str3;
                sb.append(readLine);
                String str7 = str3;
                str3 = sb.toString();
            }
        } catch (Exception e) {
        }
        return str2;
    }

    /* renamed from: g */
    public static String m9823g(Context context) {
        String str = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(R$raw.countrytc)));
            String str2 = "";
            while (true) {
                str = str2;
                String readLine = bufferedReader.readLine();
                str = str2;
                if (readLine == null) {
                    break;
                }
                String str3 = str2;
                StringBuilder sb = new StringBuilder();
                String str4 = str2;
                sb.append(str2);
                String str5 = str2;
                sb.append(readLine);
                String str6 = str2;
                str2 = sb.toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    /* renamed from: h */
    public static void m9822h(Context context, EZCountryCode eZCountryCode) {
        try {
            if (MMKV.n() == null) {
                MMKV.o(C1235y.f5092a, new b());
            }
            if (MMKV.n() == null) {
                return;
            }
            MMKV t = MMKV.t("CallerIdMain", 2);
            t.k("country_code", eZCountryCode.getCountry_code());
            t.k("country_iso", eZCountryCode.getIso_code());
            t.k("country_name", eZCountryCode.getCountry_name());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
