package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.al;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/j.class */
public abstract class j extends al {

    /* renamed from: a  reason: collision with root package name */
    protected final al f21613a;

    public j(al alVar) {
        this.f21613a = alVar;
    }

    @Override // com.google.android.exoplayer2.al
    public final int a() {
        return this.f21613a.a();
    }

    @Override // com.google.android.exoplayer2.al
    public final int a(int i, int i2, boolean z) {
        return this.f21613a.a(i, i2, z);
    }

    @Override // com.google.android.exoplayer2.al
    public final int a(boolean z) {
        return this.f21613a.a(z);
    }

    @Override // com.google.android.exoplayer2.al
    public al.a a(int i, al.a aVar, boolean z) {
        return this.f21613a.a(i, aVar, z);
    }

    @Override // com.google.android.exoplayer2.al
    public al.b a(int i, al.b bVar, long j) {
        return this.f21613a.a(i, bVar, j);
    }

    @Override // com.google.android.exoplayer2.al
    public Object a(int i) {
        return this.f21613a.a(i);
    }

    @Override // com.google.android.exoplayer2.al
    public final int b() {
        return this.f21613a.b();
    }

    @Override // com.google.android.exoplayer2.al
    public final int b(int i, int i2, boolean z) {
        return this.f21613a.b(i, i2, z);
    }

    @Override // com.google.android.exoplayer2.al
    public final int b(boolean z) {
        return this.f21613a.b(z);
    }

    @Override // com.google.android.exoplayer2.al
    public int c(Object obj) {
        return this.f21613a.c(obj);
    }
}
