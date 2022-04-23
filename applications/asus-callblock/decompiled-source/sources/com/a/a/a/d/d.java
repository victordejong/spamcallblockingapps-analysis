package com.a.a.a.d;

import com.a.a.a.b;
import com.a.a.a.e;
import com.asus.updatesdk.BuildConfig;
import com.google.a.d.a.j;
import com.google.gson.a;
import com.google.gson.f;
import com.google.gson.g;
import com.google.gson.l;
import com.google.gson.o;
import com.google.gson.w;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/d.class */
public final class d<E> extends e {

    /* renamed from: a  reason: collision with root package name */
    public b f401a;
    private Class<E> i;

    public d(String str, b bVar, Class<E> cls) {
        super(str, bVar);
        this.h.add(com.a.a.a.d.TypedTable);
        this.f401a = new b(str, bVar);
        this.f401a.h = EnumSet.of(com.a.a.a.d.TypedTable);
        this.i = cls;
        this.g = a(cls);
        this.f401a.a(this.g);
    }

    private List<E> a(l lVar) {
        a aVar;
        g gVar = this.e.e;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(gVar.e);
        Collections.reverse(arrayList);
        arrayList.addAll(gVar.f);
        String str = gVar.h;
        int i = gVar.i;
        int i2 = gVar.j;
        if (str == null || BuildConfig.FLAVOR.equals(str.trim())) {
            if (!(i == 2 || i2 == 2)) {
                aVar = new a(i, i2);
            }
            return com.a.a.a.d.b.b.a(lVar, new f(gVar.f4550a, gVar.c, gVar.d, gVar.g, gVar.k, gVar.o, gVar.m, gVar.n, gVar.l, gVar.f4551b, arrayList), this.i);
        }
        aVar = new a(str);
        arrayList.add(w.a(com.google.gson.b.a.a(Date.class), aVar));
        arrayList.add(w.a(com.google.gson.b.a.a(Timestamp.class), aVar));
        arrayList.add(w.a(com.google.gson.b.a.a(java.sql.Date.class), aVar));
        return com.a.a.a.d.b.b.a(lVar, new f(gVar.f4550a, gVar.c, gVar.d, gVar.g, gVar.k, gVar.o, gVar.m, gVar.n, gVar.l, gVar.f4551b, arrayList), this.i);
    }

    static /* synthetic */ void a(d dVar, l lVar, j jVar) {
        try {
            if (lVar instanceof o) {
                o g = lVar.g();
                int e = g.a("count") ? g.b("count").e() : 0;
                String b2 = g.a("nextLink") ? g.b("nextLink").b() : null;
                List<E> a2 = dVar.a(g.b("results"));
                jVar.a((j) (b2 != null ? new e(a2, e, b2) : new e(a2, e)));
                return;
            }
            List<E> a3 = dVar.a(lVar);
            jVar.a((j) new e(a3, a3.size()));
        } catch (Exception e2) {
            jVar.a((Throwable) e2);
        }
    }

    @Override // com.a.a.a.d.e, com.a.a.a.d.f
    public final EnumSet<c> a() {
        return this.f401a.a();
    }

    @Override // com.a.a.a.d.e, com.a.a.a.d.f
    public final /* bridge */ /* synthetic */ List a(EnumSet enumSet, List list) {
        return super.a(enumSet, list);
    }

    @Override // com.a.a.a.d.e
    public final void a(EnumSet<c> enumSet) {
        this.g = enumSet;
        this.f401a.a(enumSet);
    }

    public final com.a.a.a.d.a.f<E> b() {
        com.a.a.a.d.a.f<E> fVar = new com.a.a.a.d.a.f<>();
        fVar.f373a = this;
        return fVar;
    }
}
