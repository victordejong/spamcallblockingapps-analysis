package p131c.p431l.p432a.p461i;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
/* renamed from: c.l.a.i.d */
/* loaded from: classes2-dex2jar.jar:c/l/a/i/d.class */
public class C6824d {

    /* renamed from: a */
    public SharedPreferences f21001a;

    /* renamed from: b */
    public SharedPreferences.Editor f21002b;

    public C6824d(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("imconfig", 0);
        this.f21001a = sharedPreferences;
        if (sharedPreferences != null) {
            this.f21002b = sharedPreferences.edit();
        }
        new ArrayList();
    }

    /* renamed from: a */
    public int m19675a() {
        return this.f21001a.getInt("contact_backup_count", 0);
    }

    /* renamed from: a */
    public void m19674a(int i) {
        this.f21002b.putInt("call_alert_way", i);
        this.f21002b.commit();
    }

    /* renamed from: a */
    public void m19673a(boolean z) {
        this.f21002b.putBoolean("private_shake_alert", z);
        this.f21002b.commit();
    }

    /* renamed from: b */
    public int m19672b() {
        return this.f21001a.getInt("private_incomingcall_mode", 0);
    }

    /* renamed from: b */
    public void m19671b(int i) {
        this.f21002b.putInt("contact_change_count", i);
        this.f21002b.commit();
    }

    /* renamed from: c */
    public void m19669c(int i) {
        this.f21002b.putInt("sms_alert_way", i);
        this.f21002b.commit();
    }

    /* renamed from: c */
    public boolean m19670c() {
        return this.f21001a.getBoolean("boolean_private_call_remind", true);
    }

    /* renamed from: d */
    public String m19668d() {
        return this.f21001a.getString("private_password", "123456");
    }

    /* renamed from: e */
    public boolean m19667e() {
        return this.f21001a.getBoolean("PwdModified", false);
    }

    /* renamed from: f */
    public int m19666f() {
        return this.f21001a.getInt("private_sms_remind", 0);
    }
}
