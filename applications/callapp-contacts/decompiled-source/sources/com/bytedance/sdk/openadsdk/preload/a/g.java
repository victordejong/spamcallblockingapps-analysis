package com.bytedance.sdk.openadsdk.preload.a;

import com.bytedance.sdk.openadsdk.preload.a.b.a;
import com.bytedance.sdk.openadsdk.preload.a.b.a.l;
import com.bytedance.sdk.openadsdk.preload.a.b.a.n;
import com.bytedance.sdk.openadsdk.preload.a.b.d;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/g.class */
public final class g {
    private String h;

    /* renamed from: a  reason: collision with root package name */
    private d f10084a = d.f10021a;

    /* renamed from: b  reason: collision with root package name */
    private u f10085b = u.DEFAULT;

    /* renamed from: c  reason: collision with root package name */
    private e f10086c = d.IDENTITY;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Type, h<?>> f10087d = new HashMap();
    private final List<w> e = new ArrayList();
    private final List<w> f = new ArrayList();
    private boolean g = false;
    private int i = 2;
    private int j = 2;
    private boolean k = false;
    private boolean l = false;
    private boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;

    private void a(String str, int i, int i2, List<w> list) {
        a aVar;
        a aVar2;
        a aVar3;
        if (str != null && !"".equals(str.trim())) {
            aVar3 = new a(Date.class, str);
            aVar2 = new a(Timestamp.class, str);
            aVar = new a(java.sql.Date.class, str);
        } else if (i != 2 && i2 != 2) {
            aVar3 = new a(Date.class, i, i2);
            aVar2 = new a(Timestamp.class, i, i2);
            aVar = new a(java.sql.Date.class, i, i2);
        } else {
            return;
        }
        list.add(n.a(Date.class, aVar3));
        list.add(n.a(Timestamp.class, aVar2));
        list.add(n.a(java.sql.Date.class, aVar));
    }

    public final f a() {
        List<w> arrayList = new ArrayList<>(this.e.size() + this.f.size() + 3);
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        a(this.h, this.i, this.j, arrayList);
        return new f(this.f10084a, this.f10086c, this.f10087d, this.g, this.k, this.o, this.m, this.n, this.p, this.l, this.f10085b, this.h, this.i, this.j, this.e, this.f, arrayList);
    }

    public final g a(Type type, Object obj) {
        boolean z = obj instanceof s;
        a.a(z || (obj instanceof k) || (obj instanceof h) || (obj instanceof v));
        if (obj instanceof h) {
            this.f10087d.put(type, (h) obj);
        }
        if (z || (obj instanceof k)) {
            this.e.add(l.a(com.bytedance.sdk.openadsdk.preload.a.c.a.a(type), obj));
        }
        if (obj instanceof v) {
            this.e.add(n.a(com.bytedance.sdk.openadsdk.preload.a.c.a.a(type), (v) obj));
        }
        return this;
    }
}
