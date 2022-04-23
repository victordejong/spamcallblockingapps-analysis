package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.u;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/e.class */
final class e {

    /* renamed from: a  reason: collision with root package name */
    public int f21123a;

    /* renamed from: b  reason: collision with root package name */
    public int f21124b;

    /* renamed from: c  reason: collision with root package name */
    public long f21125c;

    /* renamed from: d  reason: collision with root package name */
    public long f21126d;
    public long e;
    public long f;
    public int g;
    public int h;
    public int i;
    public final int[] j = new int[255];
    private final u k = new u(255);

    private static boolean a(i iVar, byte[] bArr, int i, boolean z) throws IOException {
        try {
            return iVar.b(bArr, 0, i, z);
        } catch (EOFException e) {
            if (z) {
                return false;
            }
            throw e;
        }
    }

    public final void a() {
        this.f21123a = 0;
        this.f21124b = 0;
        this.f21125c = 0L;
        this.f21126d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0;
        this.h = 0;
        this.i = 0;
    }

    public final boolean a(i iVar) throws IOException {
        return a(iVar, -1L);
    }

    public final boolean a(i iVar, long j) throws IOException {
        int i;
        a.a(iVar.c() == iVar.b());
        this.k.a(4);
        while (true) {
            i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if ((i == 0 || iVar.c() + 4 < j) && a(iVar, this.k.f22335a, 4, true)) {
                this.k.d(0);
                if (this.k.h() == 1332176723) {
                    iVar.a();
                    return true;
                }
                iVar.b(1);
            }
        }
        do {
            if (i != 0 && iVar.c() >= j) {
                return false;
            }
        } while (iVar.a(1) != -1);
        return false;
    }

    public final boolean a(i iVar, boolean z) throws IOException {
        a();
        this.k.a(27);
        if (!a(iVar, this.k.f22335a, 27, z) || this.k.h() != 1332176723) {
            return false;
        }
        int c2 = this.k.c();
        this.f21123a = c2;
        if (c2 == 0) {
            this.f21124b = this.k.c();
            this.f21125c = this.k.m();
            this.f21126d = this.k.i();
            this.e = this.k.i();
            this.f = this.k.i();
            int c3 = this.k.c();
            this.g = c3;
            this.h = c3 + 27;
            this.k.a(c3);
            iVar.d(this.k.f22335a, 0, this.g);
            for (int i = 0; i < this.g; i++) {
                this.j[i] = this.k.c();
                this.i += this.j[i];
            }
            return true;
        } else if (z) {
            return false;
        } else {
            throw new ParserException("unsupported bit stream revision");
        }
    }
}
