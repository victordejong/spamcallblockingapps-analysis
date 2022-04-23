package com.adbert.p009a.p010a;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.adbert.p009a.C1379c;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1406h;
import com.adbert.p009a.C1407i;
import com.adbert.p009a.p012c.EnumC1383c;
import com.adbert.p009a.p012c.EnumC1388h;
import java.util.ArrayList;
import java.util.Locale;
/* renamed from: com.adbert.a.a.e */
/* loaded from: classes-dex2jar.jar:com/adbert/a/a/e.class */
public class C1369e {

    /* renamed from: a */
    public WifiManager f364a;

    /* renamed from: b */
    public WifiInfo f365b;

    /* renamed from: c */
    public Context f366c;

    /* renamed from: d */
    public String f367d;

    /* renamed from: e */
    public String f368e;

    /* renamed from: f */
    public String f369f;

    /* renamed from: g */
    public String f370g;

    /* renamed from: h */
    public String f371h;

    /* renamed from: i */
    public String f372i = "";

    /* renamed from: j */
    public String f373j;

    /* renamed from: k */
    public String f374k;

    /* renamed from: l */
    public String f375l;

    /* renamed from: m */
    public String f376m;

    /* renamed from: n */
    public String f377n;

    /* renamed from: o */
    public SharedPreferences f378o;

    public C1369e(Context context) {
        this.f367d = "";
        this.f368e = "";
        this.f369f = "";
        this.f370g = "";
        this.f371h = "";
        this.f373j = "";
        this.f374k = "";
        this.f375l = "";
        this.f376m = "";
        this.f377n = "";
        this.f366c = context;
        this.f367d = "3.2.1n";
        this.f368e = "1";
        this.f378o = context.getSharedPreferences(EnumC1383c.Infos.m37192a(), 0);
        m37227e();
        this.f369f = Build.DEVICE + "/" + Build.MODEL;
        if (this.f369f.contains(" ")) {
            this.f369f.replace(" ", "_");
        }
        this.f371h = Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")";
        try {
            this.f370g = m37225g();
            this.f378o.edit().putString(EnumC1383c.macAddress.m37192a(), this.f370g).commit();
        } catch (Exception e) {
            C1402g.m37141a(e);
        }
        this.f373j = C1402g.m37133c();
        try {
            this.f375l = m37228d();
        } catch (Exception e2) {
            C1402g.m37141a(e2);
        }
        try {
            this.f374k = m37230c();
        } catch (Exception e3) {
            C1402g.m37141a(e3);
        }
        try {
            this.f376m = Locale.getDefault().getLanguage();
        } catch (Exception e4) {
            C1402g.m37141a(e4);
        }
        try {
            this.f377n = Locale.getDefault().getCountry();
        } catch (Exception e5) {
            C1402g.m37141a(e5);
        }
    }

    /* renamed from: a */
    private String m37242a(Context context) {
        if (!C1402g.m37145a(context, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                return "";
        }
    }

    /* renamed from: b */
    private String m37233b() {
        try {
            return EnumC1383c.packageName.m37189c(this.f366c.getPackageName());
        } catch (Exception e) {
            C1402g.m37141a(e);
            return EnumC1383c.packageName.m37189c("");
        }
    }

    /* renamed from: c */
    private String m37230c() {
        return C1402g.m37145a(this.f366c, "android.permission.READ_PHONE_STATE") ? ((TelephonyManager) this.f366c.getSystemService("phone")).getNetworkOperatorName() : "";
    }

    /* renamed from: d */
    private String m37228d() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f366c.getSystemService("connectivity");
        boolean isConnectedOrConnecting = connectivityManager.getNetworkInfo(0).isConnectedOrConnecting();
        boolean isConnectedOrConnecting2 = connectivityManager.getNetworkInfo(1).isConnectedOrConnecting();
        String str = "";
        if (isConnectedOrConnecting) {
            if (m37242a(this.f366c).isEmpty()) {
                str = "3G";
            } else {
                str = "" + m37242a(this.f366c);
            }
        }
        String str2 = str;
        if (isConnectedOrConnecting2) {
            String str3 = str;
            if (!str.isEmpty()) {
                str3 = str + "/";
            }
            str2 = str3 + "wifi";
        }
        return str2;
    }

