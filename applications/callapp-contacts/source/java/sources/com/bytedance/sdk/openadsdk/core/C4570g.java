package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTSecAbs;
import com.bytedance.sdk.openadsdk.core.video.p159b.C4679c;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.p145b.C4350c;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5027a;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5449b;
import com.bytedance.sdk.openadsdk.utils.C5453e;
import com.bytedance.sdk.openadsdk.utils.C5466j;
import com.bytedance.sdk.openadsdk.utils.C5483u;
import com.bytedance.sdk.openadsdk.utils.C5490z;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g.class */
public class C4570g {

    /* renamed from: r */
    private static final C4570g f16647r = new C4570g();

    /* renamed from: a */
    private String f16648a;

    /* renamed from: b */
    private String f16649b;

    /* renamed from: c */
    private boolean f16650c;

    /* renamed from: d */
    private String f16651d;

    /* renamed from: e */
    private String f16652e;

    /* renamed from: i */
    private final Set<Integer> f16656i;

    /* renamed from: m */
    private String[] f16660m;

    /* renamed from: p */
    private TTSecAbs f16663p;

    /* renamed from: q */
    private String f16664q;

    /* renamed from: s */
    private C4350c f16665s;

    /* renamed from: t */
    private C4679c f16666t;

    /* renamed from: f */
    private AtomicBoolean f16653f = new AtomicBoolean(false);

    /* renamed from: g */
    private int f16654g = 0;

    /* renamed from: h */
    private boolean f16655h = true;

    /* renamed from: j */
    private boolean f16657j = false;

    /* renamed from: k */
    private Bitmap f16658k = null;

    /* renamed from: l */
    private C5449b f16659l = new C5449b();

    /* renamed from: n */
    private int f16661n = 0;

    /* renamed from: o */
    private int f16662o = 0;

    private C4570g() {
        Set<Integer> synchronizedSet = Collections.synchronizedSet(new HashSet());
        this.f16656i = synchronizedSet;
        C5027a.m33257a(C4600n.m34815a());
        synchronizedSet.add(4);
        Context m34815a = C4600n.m34815a();
        if (m34815a instanceof Application) {
            ((Application) m34815a).registerActivityLifecycleCallbacks(this.f16659l);
        } else if (m34815a == null || m34815a.getApplicationContext() == null) {
        } else {
            ((Application) m34815a.getApplicationContext()).registerActivityLifecycleCallbacks(this.f16659l);
        }
    }

