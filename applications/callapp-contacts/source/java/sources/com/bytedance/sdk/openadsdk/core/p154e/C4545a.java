package com.bytedance.sdk.openadsdk.core.p154e;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.core.e.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/a.class */
public class C4545a {

    /* renamed from: a */
    private String f16455a;

    /* renamed from: b */
    private int f16456b;

    /* renamed from: c */
    private String f16457c;

    /* renamed from: d */
    private List<C4557i> f16458d = new ArrayList();

    /* renamed from: e */
    private String f16459e;

    /* renamed from: f */
    private long f16460f;

    /* renamed from: a */
    public static Map<String, C4557i> m35346a(C4545a c4545a) {
        if (c4545a == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (C4557i c4557i : c4545a.m35343b()) {
            if (!TextUtils.isEmpty(c4557i.m35225V())) {
                hashMap.put(c4557i.m35225V(), c4557i);
            }
        }
        if (hashMap.size() == 0) {
            return null;
        }
        return hashMap;
    }

    /* renamed from: a */
    public int m35351a() {
        return this.f16456b;
    }

    /* renamed from: a */
    public void m35350a(int i) {
        this.f16456b = i;
    }

    /* renamed from: a */
    public void m35349a(long j) {
        this.f16460f = j;
    }

    /* renamed from: a */
    public void m35345a(C4557i c4557i) {
        this.f16458d.add(c4557i);
    }

    /* renamed from: a */
    public void m35344a(String str) {
        this.f16455a = str;
    }

    /* renamed from: b */
    public List<C4557i> m35343b() {
        return this.f16458d;
    }

    /* renamed from: b */
    public void m35341b(String str) {
        this.f16457c = str;
    }

    /* renamed from: c */
    public String m35340c() {
        return this.f16459e;
    }

    /* renamed from: c */
    public void m35339c(String str) {
        this.f16459e = str;
    }
}
