package com.bytedance.sdk.openadsdk.core.e;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f8857a;

    /* renamed from: b  reason: collision with root package name */
    private int f8858b;

    /* renamed from: c  reason: collision with root package name */
    private String f8859c;

    /* renamed from: d  reason: collision with root package name */
    private List<i> f8860d = new ArrayList();
    private String e;
    private long f;

    public static Map<String, i> a(a aVar) {
        if (aVar == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (i iVar : aVar.b()) {
            if (!TextUtils.isEmpty(iVar.V())) {
                hashMap.put(iVar.V(), iVar);
            }
        }
        if (hashMap.size() != 0) {
            return hashMap;
        }
        return null;
    }

    public int a() {
        return this.f8858b;
    }

    public void a(int i) {
        this.f8858b = i;
    }

    public void a(long j) {
        this.f = j;
    }

    public void a(i iVar) {
        this.f8860d.add(iVar);
    }

    public void a(String str) {
        this.f8857a = str;
    }

    public List<i> b() {
        return this.f8860d;
    }

    public void b(String str) {
        this.f8859c = str;
    }

    public String c() {
        return this.e;
    }

    public void c(String str) {
        this.e = str;
    }
}
