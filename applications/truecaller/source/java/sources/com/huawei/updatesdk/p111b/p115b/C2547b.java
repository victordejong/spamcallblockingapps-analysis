package com.huawei.updatesdk.p111b.p115b;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
/* renamed from: com.huawei.updatesdk.b.b.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/b/b.class */
public class C2547b {

    /* renamed from: a */
    private SharedPreferences f8250a;

    private C2547b(SharedPreferences sharedPreferences) {
        this.f8250a = sharedPreferences;
    }

    /* renamed from: a */
    public static C2547b m36675a(String str, Context context) {
        SharedPreferences sharedPreferences;
        Context context2 = context;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                context2 = context.createDeviceProtectedStorageContext();
            }
            sharedPreferences = context2.getSharedPreferences(str, 0);
        } catch (Exception e) {
            C2515a.m36847b("SharedPreferencesWrapper", "getSharedPreference error");
            sharedPreferences = null;
        }
        return new C2547b(sharedPreferences);
    }

    /* renamed from: a */
    public long m36676a(String str, long j) {
        try {
            return this.f8250a.getLong(str, j);
        } catch (Exception e) {
            return j;
        }
    }

    /* renamed from: a */
    public String m36674a(String str, String str2) {
        try {
            return this.f8250a.getString(str, str2);
        } catch (Exception e) {
            return str2;
        }
    }

    /* renamed from: a */
    public void m36677a(String str) {
        try {
            if (!this.f8250a.contains(str)) {
                return;
            }
            SharedPreferences.Editor edit = this.f8250a.edit();
            edit.remove(str);
            edit.commit();
        } catch (Exception e) {
            C2515a.m36847b("SharedPreferencesWrapper", "remove error!!key:" + str);
        }
    }

    /* renamed from: b */
    public void m36673b(String str, long j) {
        try {
            SharedPreferences.Editor edit = this.f8250a.edit();
            edit.putLong(str, j);
            edit.commit();
        } catch (Exception e) {
            C2515a.m36848a("SharedPreferencesWrapper", "putLong error!!key:" + str, e);
        }
    }

    /* renamed from: b */
    public void m36672b(String str, String str2) {
        try {
            SharedPreferences.Editor edit = this.f8250a.edit();
            edit.putString(str, str2);
            edit.commit();
        } catch (Exception e) {
            C2515a.m36848a("SharedPreferencesWrapper", "putString error!!key:" + str, e);
        }
    }
}
