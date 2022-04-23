package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bi.class */
public final class bi extends gi<bj, bi> implements hp {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private bi() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.bj r1 = com.google.android.gms.internal.measurement.bj.d()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.bi.<init>():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ bi(com.google.android.gms.internal.measurement.bf r4) {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.bj r1 = com.google.android.gms.internal.measurement.bj.d()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.bi.<init>(com.google.android.gms.internal.measurement.bf):void");
    }

    public final int a() {
        return ((bj) this.f29059a).zzi.size();
    }

    public final bh a(int i) {
        return ((bj) this.f29059a).zzi.get(i);
    }

    public final bi a(int i, bg bgVar) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        bj.a((bj) this.f29059a, i, bgVar.A());
        return this;
    }

    public final List<an> b() {
        return Collections.unmodifiableList(((bj) this.f29059a).zzj);
    }

    public final bi c() {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        ((bj) this.f29059a).zzj = hy.d();
        return this;
    }
}
