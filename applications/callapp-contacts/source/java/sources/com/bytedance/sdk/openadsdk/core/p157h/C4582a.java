package com.bytedance.sdk.openadsdk.core.p157h;

import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* renamed from: com.bytedance.sdk.openadsdk.core.h.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/a.class */
public class C4582a {

    /* renamed from: a */
    public String f16695a;

    /* renamed from: y */
    public List<String> f16719y;

    /* renamed from: b */
    public int f16696b = 1;

    /* renamed from: c */
    public int f16697c = 1;

    /* renamed from: d */
    public int f16698d = 2;

    /* renamed from: e */
    public int f16699e = 1;

    /* renamed from: f */
    public int f16700f = 100;

    /* renamed from: g */
    public int f16701g = 0;

    /* renamed from: h */
    public int f16702h = 2;

    /* renamed from: i */
    public int f16703i = 1;

    /* renamed from: j */
    public int f16704j = 3;

    /* renamed from: k */
    public int f16705k = -1;

    /* renamed from: l */
    public int f16706l = -1;

    /* renamed from: m */
    public int f16707m = -1;

    /* renamed from: n */
    public int f16708n = 2;

    /* renamed from: o */
    public int f16709o = 1;

    /* renamed from: p */
    public int f16710p = 0;

    /* renamed from: q */
    public int f16711q = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;

    /* renamed from: r */
    public int f16712r = 2;

    /* renamed from: s */
    public int f16713s = -1;

    /* renamed from: t */
    public int f16714t = 20;

    /* renamed from: u */
    public int f16715u = -1;

    /* renamed from: v */
    public int f16716v = 0;

    /* renamed from: w */
    public int f16717w = 5;

    /* renamed from: x */
    public int f16718x = 0;

    /* renamed from: z */
    public int f16720z = 2;

    private C4582a() {
    }

    /* renamed from: a */
    public static C4582a m34963a() {
        return new C4582a();
    }

    /* renamed from: a */
    public C4582a m34962a(int i) {
        this.f16715u = i;
        return this;
    }

    /* renamed from: a */
    public C4582a m34961a(String str) {
        this.f16695a = str;
        return this;
    }

    /* renamed from: a */
    public C4582a m34960a(JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() != 0) {
            this.f16719y = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    this.f16719y.add(jSONArray.get(i).toString());
                } catch (Exception e) {
                }
            }
        }
        return this;
    }

    /* renamed from: b */
    public C4582a m34959b(int i) {
        this.f16716v = i;
        return this;
    }

    /* renamed from: c */
    public C4582a m34958c(int i) {
        this.f16718x = i;
        return this;
    }

    /* renamed from: d */
    public C4582a m34957d(int i) {
        this.f16714t = i;
        return this;
    }

    /* renamed from: e */
    public C4582a m34956e(int i) {
        this.f16713s = i;
        return this;
    }

    /* renamed from: f */
    public C4582a m34955f(int i) {
        this.f16710p = i;
        return this;
    }

    /* renamed from: g */
    public C4582a m34954g(int i) {
        this.f16711q = i;
        return this;
    }

    /* renamed from: h */
    public C4582a m34953h(int i) {
        this.f16712r = i;
        return this;
    }

    /* renamed from: i */
    public C4582a m34952i(int i) {
        this.f16708n = i;
        return this;
    }

    /* renamed from: j */
    public C4582a m34951j(int i) {
        this.f16706l = i;
        return this;
    }

    /* renamed from: k */
    public C4582a m34950k(int i) {
        this.f16707m = i;
        return this;
    }

    /* renamed from: l */
    public C4582a m34949l(int i) {
        this.f16705k = i;
        return this;
    }

    /* renamed from: m */
    public C4582a m34948m(int i) {
        this.f16704j = i;
        return this;
    }

    /* renamed from: n */
    public C4582a m34947n(int i) {
        this.f16696b = i;
        return this;
    }

    /* renamed from: o */
    public C4582a m34946o(int i) {
        this.f16697c = i;
        return this;
    }

    /* renamed from: p */
    public C4582a m34945p(int i) {
        this.f16698d = i;
        return this;
    }

    /* renamed from: q */
    public C4582a m34944q(int i) {
        this.f16699e = i;
        return this;
    }

    /* renamed from: r */
    public C4582a m34943r(int i) {
        this.f16700f = i;
        return this;
    }

    /* renamed from: s */
    public C4582a m34942s(int i) {
        this.f16701g = i;
        return this;
    }

    /* renamed from: t */
    public C4582a m34941t(int i) {
        this.f16702h = i;
        return this;
    }

    /* renamed from: u */
    public C4582a m34940u(int i) {
        this.f16703i = i;
        return this;
    }

    /* renamed from: v */
    public C4582a m34939v(int i) {
        this.f16709o = i;
        return this;
    }

    /* renamed from: w */
    public C4582a m34938w(int i) {
        this.f16720z = i;
        return this;
    }

    /* renamed from: x */
    public C4582a m34937x(int i) {
        this.f16717w = i;
        return this;
    }
}
