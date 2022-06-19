package com.allinone.callerid.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$raw;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZCountryCode;
import com.getkeepsafe.relinker.C4465b;
import com.tencent.mmkv.MMKV;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.p */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/p.class */
public class C3806p {

    /* renamed from: com.allinone.callerid.util.p$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/p$a.class */
    public class C3807a implements MMKV.AbstractC9418b {
        C3807a() {
        }

        @Override // com.tencent.mmkv.MMKV.AbstractC9418b
        /* renamed from: a */
        public void mo582a(String str) {
            try {
                C4465b.m22413a(EZCallApplication.m26146c(), str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.p$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/p$b.class */
    public class C3808b implements MMKV.AbstractC9418b {
        C3808b() {
        }

        @Override // com.tencent.mmkv.MMKV.AbstractC9418b
        /* renamed from: a */
        public void mo582a(String str) {
            try {
                C4465b.m22413a(EZCallApplication.m26146c(), str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static List<EZCountryCode> m24086a(Context context) {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = new JSONArray(m24081f(context, null));
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
    public static String m24085b(Context context) {
        String str;
        try {
            str = ((TelephonyManager) context.getSystemService("phone")).getSimCountryIso().toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: c */
    public static String m24084c(Context context, String str) {
        String str2;
        try {
            str2 = new JSONObject(m24080g(context)).getString(str);
        } catch (JSONException e) {
            e.printStackTrace();
            str2 = "";
        }
        return str2;
    }

    /* renamed from: d */
    public static EZCountryCode m24083d(Context context) {
        MMKV mmkv;
        try {
            if (MMKV.m590o() == null) {
                MMKV.m589p(C3726e0.f11918a, new C3807a());
            }
            mmkv = null;
            if (MMKV.m590o() != null) {
                mmkv = MMKV.m585t("CountryCode", 2);
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
            eZCountryCode2.setCountry_code(mmkv.m599f("country_code", ""));
            eZCountryCode2.setIso_code(mmkv.m599f("country_iso", ""));
            eZCountryCode2.setCountry_name(mmkv.m599f("country_name", ""));
        } catch (Throwable th2) {
            eZCountryCode2.setCountry_code("");
            eZCountryCode2.setIso_code("");
            eZCountryCode2.setCountry_name("");
            th2.printStackTrace();
        }
        return eZCountryCode2;
    }

    /* renamed from: e */
    public static String m24082e(Context context) {
        String str;
        TelephonyManager telephonyManager;
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_PHONE_NUMBERS") == 0 && C0586a.m33353a(context, "android.permission.READ_PHONE_STATE") == 0 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            str = telephonyManager.getLine1Number();
            return (str == null || "".equals(str)) ? "author unknown" : str;
        }
        str = "";
        if (str == null) {
            return "author unknown";
        }
    }

    /* renamed from: f */
    public static String m24081f(Context context, String str) {
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
    public static String m24080g(Context context) {
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
    public static void m24079h(Context context, EZCountryCode eZCountryCode) {
        try {
            if (MMKV.m590o() == null) {
                MMKV.m589p(C3726e0.f11918a, new C3808b());
            }
            if (MMKV.m590o() == null) {
                return;
            }
            MMKV m585t = MMKV.m585t("CountryCode", 2);
            m585t.m593l("country_code", eZCountryCode.getCountry_code());
            m585t.m593l("country_iso", eZCountryCode.getIso_code());
            m585t.m593l("country_name", eZCountryCode.getCountry_name());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
