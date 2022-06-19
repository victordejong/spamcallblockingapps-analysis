package com.huawei.hms.framework.network.grs.p085e;

import android.content.Context;
import android.content.pm.PackageManager;
import com.huawei.hms.framework.common.ContextHolder;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.PLSharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.framework.network.grs.e.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/e/c.class */
public class C2311c {

    /* renamed from: b */
    private static final String f7396b = "c";

    /* renamed from: c */
    private static final Map<String, PLSharedPreferences> f7397c = new ConcurrentHashMap(16);

    /* renamed from: a */
    private final PLSharedPreferences f7398a;

    public C2311c(Context context, String str) {
        String packageName = context.getPackageName();
        Logger.m38048d(f7396b, "get pkgname from context is{%s}", packageName);
        Map<String, PLSharedPreferences> map = f7397c;
        if (map.containsKey(str + packageName)) {
            this.f7398a = map.get(str + packageName);
        } else {
            PLSharedPreferences pLSharedPreferences = new PLSharedPreferences(context, C22128a.m8543z2(str, packageName));
            this.f7398a = pLSharedPreferences;
            map.put(str + packageName, pLSharedPreferences);
        }
        m37987a(context);
    }

    /* renamed from: a */
    private void m37987a(Context context) {
        String str = f7396b;
        StringBuilder m8728C = C22128a.m8728C("ContextHolder.getAppContext() from GRS is:");
        m8728C.append(ContextHolder.getAppContext());
        Logger.m38044i(str, m8728C.toString());
        if (ContextHolder.getAppContext() != null) {
            context = ContextHolder.getAppContext();
        }
        try {
            String l = Long.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionCode);
            String m37985a = m37985a("version", "");
            if (l.equals(m37985a)) {
                return;
            }
            Logger.m38043i(str, "app version changed! old version{%s} and new version{%s}", m37985a, l);
            m37984b();
            m37983b("version", l);
        } catch (PackageManager.NameNotFoundException e) {
            Logger.m38040w(f7396b, "get app version failed and catch NameNotFoundException");
        }
    }

    /* renamed from: a */
    public String m37985a(String str, String str2) {
        String string;
        PLSharedPreferences pLSharedPreferences = this.f7398a;
        if (pLSharedPreferences == null) {
            return str2;
        }
        synchronized (pLSharedPreferences) {
            string = this.f7398a.getString(str, str2);
        }
        return string;
    }

    /* renamed from: a */
    public Map<String, ?> m37988a() {
        Map<String, ?> all;
        PLSharedPreferences pLSharedPreferences = this.f7398a;
        if (pLSharedPreferences == null) {
            return new HashMap();
        }
        synchronized (pLSharedPreferences) {
            all = this.f7398a.getAll();
        }
        return all;
    }

    /* renamed from: a */
    public void m37986a(String str) {
        PLSharedPreferences pLSharedPreferences = this.f7398a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f7398a.remove(str);
        }
    }

    /* renamed from: b */
    public void m37984b() {
        PLSharedPreferences pLSharedPreferences = this.f7398a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f7398a.clear();
        }
    }

    /* renamed from: b */
    public void m37983b(String str, String str2) {
        PLSharedPreferences pLSharedPreferences = this.f7398a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f7398a.putString(str, str2);
        }
    }
}
