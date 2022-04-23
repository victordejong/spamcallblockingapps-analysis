package com.uservoice.uservoicesdk;

import com.uservoice.uservoicesdk.model.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public String f4563a;

    /* renamed from: b  reason: collision with root package name */
    public String f4564b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String k;
    public String l;
    public String m;
    public String n;
    String o;
    public boolean p;
    public boolean q;
    public String[] r;
    public String[] s;
    public Map<String, String> g = new HashMap();
    public int h = -1;
    int i = -1;
    private boolean t = true;
    private boolean u = true;
    private boolean v = true;
    private boolean w = true;
    Map<String, Object> j = new HashMap();
    private List<c> x = new ArrayList();
    private Map<String, String> y = new HashMap();

    public a(String str, String str2, String str3) {
        this.f4563a = str;
        this.f4564b = str2;
        this.c = str3;
    }

    public final Map<String, String> a() {
        for (String str : this.y.keySet()) {
            this.y.get(str.toString());
        }
        return this.y;
    }

    public final int b() {
        return (this.i != -1 || e.a().g == null) ? this.i : e.a().g.f4745b;
    }

    public final boolean c() {
        return (e.a().g == null || e.a().g.f4744a) ? this.v : false;
    }

    public final boolean d() {
        return (e.a().g == null || e.a().g.f4744a) ? this.w : false;
    }
}
