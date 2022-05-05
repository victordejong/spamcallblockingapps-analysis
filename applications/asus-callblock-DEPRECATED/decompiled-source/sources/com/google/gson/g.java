package com.google.gson;

import com.google.gson.a.a;
import com.google.gson.a.a.l;
import com.google.gson.a.d;
import com.google.gson.w;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/g.class */
public final class g {
    public boolean g;
    public String h;
    public boolean k;
    public boolean l;
    public boolean n;
    public boolean o;

    /* renamed from: a  reason: collision with root package name */
    public d f4550a = d.f4509a;

    /* renamed from: b  reason: collision with root package name */
    public v f4551b = v.DEFAULT;
    public e c = d.IDENTITY;
    public final Map<Type, h<?>> d = new HashMap();
    public final List<y> e = new ArrayList();
    public final List<y> f = new ArrayList();
    public int i = 2;
    public int j = 2;
    public boolean m = true;

    public final g a(Type type, Object obj) {
        a.a(true);
        if (obj instanceof h) {
            this.d.put(type, (h) obj);
        }
        com.google.gson.b.a<?> a2 = com.google.gson.b.a.a(type);
        this.e.add(new w.a(obj, a2, a2.f4532b == a2.f4531a, (byte) 0));
        if (obj instanceof x) {
            this.e.add(l.a(com.google.gson.b.a.a(type), (x) obj));
        }
        return this;
    }
}
