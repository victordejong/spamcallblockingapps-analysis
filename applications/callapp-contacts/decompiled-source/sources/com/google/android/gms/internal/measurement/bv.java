package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bv.class */
public final class bv extends gi<bw, bv> implements hp {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private bv() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.bw r1 = com.google.android.gms.internal.measurement.bw.d()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.bv.<init>():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ bv(com.google.android.gms.internal.measurement.bm r4) {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.bw r1 = com.google.android.gms.internal.measurement.bw.d()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.bv.<init>(com.google.android.gms.internal.measurement.bm):void");
    }

    public final bv a(int i, bz bzVar) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.a((bw) this.f29059a, i, bzVar.A());
        return this;
    }

    public final bv a(int i, ca caVar) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.a((bw) this.f29059a, i, caVar);
        return this;
    }

    public final bv a(long j) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.a((bw) this.f29059a, j);
        return this;
    }

    public final bv a(bz bzVar) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.a((bw) this.f29059a, bzVar.A());
        return this;
    }

    public final bv a(ca caVar) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.a((bw) this.f29059a, caVar);
        return this;
    }

    public final bv a(Iterable<? extends ca> iterable) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.a((bw) this.f29059a, iterable);
        return this;
    }

    public final bv a(String str) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.a((bw) this.f29059a, str);
        return this;
    }

    public final ca a(int i) {
        return ((bw) this.f29059a).zze.get(i);
    }

    public final List<ca> a() {
        return Collections.unmodifiableList(((bw) this.f29059a).zze);
    }

    public final int b() {
        return ((bw) this.f29059a).a();
    }

    public final bv b(int i) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.a((bw) this.f29059a, i);
        return this;
    }

    public final bv b(long j) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bw.b((bw) this.f29059a, j);
        return this;
    }

    public final bv c() {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        ((bw) this.f29059a).zze = hy.d();
        return this;
    }

    public final String d() {
        return ((bw) this.f29059a).zzf;
    }

    public final boolean e() {
        return ((bw) this.f29059a).b();
    }

    public final long f() {
        return ((bw) this.f29059a).zzg;
    }

    public final long g() {
        return ((bw) this.f29059a).zzh;
    }
}