    /* renamed from: e */
    private void m37227e() {
        this.f378o.edit().putString("LastLocation", this.f378o.getString("Location", "")).commit();
        this.f378o.edit().remove("Location").commit();
        if (C1402g.m37145a(this.f366c, "android.permission.ACCESS_FINE_LOCATION") || C1402g.m37145a(this.f366c, "android.permission.ACCESS_COARSE_LOCATION")) {
            new C1379c(this.f366c, new C1379c.AbstractC1380a() { // from class: com.adbert.a.a.e.1
                @Override // com.adbert.p009a.C1379c.AbstractC1380a
                /* renamed from: a */
                public void mo37195a() {
                    C1369e.this.f372i = "";
                }

                @Override // com.adbert.p009a.C1379c.AbstractC1380a
                /* renamed from: a */
                public void mo37194a(double d, double d2) {
                    C1369e eVar = C1369e.this;
                    eVar.f372i = d + "," + d2;
                    C1369e.this.f378o.edit().putString("Location", C1369e.this.f372i).commit();
                }
            });
        }
    }

    /* renamed from: f */
    private String m37226f() {
        ArrayList arrayList = new ArrayList();
        if (C1402g.m37145a(this.f366c, "android.permission.VIBRATE")) {
            arrayList.add(EnumC1383c.vibrate.toString());
        }
        if (C1402g.m37145a(this.f366c, "android.permission.READ_EXTERNAL_STORAGE")) {
            arrayList.add(EnumC1383c.album.toString());
        }
        if (C1402g.m37145a(this.f366c, "android.permission.WRITE_EXTERNAL_STORAGE") && C1402g.m37145a(this.f366c, "android.permission.CAMERA")) {
            arrayList.add(EnumC1383c.camera.toString());
        }
        C1407i iVar = new C1407i(this.f366c);
        if (iVar.m37114a(EnumC1388h.SHAKE)) {
            arrayList.add(EnumC1383c.shake.toString());
        }
        if (iVar.m37114a(EnumC1388h.DISTANCE)) {
            arrayList.add(EnumC1383c.distance.toString());
        }
        if (iVar.m37114a(EnumC1388h.DISTANCE)) {
            arrayList.add(EnumC1383c.lightSensor.toString());
        }
        String str = "";
        for (int i = 0; i < arrayList.size(); i++) {
            String str2 = str;
            if (i > 0) {
                str2 = str + ",";
            }
            str = str2 + ((String) arrayList.get(i));
        }
        return EnumC1383c.permission.m37189c(str);
    }

    /* renamed from: g */
    private String m37225g() {
        if (Build.VERSION.SDK_INT >= 23 || !C1402g.m37145a(this.f366c, "android.permission.ACCESS_WIFI_STATE")) {
            return "";
        }
        if (this.f364a == null) {
            this.f364a = (WifiManager) this.f366c.getSystemService("wifi");
        }
        if (this.f365b == null) {
            this.f365b = this.f364a.getConnectionInfo();
        }
        WifiInfo wifiInfo = this.f365b;
        return wifiInfo != null ? wifiInfo.getMacAddress() : "";
    }

    /* renamed from: a */
    public String m37243a() {
        return (EnumC1383c.SDKVersion.m37189c("3.2.1n") + EnumC1383c.build.m37189c("1") + EnumC1383c.device.m37189c(this.f369f) + EnumC1383c.macAddress.m37189c(this.f370g) + EnumC1383c.OSVersion.m37189c(this.f371h) + EnumC1383c.GPS.m37189c(this.f372i) + EnumC1383c.timestamp.m37189c(this.f373j) + EnumC1383c.operatorName.m37189c(this.f374k) + EnumC1383c.connectType.m37189c(this.f375l) + m37233b() + EnumC1383c.country.m37189c(this.f377n) + EnumC1383c.language.m37189c(this.f376m)) + "&screenSize=" + new C1406h(this.f366c).m37117c();
    }

    /* renamed from: a */
    public String m37239a(String str, String str2, String str3, String str4) {
        String str5 = str3;
        if (str3 == null) {
            str5 = "";
        }
        return EnumC1383c.appId.m37190b(str) + EnumC1383c.appKey.m37189c(str2) + EnumC1383c.uuid.m37189c(str5) + EnumC1383c.pid.m37189c(str4) + m37243a();
    }

