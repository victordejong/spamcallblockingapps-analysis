package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.al;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/o.class */
public abstract class o extends al {

    /* renamed from: b  reason: collision with root package name */
    protected final al f3732b;

    public o(al alVar) {
        this.f3732b = alVar;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int a(int i, int i2, boolean z) {
        return this.f3732b.a(i, i2, z);
    }

    @Override // androidx.media2.exoplayer.external.al
    public int a(Object obj) {
        return this.f3732b.a(obj);
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int a(boolean z) {
        return this.f3732b.a(z);
    }

    @Override // androidx.media2.exoplayer.external.al
    public al.a a(int i, al.a aVar, boolean z) {
        return this.f3732b.a(i, aVar, z);
    }

    @Override // androidx.media2.exoplayer.external.al
    public al.b a(int i, al.b bVar, long j) {
        return this.f3732b.a(i, bVar, j);
    }

    @Override // androidx.media2.exoplayer.external.al
    public Object a(int i) {
        return this.f3732b.a(i);
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int b() {
        return this.f3732b.b();
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int b(boolean z) {
        return this.f3732b.b(z);
    }

    @Override // androidx.media2.exoplayer.external.al
    public final al.b b(int i, al.b bVar, long j) {
        return a(i, bVar, j);
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int c() {
        return this.f3732b.c();
    }
}
