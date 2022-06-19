package com.huawei.hms.framework.network.grs.local.model;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.huawei.hms.framework.network.grs.local.model.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/local/model/a.class */
public class C2340a {

    /* renamed from: a */
    private String f7494a;

    /* renamed from: b */
    private final Map<String, C2342c> f7495b = new HashMap(16);

    /* renamed from: a */
    public C2342c m37842a(String str) {
        return this.f7495b.get(str);
    }

    /* renamed from: a */
    public void m37844a() {
        Map<String, C2342c> map = this.f7495b;
        if (map != null) {
            map.clear();
        }
    }

    /* renamed from: a */
    public void m37843a(long j) {
    }

    /* renamed from: a */
    public void m37841a(String str, C2342c c2342c) {
        this.f7495b.put(str, c2342c);
    }

    /* renamed from: b */
    public String m37840b() {
        return this.f7494a;
    }

    /* renamed from: b */
    public void m37839b(String str) {
        this.f7494a = str;
    }
}
