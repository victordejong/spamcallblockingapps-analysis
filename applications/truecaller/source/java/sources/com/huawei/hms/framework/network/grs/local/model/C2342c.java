package com.huawei.hms.framework.network.grs.local.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.huawei.hms.framework.network.grs.local.model.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/local/model/c.class */
public class C2342c {

    /* renamed from: a */
    private String f7498a;

    /* renamed from: b */
    private final Map<String, C2343d> f7499b = new HashMap(16);

    /* renamed from: c */
    private List<C2341b> f7500c = new ArrayList(16);

    /* renamed from: a */
    public C2343d m37831a(String str) {
        return this.f7499b.get(str);
    }

    /* renamed from: a */
    public List<C2341b> m37832a() {
        return this.f7500c;
    }

    /* renamed from: a */
    public void m37830a(String str, C2343d c2343d) {
        this.f7499b.put(str, c2343d);
    }

    /* renamed from: a */
    public void m37829a(List<C2341b> list) {
        this.f7500c = list;
    }

    /* renamed from: b */
    public String m37828b() {
        return this.f7498a;
    }

    /* renamed from: b */
    public void m37827b(String str) {
    }

    /* renamed from: c */
    public void m37826c(String str) {
        this.f7498a = str;
    }
}
