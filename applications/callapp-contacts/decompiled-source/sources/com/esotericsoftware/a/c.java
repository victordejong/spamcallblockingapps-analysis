package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f18884a;

    /* renamed from: b  reason: collision with root package name */
    byte[] f18885b;

    /* renamed from: c  reason: collision with root package name */
    c f18886c;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str) {
        this.f18884a = str;
    }

    private d b() {
        d dVar = new d();
        dVar.f18887a = this.f18885b;
        dVar.f18888b = this.f18885b.length;
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        int i = 0;
        for (c cVar = this; cVar != null; cVar = cVar.f18886c) {
            i++;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(g gVar) {
        int i = 0;
        for (c cVar = this; cVar != null; cVar = cVar.f18886c) {
            gVar.a(cVar.f18884a);
            i += cVar.b().f18888b + 6;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c a(e eVar, int i, int i2) {
        c cVar = new c(this.f18884a);
        cVar.f18885b = new byte[i2];
        System.arraycopy(eVar.f18889a, i, cVar.f18885b, 0, i2);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(g gVar, d dVar) {
        for (c cVar = this; cVar != null; cVar = cVar.f18886c) {
            d b2 = cVar.b();
            dVar.b(gVar.a(cVar.f18884a)).c(b2.f18888b);
            dVar.a(b2.f18887a, 0, b2.f18888b);
        }
    }
}
