package com.a.a.a.d.a;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/a/c.class */
final class c implements r<o> {

    /* renamed from: a  reason: collision with root package name */
    private b f370a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f370a = bVar;
    }

    private o a(o oVar) {
        if (this.f370a.c != null) {
            throw p.a();
        }
        this.f370a.c = oVar;
        return this.f370a;
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(b bVar) {
        if (this.f370a.c == null) {
            this.f370a.c = bVar;
            bVar = this.f370a;
        } else if (bVar.f369b != null) {
            throw p.a();
        } else {
            bVar.f369b = this.f370a;
        }
        return bVar;
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(d dVar) {
        return a((o) dVar);
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(g gVar) {
        return a((o) gVar);
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(j jVar) {
        return a((o) jVar);
    }

    @Override // com.a.a.a.d.a.r
    public final /* bridge */ /* synthetic */ o a(w wVar) {
        return a((o) wVar);
    }
}
