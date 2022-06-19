package com.p064b.p065a.p066a.p067a;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.regex.Pattern;
/* renamed from: com.b.a.a.a.b */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/b.class */
class C1331b extends C1330a {

    /* renamed from: a */
    private HashMap<String, C1338e> f4396a = new HashMap<>();

    /* renamed from: b */
    private String f4397b;

    /* renamed from: c */
    private String f4398c;

    public C1331b(Context context, String str) {
        super(context);
        this.f4397b = str;
        m17473f();
    }

    /* renamed from: d */
    private String m17475d() {
        return m17482b() + this.f4397b;
    }

    /* renamed from: e */
    private String m17474e() {
        return m17475d() + ".version";
    }

    /* renamed from: f */
    private void m17473f() {
        String[] split;
        for (String str : m17481b(m17475d(), "").split(Pattern.quote("#####"))) {
            if (!TextUtils.isEmpty(str)) {
                String[] split2 = str.split(Pattern.quote(">>>>>"));
                if (split2.length > 2) {
                    this.f4396a.put(split2[0], new C1338e(split2[1], split2[2]));
                } else if (split2.length > 1) {
                    this.f4396a.put(split2[0], new C1338e(split2[1], null));
                }
            }
        }
        this.f4398c = m17471h();
    }

    /* renamed from: g */
    private void m17472g() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f4396a.keySet()) {
            C1338e c1338e = this.f4396a.get(str);
            arrayList.add(str + ">>>>>" + c1338e.f4420a + ">>>>>" + c1338e.f4421b);
        }
        m17484a(m17475d(), TextUtils.join("#####", arrayList));
        this.f4398c = Long.toString(new Date().getTime());
        m17484a(m17474e(), this.f4398c);
    }

    /* renamed from: h */
    private String m17471h() {
        return m17481b(m17474e(), "0");
    }

    /* renamed from: i */
    private void m17470i() {
        if (!this.f4398c.equalsIgnoreCase(m17471h())) {
            this.f4396a.clear();
            m17473f();
        }
    }

    /* renamed from: a */
    public void m17478a(String str, String str2, String str3) {
        m17470i();
        if (!this.f4396a.containsKey(str)) {
            this.f4396a.put(str, new C1338e(str2, str3));
            m17472g();
        }
    }

    /* renamed from: a */
    public boolean m17479a(String str) {
        m17470i();
        return this.f4396a.containsKey(str);
    }

    /* renamed from: b */
    public C1338e m17477b(String str) {
        m17470i();
        return this.f4396a.containsKey(str) ? this.f4396a.get(str) : null;
    }

    /* renamed from: c */
    public void m17476c() {
        m17470i();
        this.f4396a.clear();
        m17472g();
    }

    public String toString() {
        return TextUtils.join(", ", this.f4396a.keySet());
    }
}
