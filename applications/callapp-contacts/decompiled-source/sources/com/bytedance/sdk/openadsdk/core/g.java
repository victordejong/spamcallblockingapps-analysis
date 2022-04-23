package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTSecAbs;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.k.g.a;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.b;
import com.bytedance.sdk.openadsdk.utils.e;
import com.bytedance.sdk.openadsdk.utils.j;
import com.bytedance.sdk.openadsdk.utils.u;
import com.bytedance.sdk.openadsdk.utils.z;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g.class */
public class g {
    private static final g r = new g();

    /* renamed from: a  reason: collision with root package name */
    private String f8936a;

    /* renamed from: b  reason: collision with root package name */
    private String f8937b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8938c;

    /* renamed from: d  reason: collision with root package name */
    private String f8939d;
    private String e;
    private final Set<Integer> i;
    private String[] m;
    private TTSecAbs p;
    private String q;
    private c s;
    private com.bytedance.sdk.openadsdk.core.video.b.c t;
    private AtomicBoolean f = new AtomicBoolean(false);
    private int g = 0;
    private boolean h = true;
    private boolean j = false;
    private Bitmap k = null;
    private b l = new b();
    private int n = 0;
    private int o = 0;

    private g() {
        Set<Integer> synchronizedSet = Collections.synchronizedSet(new HashSet());
        this.i = synchronizedSet;
        a.a(n.a());
        synchronizedSet.add(4);
        Context a2 = n.a();
        if (a2 instanceof Application) {
            ((Application) a2).registerActivityLifecycleCallbacks(this.l);
        } else if (a2 != null && a2.getApplicationContext() != null) {
            ((Application) a2.getApplicationContext()).registerActivityLifecycleCallbacks(this.l);
        }
    }