    /* renamed from: a */
    public static String m35024a(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject m34999i = m34999i(str);
            if (m34999i == null) {
                return null;
            }
            if (System.currentTimeMillis() - m34999i.getLong("time") > j) {
                return null;
            }
            return m34999i.getString("value");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static void m35023a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("value", str2);
            jSONObject.put("time", System.currentTimeMillis());
            if (C5094b.m33091b()) {
                C5106a.m33041a("sp_global_info", str, jSONObject.toString());
            } else {
                C5490z.m32028a((String) null, C4600n.m34815a()).m32027a(str, jSONObject.toString());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C4570g m35020b() {
        return f16647r;
    }

    /* renamed from: e */
    private static void m35007e(String str) {
        C5483u.m32081a(str, "appid不能为空");
    }

    /* renamed from: f */
    private static void m35005f(String str) {
        C5483u.m32081a(str, "name不能为空");
    }

    /* renamed from: g */
    private static void m35003g(String str) {
        if (!TextUtils.isEmpty(str)) {
            C5483u.m32080a(str.length() <= 1000, "keyword超长, 最长为1000");
        }
    }

    /* renamed from: h */
    private static void m35001h(String str) {
        if (!TextUtils.isEmpty(str)) {
            C5483u.m32080a(str.length() <= 1000, "data超长, 最长为1000");
        }
    }

    /* renamed from: i */
    private static JSONObject m34999i(String str) {
        String m33035b = C5094b.m33091b() ? C5106a.m33035b("sp_global_info", str, (String) null) : C5490z.m32028a((String) null, C4600n.m34815a()).m32021b(str, (String) null);
        if (TextUtils.isEmpty(m33035b)) {
            return null;
        }
        try {
            return new JSONObject(m33035b);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public void m35028a(int i) {
        if (i == 0 || i == 1) {
            if (C5094b.m33091b()) {
                C5106a.m33043a("sp_global_info", "sdk_coppa", Integer.valueOf(i));
            } else {
                C5490z.m32028a((String) null, C4600n.m34815a()).m32030a("sdk_coppa", i);
            }
            this.f16661n = i;
        }
    }

    /* renamed from: a */
    public void m35027a(Bitmap bitmap) {
        if (C5094b.m33091b()) {
            String m32187a = C5453e.m32187a(bitmap);
            if (!TextUtils.isEmpty(m32187a)) {
                C5106a.m33041a("sp_global_info", "pause_icon", m32187a);
            }
        }
        this.f16658k = bitmap;
    }

    /* renamed from: a */
    public void m35026a(TTSecAbs tTSecAbs) {
        this.f16663p = tTSecAbs;
    }

    /* renamed from: a */
    public void m35025a(String str) {
        m35007e(str);
        if (C5094b.m33091b()) {
            C5106a.m33041a("sp_global_info", PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
        }
        this.f16648a = str;
    }

    /* renamed from: a */
    public void m35022a(boolean z) {
        if (C5094b.m33091b()) {
            C5106a.m33045a("sp_global_info", "sdk_activate_init", Boolean.valueOf(z));
        }
        C5490z.m32028a((String) null, C4600n.m34815a()).m32025a("sdk_activate_init", z);
    }

    /* renamed from: a */
    public void m35021a(String[] strArr) {
        if (C5094b.m33091b() && strArr != null && strArr.length > 0) {
            StringBuilder sb = new StringBuilder();
            int length = strArr.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    break;
                }
                String str = strArr[i];
                int i4 = i3;
                if (!TextUtils.isEmpty(str)) {
                    if (i3 > 0) {
                        sb.append(",");
                    }
                    sb.append(str);
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                C5106a.m33041a("sp_global_info", "need_clear_task_reset", sb2);
            }
        }
        this.f16660m = strArr;
    }

    /* renamed from: a */
    public boolean m35029a() {
        return this.f16659l.m32196a();
    }

    /* renamed from: b */
    public void m35019b(int i) {
        if (C5094b.m33091b()) {
            C5106a.m33043a("sp_global_info", "tt_gdrp", Integer.valueOf(i));
        } else {
            C5490z.m32028a((String) null, C4600n.m34815a()).m32030a("tt_gdrp", i);
        }
    }

    /* renamed from: b */
    public void m35018b(String str) {
        m35005f(str);
        if (C5094b.m33091b()) {
            C5106a.m33041a("sp_global_info", "name", str);
        }
        this.f16649b = str;
    }

    /* renamed from: b */
    public void m35017b(boolean z) {
        if (C5094b.m33091b()) {
            C5106a.m33045a("sp_global_info", "is_paid", Boolean.valueOf(z));
        }
        this.f16650c = z;
    }

    /* renamed from: c */
    public void m35015c(int i) {
        int i2 = i;
        if (i != 0) {
            i2 = i;
            if (i != 1) {
                i2 = -99;
            }
        }
        if (C5094b.m33091b()) {
            C5106a.m33043a("sp_global_info", "global_coppa", Integer.valueOf(i2));
        } else {
            C5490z.m32028a((String) null, C4600n.m34815a()).m32030a("global_coppa", i2);
        }
        this.f16662o = i2;
    }

    /* renamed from: c */
    public void m35014c(String str) {
        m35003g(str);
        if (C5094b.m33091b()) {
            C5106a.m33041a("sp_global_info", VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, str);
        }
        this.f16651d = str;
    }

    /* renamed from: c */
    public void m35013c(boolean z) {
        if (C5094b.m33091b()) {
            C5106a.m33045a("sp_global_info", "allow_show_notify", Boolean.valueOf(z));
        }
        this.f16655h = z;
    }

    /* renamed from: c */
    public boolean m35016c() {
        return C5094b.m33091b() ? C5106a.m33039a("sp_global_info", "sdk_activate_init", true) : C5490z.m32028a((String) null, C4600n.m34815a()).m32019b("sdk_activate_init", true);
    }

    /* renamed from: d */
    public String m35012d() {
        return C5094b.m33091b() ? C5106a.m33035b("sp_global_info", PangleAdapterConfiguration.APP_ID_EXTRA_KEY, (String) null) : this.f16648a;
    }

    /* renamed from: d */
    public void m35011d(int i) {
        if (C5094b.m33091b()) {
            C5106a.m33043a("sp_global_info", "title_bar_theme", Integer.valueOf(i));
        }
        this.f16654g = i;
    }

    /* renamed from: d */
    public void m35010d(String str) {
        m35001h(str);
        if (C5094b.m33091b()) {
            C5106a.m33041a("sp_global_info", "extra_data", str);
        }
        this.f16652e = str;
    }

    /* renamed from: d */
    public void m35009d(boolean z) {
        if (C5094b.m33091b()) {
            C5106a.m33045a("sp_global_info", "is_use_texture", Boolean.valueOf(z));
        }
        this.f16657j = z;
    }

    /* renamed from: e */
    public String m35008e() {
        return C5094b.m33091b() ? C5106a.m33035b("sp_global_info", "name", (String) null) : this.f16649b;
    }

    /* renamed from: f */
    public int m35006f() {
        if (C5094b.m33091b()) {
            return C5106a.m33047a("sp_global_info", "sdk_coppa", 0);
        }
        int m32023b = C5490z.m32028a((String) null, C4600n.m34815a()).m32023b("sdk_coppa", 0);
        this.f16661n = m32023b;
        return m32023b;
    }

    /* renamed from: g */
    public int m35004g() {
        return C5094b.m33091b() ? C5106a.m33047a("sp_global_info", "tt_gdrp", -1) : C5490z.m32028a((String) null, C4600n.m34815a()).m32023b("tt_gdrp", -1);
    }

    /* renamed from: h */
    public int m35002h() {
        if (C5094b.m33091b()) {
            this.f16662o = C5106a.m33047a("sp_global_info", "global_coppa", -99);
        } else {
            this.f16662o = C5490z.m32028a((String) null, C4600n.m34815a()).m32023b("global_coppa", -99);
        }
        if (this.f16662o == -99) {
            this.f16662o = m35006f();
        }
        return this.f16662o;
    }

    /* renamed from: i */
    public boolean m35000i() {
        return C5094b.m33091b() ? C5106a.m33039a("sp_global_info", "is_paid", false) : this.f16650c;
    }

    /* renamed from: j */
    public String m34998j() {
        return C5094b.m33091b() ? C5106a.m33035b("sp_global_info", VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, (String) null) : this.f16651d;
    }

    /* renamed from: k */
    public String m34997k() {
        return C5094b.m33091b() ? C5106a.m33035b("sp_global_info", "extra_data", (String) null) : this.f16652e;
    }

    /* renamed from: l */
    public int m34996l() {
        return C5094b.m33091b() ? C5106a.m33047a("sp_global_info", "title_bar_theme", 0) : this.f16654g;
    }

    /* renamed from: m */
    public void m34995m() {
        m35007e(this.f16648a);
        m35005f(this.f16649b);
    }

    /* renamed from: n */
    public C4350c m34994n() {
        if (this.f16665s == null) {
            this.f16665s = new C4350c(10, 8);
        }
        return this.f16665s;
    }

    /* renamed from: o */
    public C4679c m34993o() {
        if (this.f16666t == null) {
            this.f16666t = new C4679c(10, 8);
        }
        return this.f16666t;
    }

    /* renamed from: p */
    public boolean m34992p() {
        return C5094b.m33091b() ? C5106a.m33039a("sp_global_info", "is_use_texture", false) : this.f16657j;
    }

    /* renamed from: q */
    public Bitmap m34991q() {
        return C5094b.m33091b() ? C5453e.m32186a(C5106a.m33035b("sp_global_info", "pause_icon", (String) null)) : this.f16658k;
    }

    /* renamed from: r */
    public TTSecAbs m34990r() {
        return this.f16663p;
    }

    /* renamed from: s */
    public boolean m34989s() {
        return "5001121".equals(this.f16648a);
    }

    /* renamed from: t */
    public boolean m34988t() {
        return "com.union_test.internationad".equals(C5438af.m32283d());
    }

    /* renamed from: u */
    public String m34987u() {
        if (!TextUtils.isEmpty(this.f16664q)) {
            return this.f16664q;
        }
        String m32145a = C5466j.m32145a();
        this.f16664q = m32145a;
        if (!TextUtils.isEmpty(m32145a)) {
            return this.f16664q;
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        C5466j.m32144a(valueOf);
        this.f16664q = valueOf;
        return valueOf;
    }
}
