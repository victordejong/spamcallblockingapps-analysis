package com.allinone.callerid.util;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.allinone.callerid.main.EZCallApplication;
import com.google.firebase.analytics.FirebaseAnalytics;
/* renamed from: com.allinone.callerid.util.q */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/q.class */
public class C3810q {

    /* renamed from: a */
    private static C3810q f12058a;

    /* renamed from: b */
    private Context f12059b;

    /* renamed from: c */
    private FirebaseAnalytics f12060c;

    public C3810q(Context context) {
        this.f12059b = context;
    }

    /* renamed from: a */
    private FirebaseAnalytics m24072a() {
        if (this.f12060c == null) {
            try {
                this.f12060c = FirebaseAnalytics.getInstance(this.f12059b);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.f12060c;
    }

    /* renamed from: b */
    public static C3810q m24071b() {
        if (f12058a == null) {
            f12058a = new C3810q(EZCallApplication.m26146c());
        }
        return f12058a;
    }

    /* renamed from: c */
    public void m24070c(String str) {
        f12058a.m24072a().m2568a(str, null);
    }

    /* renamed from: d */
    public void m24069d(String str) {
        String country_name = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_name();
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("country", country_name);
        m24072a.m2568a(str, bundle);
    }

    /* renamed from: e */
    public void m24068e(String str) {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("device", C3767h1.m24274N());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        m24072a.m2568a(str, bundle);
    }

    /* renamed from: f */
    public void m24067f(String str) {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("DownloadError", str);
        m24072a.m2568a("DownloadException", bundle);
    }

    /* renamed from: g */
    public void m24066g(String str) {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("error", str);
        m24072a.m2568a("search_error", bundle);
    }

    /* renamed from: h */
    public void m24065h() {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("device", C3767h1.m24274N());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        m24072a.m2568a("not_alive", bundle);
    }

    /* renamed from: i */
    public void m24064i() {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("device", C3767h1.m24274N());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        m24072a.m2568a("not_alive_current_day_date", bundle);
    }

    /* renamed from: j */
    public void m24063j() {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("device", C3767h1.m24274N());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        m24072a.m2568a("not_alive_current_day_time", bundle);
    }

    /* renamed from: k */
    public void m24062k() {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("device", C3767h1.m24274N());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        m24072a.m2568a("not_alive_more_day_time", bundle);
    }

    /* renamed from: l */
    public void m24061l() {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("device", C3767h1.m24274N());
        bundle.putString("manufacturer", Build.MANUFACTURER);
        bundle.putString("osversion", Build.VERSION.RELEASE);
        m24072a.m2568a("not_alive_next_day_time", bundle);
    }

    /* renamed from: m */
    public void m24060m(String str) {
        FirebaseAnalytics m24072a = f12058a.m24072a();
        Bundle bundle = new Bundle();
        bundle.putString("play_error", str);
        m24072a.m2568a("exo_play_error", bundle);
    }
}
