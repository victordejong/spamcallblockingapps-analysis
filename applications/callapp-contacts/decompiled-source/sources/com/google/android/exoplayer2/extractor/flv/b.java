package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/b.class */
public final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21095a = _$$Lambda$b$t_eKifyPmusL2cG2qwU75FgsJGw.INSTANCE;
    private j g;
    private boolean i;
    private long j;
    private int k;
    private int l;
    private int m;
    private long n;
    private boolean o;
    private a p;
    private d q;

    /* renamed from: b  reason: collision with root package name */
    private final u f21096b = new u(4);

    /* renamed from: c  reason: collision with root package name */
    private final u f21097c = new u(9);

    /* renamed from: d  reason: collision with root package name */
    private final u f21098d = new u(11);
    private final u e = new u();
    private final c f = new c();
    private int h = 1;

    @RequiresNonNull({"extractorOutput"})
    private void a() {
        if (!this.o) {
            this.g.a(new v.b(-9223372036854775807L));
            this.o = true;
        }
    }

    private u b(i iVar) throws IOException {
        if (this.m > this.e.f22335a.length) {
            u uVar = this.e;
            uVar.a(new byte[Math.max(uVar.f22335a.length * 2, this.m)], 0);
        } else {
            this.e.d(0);
        }
        this.e.c(this.m);
        iVar.b(this.e.f22335a, 0, this.m);
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] b() {
        return new h[]{new b()};
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x015d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0008 A[SYNTHETIC] */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.exoplayer2.extractor.i r9, com.google.android.exoplayer2.extractor.u r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.flv.b.a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        if (j == 0) {
            this.h = 1;
            this.i = false;
        } else {
            this.h = 3;
        }
        this.k = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.g = jVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        iVar.d(this.f21096b.f22335a, 0, 3);
        this.f21096b.d(0);
        if (this.f21096b.g() != 4607062) {
            return false;
        }
        iVar.d(this.f21096b.f22335a, 0, 2);
        this.f21096b.d(0);
        if ((this.f21096b.d() & 250) != 0) {
            return false;
        }
        iVar.d(this.f21096b.f22335a, 0, 4);
        this.f21096b.d(0);
        int j = this.f21096b.j();
        iVar.a();
        iVar.c(j);
        iVar.d(this.f21096b.f22335a, 0, 4);
        this.f21096b.d(0);
        return this.f21096b.j() == 0;
    }
}
