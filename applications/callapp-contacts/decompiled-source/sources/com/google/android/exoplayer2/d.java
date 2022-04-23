package com.google.android.exoplayer2;

import com.google.android.exoplayer2.al;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/d.class */
public abstract class d implements ac {

    /* renamed from: a  reason: collision with root package name */
    protected final al.b f20820a = new al.b();

    private int j() {
        int s = s();
        int i = s;
        if (s == 1) {
            i = 0;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean A_() {
        return n() == 3 && r() && o() == 0;
    }

    @Override // com.google.android.exoplayer2.ac
    public final void b() {
        a(y(), 0L);
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean c() {
        return g() != -1;
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean d() {
        return f() != -1;
    }

    @Override // com.google.android.exoplayer2.ac
    public final void e() {
        c(false);
    }

    @Override // com.google.android.exoplayer2.ac
    public final int f() {
        al K = K();
        if (K.c()) {
            return -1;
        }
        return K.a(y(), j(), t());
    }

    @Override // com.google.android.exoplayer2.ac
    public final int g() {
        al K = K();
        if (K.c()) {
            return -1;
        }
        return K.b(y(), j(), t());
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean h() {
        al K = K();
        return !K.c() && K.a(y(), this.f20820a, 0L).i;
    }

    public final long i() {
        al K = K();
        if (K.c()) {
            return -9223372036854775807L;
        }
        return f.a(K.a(y(), this.f20820a, 0L).q);
    }
}
