package com.callerid.block.sms;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
/* renamed from: com.callerid.block.sms.g */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/g.class */
public class C1150g {

    /* renamed from: d */
    private static C1150g f4888d;

    /* renamed from: a */
    private String f4889a;

    /* renamed from: b */
    private String f4890b;

    /* renamed from: c */
    private String f4891c;

    private C1150g() {
    }

    /* renamed from: a */
    public static C1150g m9951a(Context context) {
        return m9950b(context, false);
    }

    /* renamed from: b */
    public static C1150g m9950b(Context context, boolean z) {
        if (f4888d == null || z) {
            f4888d = m9946f(context);
        }
        return f4888d;
    }

    /* renamed from: f */
    private static C1150g m9946f(Context context) {
        C1150g gVar = new C1150g();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        gVar.f4889a = defaultSharedPreferences.getString("mmsc_url", "");
        gVar.f4890b = defaultSharedPreferences.getString("mms_proxy", "");
        gVar.f4891c = defaultSharedPreferences.getString("mms_port", "");
        return gVar;
    }

    /* renamed from: c */
    public String m9949c() {
        return this.f4891c;
    }

    /* renamed from: d */
    public String m9948d() {
        return this.f4890b;
    }

    /* renamed from: e */
    public String m9947e() {
        return this.f4889a;
    }

    public String toString() {
        return "Settings{mmsc='" + this.f4889a + "', mmsProxy='" + this.f4890b + "', mmsPort='" + this.f4891c + "'}";
    }
}
