package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.bi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bi.class */
public final class C13388bi extends C13523gi<C13389bj, C13388bi> implements AbstractC13557hp {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private C13388bi() {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.bj r1 = com.google.android.gms.internal.measurement.C13389bj.m13206d()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13388bi.<init>():void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C13388bi(com.google.android.gms.internal.measurement.C13385bf r4) {
        /*
            r3 = this;
            r0 = r3
            com.google.android.gms.internal.measurement.bj r1 = com.google.android.gms.internal.measurement.C13389bj.m13206d()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13388bi.<init>(com.google.android.gms.internal.measurement.bf):void");
    }

    /* renamed from: a */
    public final int m13216a() {
        return ((C13389bj) this.f50759a).zzi.size();
    }

    /* renamed from: a */
    public final C13387bh m13215a(int i) {
        return ((C13389bj) this.f50759a).zzi.get(i);
    }

    /* renamed from: a */
    public final C13388bi m13214a(int i, C13386bg c13386bg) {
        if (this.f50760b) {
            m12770y();
            this.f50760b = false;
        }
        C13389bj.m13209a((C13389bj) this.f50759a, i, c13386bg.m12779A());
        return this;
    }

    /* renamed from: b */
    public final List<C13366an> m13213b() {
        return Collections.unmodifiableList(((C13389bj) this.f50759a).zzj);
    }

    /* renamed from: c */
    public final C13388bi m13212c() {
        if (this.f50760b) {
            m12770y();
            this.f50760b = false;
        }
        ((C13389bj) this.f50759a).zzj = C13566hy.m12660d();
        return this;
    }
}
