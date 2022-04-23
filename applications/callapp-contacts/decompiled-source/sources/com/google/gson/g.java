package com.google.gson;

import com.google.gson.internal.a;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.j;
import com.google.gson.internal.d;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/gson/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private d f32678a;

    /* renamed from: b  reason: collision with root package name */
    private i f32679b;

    /* renamed from: c  reason: collision with root package name */
    private e f32680c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Type, h<?>> f32681d;
    private final List<k> e;
    private final List<k> f;
    private boolean g;
    private String h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;

    public g() {
        this.f32678a = d.f32784a;
        this.f32679b = i.DEFAULT;
        this.f32680c = d.IDENTITY;
        this.f32681d = new HashMap();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = false;
        this.i = 2;
        this.j = 2;
        this.k = false;
        this.l = false;
        this.m = true;
        this.n = false;
        this.o = false;
        this.p = false;
    }

    g(f fVar) {
        this.f32678a = d.f32784a;
        this.f32679b = i.DEFAULT;
        this.f32680c = d.IDENTITY;
        HashMap hashMap = new HashMap();
        this.f32681d = hashMap;
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f = arrayList2;
        this.g = false;
        this.i = 2;
        this.j = 2;
        this.k = false;
        this.l = false;
        this.m = true;
        this.n = false;
        this.o = false;
        this.p = false;
        this.f32678a = fVar.g;
        this.f32680c = fVar.h;
        hashMap.putAll(fVar.i);
        this.g = fVar.j;
        this.k = fVar.k;
        this.o = fVar.l;
        this.m = fVar.m;
        this.n = fVar.n;
        this.p = fVar.o;
        this.l = fVar.p;
        this.f32679b = fVar.t;
        this.h = fVar.q;
        this.i = fVar.r;
        this.j = fVar.s;
        arrayList.addAll(fVar.u);
        arrayList2.addAll(fVar.v);
    }

    private static void a(String str, int i, int i2, List<k> list) {
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
        list.add(j.a(Date.class, aVar3));
        list.add(j.a(Timestamp.class, aVar2));
        list.add(j.a(java.sql.Date.class, aVar));
    }

    public final f a() {
        ArrayList arrayList = new ArrayList(this.e.size() + this.f.size() + 3);
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        a(this.h, this.i, this.j, arrayList);
        return new f(this.f32678a, this.f32680c, this.f32681d, this.g, this.k, this.o, this.m, this.n, this.p, this.l, this.f32679b, this.h, this.i, this.j, this.e, this.f, arrayList);
    }

    public final g a(k kVar) {
        this.e.add(kVar);
        return this;
    }

    public final g a(Type type, Object obj) {
        boolean z = true;
        a.a(true);
        if (obj instanceof h) {
            this.f32681d.put(type, (h) obj);
        }
        com.google.gson.a.a<?> aVar = com.google.gson.a.a.get(type);
        List<k> list = this.e;
        if (aVar.getType() != aVar.getRawType()) {
            z = false;
        }
        list.add(new TreeTypeAdapter.a(obj, aVar, z, null));
        if (obj instanceof j) {
            this.e.add(j.a(com.google.gson.a.a.get(type), (j) obj));
        }
        return this;
    }
}
