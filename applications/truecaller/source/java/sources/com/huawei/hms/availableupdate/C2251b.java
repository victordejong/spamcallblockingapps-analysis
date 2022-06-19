package com.huawei.hms.availableupdate;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: com.huawei.hms.availableupdate.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/b.class */
public class C2251b {

    /* renamed from: a */
    public String f7295a;

    /* renamed from: b */
    public int f7296b;

    /* renamed from: c */
    public String f7297c;

    /* renamed from: d */
    public int f7298d;

    /* renamed from: a */
    public int m38162a() {
        return this.f7298d;
    }

    /* renamed from: a */
    public void m38161a(Context context, int i, String str) {
        this.f7298d = i;
        m38157b(context, str);
    }

    /* renamed from: a */
    public void m38160a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.huawei.hms.update.DOWNLOAD_RECORD" + str, 0);
        this.f7295a = sharedPreferences.getString("mUri", "");
        this.f7296b = sharedPreferences.getInt("mSize", 0);
        this.f7297c = sharedPreferences.getString("mHash", "");
        this.f7298d = sharedPreferences.getInt("mReceived", 0);
    }

    /* renamed from: a */
    public void m38159a(String str, int i, String str2) {
        this.f7295a = str;
        this.f7296b = i;
        this.f7297c = str2;
        this.f7298d = 0;
    }

    /* renamed from: b */
    public int m38158b() {
        return this.f7296b;
    }

    /* renamed from: b */
    public final void m38157b(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.huawei.hms.update.DOWNLOAD_RECORD" + str, 0).edit();
        edit.putString("mUri", this.f7295a);
        edit.putInt("mSize", this.f7296b);
        edit.putString("mHash", this.f7297c);
        edit.putInt("mReceived", this.f7298d);
        edit.commit();
    }

    /* renamed from: b */
    public boolean m38156b(String str, int i, String str2) {
        String str3;
        String str4;
        return str != null && str2 != null && (str3 = this.f7295a) != null && str3.equals(str) && this.f7296b == i && (str4 = this.f7297c) != null && str4.equals(str2) && this.f7298d <= this.f7296b;
    }
}
