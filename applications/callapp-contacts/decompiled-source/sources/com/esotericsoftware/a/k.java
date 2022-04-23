package com.esotericsoftware.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/k.class */
public final class k extends j {

    /* renamed from: c  reason: collision with root package name */
    final g f18906c;

    /* renamed from: d  reason: collision with root package name */
    final int f18907d;
    final int e;
    final int f;
    int g;
    int h;
    b i;
    b j;
    b k;
    b l;
    c m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(g gVar, int i, String str, String str2, String str3, Object obj) {
        super(327680);
        if (gVar.r == null) {
            gVar.r = this;
        } else {
            gVar.s.f18905b = this;
        }
        gVar.s = this;
        this.f18906c = gVar;
        this.f18907d = i;
        this.e = gVar.a(str);
        this.f = gVar.a(str2);
        if (str3 != null) {
            this.g = gVar.a(str3);
        }
        if (obj != null) {
            this.h = gVar.a(obj).f18920a;
        }
    }

    @Override // com.esotericsoftware.a.j
    public final a a(int i, u uVar, String str, boolean z) {
        d dVar = new d();
        b.a(i, uVar, dVar);
        dVar.b(this.f18906c.a(str)).b(0);
        b bVar = new b(this.f18906c, true, dVar, dVar, dVar.f18888b - 2);
        if (z) {
            bVar.f18882c = this.k;
            this.k = bVar;
        } else {
            bVar.f18882c = this.l;
            this.l = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.j
    public final a a(String str, boolean z) {
        d dVar = new d();
        dVar.b(this.f18906c.a(str)).b(0);
        b bVar = new b(this.f18906c, true, dVar, dVar, 2);
        if (z) {
            bVar.f18882c = this.i;
            this.i = bVar;
        } else {
            bVar.f18882c = this.j;
            this.j = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.j
    public final void a(c cVar) {
        cVar.f18886c = this.m;
        this.m = cVar;
    }
}