    /* renamed from: a */
    public String m37238a(String str, String str2, String str3, String str4, int i) {
        String str5 = str3;
        if (str3 == null) {
            str5 = "";
        }
        return EnumC1383c.appId.m37190b(str) + EnumC1383c.appKey.m37189c(str2) + EnumC1383c.pid.m37189c(str4) + EnumC1383c.uuid.m37189c(str5) + EnumC1383c.seconds.m37189c(String.valueOf(i)) + m37243a();
    }

    /* renamed from: a */
    public String m37237a(String str, String str2, String str3, String str4, String str5) {
        String str6 = str3;
        if (str3 == null) {
            str6 = "";
        }
        return (((EnumC1383c.appId.m37190b(str) + EnumC1383c.appKey.m37189c(str2) + EnumC1383c.pageInfo.m37189c(str5)) + EnumC1383c.uuid.m37189c(str6)) + "&AD_TYPE=" + str4) + m37243a();
    }

    /* renamed from: a */
    public String m37236a(String str, String str2, String str3, String str4, String str5, String str6) {
        String str7 = str3;
        if (str3 == null) {
            str7 = "";
        }
        String str8 = EnumC1383c.appId.m37190b(str) + EnumC1383c.appKey.m37189c(str2) + EnumC1383c.uuid.m37189c(str7) + EnumC1383c.sharetype.m37189c(str4) + EnumC1383c.pid.m37189c(str5) + m37243a();
        String str9 = str8;
        if (!str6.isEmpty()) {
            str9 = str8 + EnumC1383c.mediaType.m37189c(str6);
        }
        return str9;
    }

    /* renamed from: a */
    public String m37235a(String str, String str2, String str3, String str4, boolean z, String str5) {
        String str6 = str3;
        if (str3 == null) {
            str6 = "";
        }
        this.f378o.edit().putString(EnumC1383c.uuid.m37192a(), str6).commit();
        String str7 = z ? "0" : "1";
        String str8 = EnumC1383c.APPID.m37190b(str) + EnumC1383c.APPKEY.m37189c(str2) + EnumC1383c.UUID.m37189c(str6) + EnumC1383c.AD_MODE.m37189c(str4) + EnumC1383c.orientation.m37189c(str7) + m37226f();
        String str9 = str8;
        if (!str5.isEmpty()) {
            str9 = str8 + EnumC1383c.pageInfo.m37189c(str5);
            this.f378o.edit().putString(EnumC1383c.pageInfo_inters.m37192a(), str5).commit();
        }
        return str9;
    }

    /* renamed from: a */
    public String m37234a(String str, String str2, String str3, String str4, boolean z, boolean z2, String str5) {
        String str6 = str3;
        if (str3 == null) {
            str6 = "";
        }
        this.f378o.edit().putString(EnumC1383c.uuid.m37192a(), str6).commit();
        String str7 = EnumC1383c.APPID.m37190b(str) + EnumC1383c.APPKEY.m37189c(str2) + EnumC1383c.UUID.m37189c(str6) + EnumC1383c.AD_MODE.m37189c(str4);
        String str8 = str7;
        if (!str5.isEmpty()) {
            str8 = str7 + EnumC1383c.pageInfo.m37189c(str5);
            this.f378o.edit().putString(EnumC1383c.pageInfo.m37192a(), str5).commit();
        }
        String str9 = str8;
        if (z2) {
            str9 = str8 + EnumC1383c.and.m37192a() + EnumC1383c.FIRST_REQUEST.m37192a();
        }
        return str9;
    }

    /* renamed from: b */
    public String m37231b(String str, String str2, String str3, String str4, String str5) {
        String str6 = str3;
        if (str3 == null) {
            str6 = "";
        }
        return EnumC1383c.appId.m37190b(str) + EnumC1383c.appKey.m37189c(str2) + EnumC1383c.uuid.m37189c(str6) + EnumC1383c.actiontype.m37189c(str5) + EnumC1383c.pid.m37189c(str4) + m37243a();
    }

    /* renamed from: c */
    public String m37229c(String str, String str2, String str3, String str4, String str5) {
        String str6 = str5;
        if (str5 == null) {
            str6 = "";
        }
        return EnumC1383c.appId.m37190b(str) + EnumC1383c.appKey.m37189c(str2) + EnumC1383c.pid.m37189c(str3) + EnumC1383c.uuid.m37189c(str6) + EnumC1383c.mediaType.m37189c(str4) + m37243a();
    }
}
