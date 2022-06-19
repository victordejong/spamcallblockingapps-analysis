package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.cc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cc.class */
final class C3841cc<T> implements AbstractC3836by<T>, Serializable {
    @NullableDecl

    /* renamed from: a */
    private final T f17919a;

    public C3841cc(@NullableDecl T t) {
        this.f17919a = t;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3836by
    /* renamed from: a */
    public final T mo4957a() {
        return this.f17919a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0031, code lost:
        if (r0.equals(r0) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.C3841cc
            if (r0 == 0) goto L36
            r0 = r4
            com.google.android.gms.internal.measurement.cc r0 = (com.google.android.gms.internal.measurement.C3841cc) r0
            r7 = r0
            r0 = r3
            T r0 = r0.f17919a
            r4 = r0
            r0 = r7
            T r0 = r0.f17919a
            r7 = r0
            r0 = r4
            r1 = r7
            if (r0 == r1) goto L34
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L36
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
        L34:
            r0 = 1
            r6 = r0
        L36:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3841cc.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17919a});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f17919a);
        return new StringBuilder(String.valueOf(valueOf).length() + 22).append("Suppliers.ofInstance(").append(valueOf).append(")").toString();
    }
}
