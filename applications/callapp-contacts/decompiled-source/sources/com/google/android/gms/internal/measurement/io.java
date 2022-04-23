package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/io.class */
final class io extends im<in, in> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final /* synthetic */ in a() {
        return in.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final /* bridge */ /* synthetic */ in a(Object obj) {
        return ((gl) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final /* synthetic */ void a(in inVar, int i, long j) {
        inVar.a(i << 3, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final /* bridge */ /* synthetic */ void a(in inVar, ft ftVar) throws IOException {
        inVar.a(ftVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final /* bridge */ /* synthetic */ void a(Object obj, in inVar) {
        ((gl) obj).zzc = inVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final /* synthetic */ in b(in inVar, in inVar2) {
        in inVar3 = inVar2;
        return inVar3.equals(in.a()) ? inVar : in.a(inVar, inVar3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final void b(Object obj) {
        ((gl) obj).zzc.e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final /* synthetic */ int c(in inVar) {
        in inVar2 = inVar;
        int i = inVar2.f29135d;
        int i2 = i;
        if (i == -1) {
            i2 = 0;
            for (int i3 = 0; i3 < inVar2.f29132a; i3++) {
                int i4 = inVar2.f29133b[i3];
                fm fmVar = (fm) inVar2.f29134c[i3];
                int f = fs.f(8);
                int a2 = fmVar.a();
                i2 += f + f + fs.f(16) + fs.f(i4 >>> 3) + fs.f(24) + fs.f(a2) + a2;
            }
            inVar2.f29135d = i2;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.im
    public final /* synthetic */ int d(in inVar) {
        return inVar.c();
    }
}
