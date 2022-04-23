package com.google.android.exoplayer2.source;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/q.class */
public class q {

    /* renamed from: a  reason: collision with root package name */
    public final Object f21637a;

    /* renamed from: b  reason: collision with root package name */
    public final int f21638b;

    /* renamed from: c  reason: collision with root package name */
    public final int f21639c;

    /* renamed from: d  reason: collision with root package name */
    public final long f21640d;
    public final int e;

    /* JADX INFO: Access modifiers changed from: protected */
    public q(q qVar) {
        this.f21637a = qVar.f21637a;
        this.f21638b = qVar.f21638b;
        this.f21639c = qVar.f21639c;
        this.f21640d = qVar.f21640d;
        this.e = qVar.e;
    }

    public q(Object obj) {
        this(obj, -1L);
    }

    public q(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    private q(Object obj, int i, int i2, long j, int i3) {
        this.f21637a = obj;
        this.f21638b = i;
        this.f21639c = i2;
        this.f21640d = j;
        this.e = i3;
    }

    public q(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public q(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    public q a(Object obj) {
        return this.f21637a.equals(obj) ? this : new q(obj, this.f21638b, this.f21639c, this.f21640d, this.e);
    }

    public final boolean a() {
        return this.f21638b != -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f21637a.equals(qVar.f21637a) && this.f21638b == qVar.f21638b && this.f21639c == qVar.f21639c && this.f21640d == qVar.f21640d && this.e == qVar.e;
    }

    public int hashCode() {
        return ((((((((this.f21637a.hashCode() + 527) * 31) + this.f21638b) * 31) + this.f21639c) * 31) + ((int) this.f21640d)) * 31) + this.e;
    }
}
