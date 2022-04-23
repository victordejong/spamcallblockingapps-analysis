package com.callerid.block.util;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.callerid.block.bean.ParserIpBean;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p055j.C1075b;
import com.google.firebase.analytics.FirebaseAnalytics;
/* renamed from: com.callerid.block.util.k */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/k.class */
public class C1186k {

    /* renamed from: c */
    private static C1186k f5007c;

    /* renamed from: a */
    private Context f5008a;

    /* renamed from: b */
    private FirebaseAnalytics f5009b;

    public C1186k(Context context) {
        this.f5008a = context;
    }

    /* renamed from: a */
    public static String m9818a() {
        String iso_code = C1184j.m9826d(EZCallApplication.m10163c()).getIso_code();
        return (iso_code == null || !iso_code.equals("US/USA")) ? (iso_code == null || !iso_code.equals("IN/IND")) ? (iso_code == null || !iso_code.equals("IQ/IRQ")) ? (iso_code == null || !iso_code.equals("EG/EGY")) ? (iso_code == null || !iso_code.equals("ID/IDN")) ? "UNKNOWN" : "IDN" : "EGY" : "IRQ" : "IND" : "USA";
    }

    /* renamed from: b */
    private FirebaseAnalytics m9817b() {
        if (this.f5009b == null) {
            try {
                this.f5009b = FirebaseAnalytics.getInstance(this.f5008a);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.f5009b;
    }

    /* renamed from: c */
    public static C1186k m9816c() {
        if (f5007c == null) {
            f5007c = new C1186k(EZCallApplication.m10163c());
        }
        return f5007c;
    }

    /* renamed from: d */
    public void m9815d(String str, String str2) {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("Country", str);
        bundle.putString("Type", str2);
        b.a("Incommint_num", bundle);
    }

    /* renamed from: e */
    public void m9814e(String str) {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("Country", str);
        b.a("inquireHaveNet", bundle);
    }

    /* renamed from: f */
    public void m9813f(String str) {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("Country", str);
        b.a("inquireSuccess", bundle);
    }

    /* renamed from: g */
    public void m9812g(String str) {
        f5007c.m9817b().a(str, (Bundle) null);
    }

    /* renamed from: h */
    public void m9811h(String str, String str2) {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("Country", str);
        bundle.putString("Type", str2);
        b.a("Outgoing_num", bundle);
    }

    /* renamed from: i */
    public void m9810i(String str) {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("Country", str);
        b.a("queryOutName", bundle);
    }

    /* renamed from: j */
    public void m9809j(String str) {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("Country", str);
        b.a("queryOutSpam", bundle);
    }

    /* renamed from: k */
    public void m9808k() {
        ParserIpBean b = C1075b.m10216a().m10215b();
        if (b != null && b.getCountry() != null && !"".equals(b.getCountry())) {
            String country = b.getCountry();
            String state = b.getState();
            String str = !C1199n0.m9662u(EZCallApplication.m10163c()) ? "full" : "base";
            FirebaseAnalytics b2 = f5007c.m9817b();
            Bundle bundle = new Bundle();
            bundle.putString("country", country);
            bundle.putString("state", state);
            bundle.putString("dbtype", str);
            b2.a("search_offline_db", bundle);
        }
    }

    /* renamed from: l */
    public void m9807l() {
        ParserIpBean b = C1075b.m10216a().m10215b();
        if (b != null && b.getCountry() != null && !"".equals(b.getCountry())) {
            String country = b.getCountry();
            String state = b.getState();
            String str = !C1199n0.m9662u(EZCallApplication.m10163c()) ? "full" : "base";
            FirebaseAnalytics b2 = f5007c.m9817b();
            Bundle bundle = new Bundle();
            bundle.putString("country", country);
            bundle.putString("state", state);
            bundle.putString("dbtype", str);
            b2.a("search_offline_db_success", bundle);
        }
    }

    /* renamed from: m */
    public void m9806m(String str) {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("error", str);
        b.a("search_error", bundle);
    }

    /* renamed from: n */
    public void m9805n() {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("device", C1216t0.m9551z());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        b.a("not_alive", bundle);
    }

    /* renamed from: o */
    public void m9804o() {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("device", C1216t0.m9551z());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        b.a("not_alive_current_day_date", bundle);
    }

    /* renamed from: p */
    public void m9803p() {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("device", C1216t0.m9551z());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        b.a("not_alive_current_day_time", bundle);
    }

    /* renamed from: q */
    public void m9802q() {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("device", C1216t0.m9551z());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        b.a("not_alive_more_day_time", bundle);
    }

    /* renamed from: r */
    public void m9801r() {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("device", C1216t0.m9551z());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        b.a("not_alive_next_day_date", bundle);
    }

    /* renamed from: s */
    public void m9800s() {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("device", C1216t0.m9551z());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        b.a("not_alive_next_day_time", bundle);
    }

    /* renamed from: t */
    public void m9799t() {
        FirebaseAnalytics b = f5007c.m9817b();
        Bundle bundle = new Bundle();
        bundle.putString("device", C1216t0.m9551z());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        b.a("un_7zip_filed", bundle);
    }
}