    public static String a(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject i = i(str);
            if (i == null) {
                return null;
            }
            if (System.currentTimeMillis() - i.getLong("time") <= j) {
                return i.getString("value");
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("value", str2);
                jSONObject.put("time", System.currentTimeMillis());
                if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                    com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", str, jSONObject.toString());
                } else {
                    z.a((String) null, n.a()).a(str, jSONObject.toString());
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static g b() {
        return r;
    }

    private static void e(String str) {
        u.a(str, "appid不能为空");
    }

    private static void f(String str) {
        u.a(str, "name不能为空");
    }

    private static void g(String str) {
        if (!TextUtils.isEmpty(str)) {
            u.a(str.length() <= 1000, "keyword超长, 最长为1000");
        }
    }

    private static void h(String str) {
        if (!TextUtils.isEmpty(str)) {
            u.a(str.length() <= 1000, "data超长, 最长为1000");
        }
    }

    private static JSONObject i(String str) {
        String b2 = com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.b("sp_global_info", str, (String) null) : z.a((String) null, n.a()).b(str, (String) null);
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        try {
            return new JSONObject(b2);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a(int i) {
        if (i == 0 || i == 1) {
            if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "sdk_coppa", Integer.valueOf(i));
            } else {
                z.a((String) null, n.a()).a("sdk_coppa", i);
            }
            this.n = i;
        }
    }

    public void a(Bitmap bitmap) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            String a2 = e.a(bitmap);
            if (!TextUtils.isEmpty(a2)) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "pause_icon", a2);
            }
        }
        this.k = bitmap;
    }

    public void a(TTSecAbs tTSecAbs) {
        this.p = tTSecAbs;
    }

    public void a(String str) {
        e(str);
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
        }
        this.f8936a = str;
    }

    public void a(boolean z) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "sdk_activate_init", Boolean.valueOf(z));
        }
        z.a((String) null, n.a()).a("sdk_activate_init", z);
    }

    public void a(String[] strArr) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b() && strArr != null && strArr.length > 0) {
            StringBuilder sb = new StringBuilder();
            int i = 0;
            for (String str : strArr) {
                i = i;
                if (!TextUtils.isEmpty(str)) {
                    if (i > 0) {
                        sb.append(",");
                    }
                    sb.append(str);
                    i++;
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "need_clear_task_reset", sb2);
            }
        }
        this.m = strArr;
    }

    public boolean a() {
        return this.l.a();
    }

    public void b(int i) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "tt_gdrp", Integer.valueOf(i));
        } else {
            z.a((String) null, n.a()).a("tt_gdrp", i);
        }
    }

    public void b(String str) {
        f(str);
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "name", str);
        }
        this.f8937b = str;
    }

    public void b(boolean z) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "is_paid", Boolean.valueOf(z));
        }
        this.f8938c = z;
    }

    public void c(int i) {
        int i2 = i;
        if (i != 0) {
            i2 = i;
            if (i != 1) {
                i2 = -99;
            }
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "global_coppa", Integer.valueOf(i2));
        } else {
            z.a((String) null, n.a()).a("global_coppa", i2);
        }
        this.o = i2;
    }

    public void c(String str) {
        g(str);
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, str);
        }
        this.f8939d = str;
    }

    public void c(boolean z) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "allow_show_notify", Boolean.valueOf(z));
        }
        this.h = z;
    }

    public boolean c() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "sdk_activate_init", true) : z.a((String) null, n.a()).b("sdk_activate_init", true);
    }

    public String d() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.b("sp_global_info", PangleAdapterConfiguration.APP_ID_EXTRA_KEY, (String) null) : this.f8936a;
    }

    public void d(int i) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "title_bar_theme", Integer.valueOf(i));
        }
        this.g = i;
    }

    public void d(String str) {
        h(str);
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "extra_data", str);
        }
        this.e = str;
    }

    public void d(boolean z) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "is_use_texture", Boolean.valueOf(z));
        }
        this.j = z;
    }

    public String e() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.b("sp_global_info", "name", (String) null) : this.f8937b;
    }

    public int f() {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            return com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "sdk_coppa", 0);
        }
        int b2 = z.a((String) null, n.a()).b("sdk_coppa", 0);
        this.n = b2;
        return b2;
    }

    public int g() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "tt_gdrp", -1) : z.a((String) null, n.a()).b("tt_gdrp", -1);
    }

    public int h() {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            this.o = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "global_coppa", -99);
        } else {
            this.o = z.a((String) null, n.a()).b("global_coppa", -99);
        }
        if (this.o == -99) {
            this.o = f();
        }
        return this.o;
    }

    public boolean i() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "is_paid", false) : this.f8938c;
    }

    public String j() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.b("sp_global_info", VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, (String) null) : this.f8939d;
    }

    public String k() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.b("sp_global_info", "extra_data", (String) null) : this.e;
    }

    public int l() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "title_bar_theme", 0) : this.g;
    }

    public void m() {
        e(this.f8936a);
        f(this.f8937b);
    }

    public c n() {
        if (this.s == null) {
            this.s = new c(10, 8);
        }
        return this.s;
    }

    public com.bytedance.sdk.openadsdk.core.video.b.c o() {
        if (this.t == null) {
            this.t = new com.bytedance.sdk.openadsdk.core.video.b.c(10, 8);
        }
        return this.t;
    }

    public boolean p() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_global_info", "is_use_texture", false) : this.j;
    }

    public Bitmap q() {
        return com.bytedance.sdk.openadsdk.multipro.b.b() ? e.a(com.bytedance.sdk.openadsdk.multipro.d.a.b("sp_global_info", "pause_icon", (String) null)) : this.k;
    }

    public TTSecAbs r() {
        return this.p;
    }

    public boolean s() {
        return "5001121".equals(this.f8936a);
    }

    public boolean t() {
        return "com.union_test.internationad".equals(af.d());
    }

    public String u() {
        if (!TextUtils.isEmpty(this.q)) {
            return this.q;
        }
        String a2 = j.a();
        this.q = a2;
        if (!TextUtils.isEmpty(a2)) {
            return this.q;
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        j.a(valueOf);
        this.q = valueOf;
        return valueOf;
    }
}
