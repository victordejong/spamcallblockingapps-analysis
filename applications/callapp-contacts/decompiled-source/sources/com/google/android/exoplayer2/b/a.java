package com.google.android.exoplayer2.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f20800a = new a(0, 0, 0);

    /* renamed from: b  reason: collision with root package name */
    public final int f20801b;

    /* renamed from: c  reason: collision with root package name */
    public final int f20802c;

    /* renamed from: d  reason: collision with root package name */
    public final int f20803d;

    public a(int i, int i2, int i3) {
        this.f20801b = i;
        this.f20802c = i2;
        this.f20803d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f20801b == aVar.f20801b && this.f20802c == aVar.f20802c && this.f20803d == aVar.f20803d;
    }

    public final int hashCode() {
        return ((((this.f20801b + 527) * 31) + this.f20802c) * 31) + this.f20803d;
    }
}
