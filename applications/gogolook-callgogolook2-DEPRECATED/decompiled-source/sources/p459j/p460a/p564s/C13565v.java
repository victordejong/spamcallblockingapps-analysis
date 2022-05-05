package p459j.p460a.p564s;

import android.content.Context;
import android.preference.PreferenceManager;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import gogolook.callgogolook2.util.OJni;
import java.io.File;
import p081h.p160h.p174c.C6301a;
import p081h.p160h.p174c.C6311c;
import p081h.p160h.p178d.C6333a;
import p081h.p160h.p179e.p180a.C6334a;
import p459j.p460a.p471b1.p473b.C11510a;
import p459j.p460a.p507f0.C12378a;
import p626l.p640y.C15103n;
/* renamed from: j.a.s.v */
/* loaded from: classes2-dex2jar.jar:j/a/s/v.class */
public class C13565v extends C6301a {

    /* renamed from: f */
    public static final String[] f30468f = {"share_pref", "share_cache", "iap_prefs", "sms_prefs", "offline_db_prefs"};

    /* renamed from: g */
    public static C13565v f30469g;

    /* renamed from: e */
    public String f30470e = null;

    /* renamed from: a */
    public static void m3927a(Object obj) {
        if (obj.equals(AdsSettingsKt.KEY_ENABLE)) {
            MyApplication.m29035a(1);
        } else if (obj.equals("seed")) {
            MyApplication.m29035a(2);
        } else {
            MyApplication.m29035a(3);
        }
    }

    /* renamed from: g */
    public static C13565v m3921g() {
        if (f30469g == null) {
            C6311c.f15642a = true;
            f30469g = new C13565v();
        }
        return f30469g;
    }

    @Override // p081h.p160h.p174c.C6301a
    /* renamed from: a */
    public void mo3928a(Context context) {
        super.mo3928a(context);
        if (this.f15609c) {
            m3922f(context);
        }
    }

    /* renamed from: a */
    public boolean m3926a(String str) {
        if (this.f30470e == null) {
            this.f30470e = OJni.getDevPwd(MyApplication.m29013o());
        }
        if (str == null || !str.equals(this.f30470e)) {
            return false;
        }
        m23336a(!m23335b());
        m23331c();
        return true;
    }

    /* renamed from: d */
    public void m3925d() {
        File d;
        String[] list;
        C6333a.m23274a(this.f15607a);
        File file = new File(this.f15607a.getCacheDir().getParent());
        if (file.exists()) {
            for (String str : file.list()) {
                if (!str.equals("lib")) {
                    C15103n.m427c(new File(file, str));
                }
            }
        }
        if (C11510a.m9440b()) {
            String str2 = null;
            try {
                str2 = this.f15607a.getExternalFilesDir(null).getPath() + "/db/";
            } catch (Exception e) {
                if (C11510a.m9436d(this.f15607a) != null) {
                    str2 = d.getPath() + "/WhosCall/db/";
                }
            }
            if (str2 != null) {
                File file2 = new File(str2);
                if (file2.exists()) {
                    for (String str3 : file2.list()) {
                        C15103n.m427c(new File(file2, str3));
                    }
                }
            }
        }
        C6334a.m23211s().m23227d();
    }

    /* renamed from: e */
    public boolean m3924e() {
        return !C6311c.f15642a;
    }

    /* renamed from: f */
    public void m3922f(Context context) {
        m3927a((Object) PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()).getString("develop_server_preference", C12378a.f27903h.equalsIgnoreCase("https://api.whoscall.com") ? AdsSettingsKt.KEY_ENABLE : "disable"));
    }

    /* renamed from: f */
    public boolean m3923f() {
        boolean z;
        if (this.f15609c) {
            String string = PreferenceManager.getDefaultSharedPreferences(this.f15607a.getApplicationContext()).getString("develop_server_preference", C12378a.f27903h.equalsIgnoreCase("https://api.whoscall.com") ? AdsSettingsKt.KEY_ENABLE : "disable");
            if (!string.equals(AdsSettingsKt.KEY_ENABLE) && !string.equals("seed")) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }
}
