package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/h.class */
public abstract class h {

    /* renamed from: b  reason: collision with root package name */
    x f21128b;

    /* renamed from: c  reason: collision with root package name */
    j f21129c;

    /* renamed from: d  reason: collision with root package name */
    f f21130d;
    long e;
    int f;
    int g;
    boolean i;
    private long j;
    private long k;
    private long l;
    private boolean m;

    /* renamed from: a  reason: collision with root package name */
    final d f21127a = new d();
    a h = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Format f21131a;

        /* renamed from: b  reason: collision with root package name */
        f f21132b;

        a() {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/h$b.class */
    static final class b implements f {
        private b() {
        }

        @Override // com.google.android.exoplayer2.extractor.g.f
        public final long a(i iVar) {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.g.f
        public final v a() {
            return new v.b(-9223372036854775807L);
        }

        @Override // com.google.android.exoplayer2.extractor.g.f
        public final void a(long j) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresNonNull({"trackOutput", "oggSeeker", "extractorOutput"})
    public final int a(i iVar, u uVar) throws IOException {
        long a2 = this.f21130d.a(iVar);
        if (a2 >= 0) {
            uVar.f21328a = a2;
            return 1;
        }
        if (a2 < -1) {
            c(-(a2 + 2));
        }
        if (!this.m) {
            this.f21129c.a((v) com.google.android.exoplayer2.util.a.a(this.f21130d.a()));
            this.m = true;
        }
        if (this.l > 0 || this.f21127a.a(iVar)) {
            this.l = 0L;
            com.google.android.exoplayer2.util.u uVar2 = this.f21127a.f21120b;
            long b2 = b(uVar2);
            if (b2 >= 0) {
                long j = this.k;
                if (j + b2 >= this.j) {
                    long a3 = a(j);
                    this.f21128b.b(uVar2, uVar2.f22337c);
                    this.f21128b.a(a3, 1, uVar2.f22337c, 0, null);
                    this.j = -1L;
                }
            }
            this.k += b2;
            return 0;
        }
        this.f = 3;
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long a(long j) {
        return (j * 1000000) / this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, long j2) {
        d dVar = this.f21127a;
        dVar.f21119a.a();
        dVar.f21120b.a(0);
        dVar.f21121c = -1;
        dVar.f21122d = false;
        if (j == 0) {
            a(!this.m);
        } else if (this.f != 0) {
            this.j = b(j2);
            ((f) af.a(this.f21130d)).a(this.j);
            this.f = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(j jVar, x xVar) {
        this.f21129c = jVar;
        this.f21128b = xVar;
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        if (z) {
            this.h = new a();
            this.e = 0L;
            this.f = 0;
        } else {
            this.f = 1;
        }
        this.j = -1L;
        this.k = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @EnsuresNonNullIf(expression = {"setupData.format"}, result = true)
    public final boolean a(i iVar) throws IOException {
        while (this.f21127a.a(iVar)) {
            this.l = iVar.c() - this.e;
            if (!a(this.f21127a.f21120b, this.e, this.h)) {
                return true;
            }
            this.e = iVar.c();
        }
        this.f = 3;
        return false;
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected abstract boolean a(com.google.android.exoplayer2.util.u uVar, long j, a aVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public final long b(long j) {
        return (this.g * j) / 1000000;
    }

    protected abstract long b(com.google.android.exoplayer2.util.u uVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(long j) {
        this.k = j;
    }
}
