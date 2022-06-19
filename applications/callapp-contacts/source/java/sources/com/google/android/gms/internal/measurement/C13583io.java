package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.io */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/io.class */
final class C13583io extends AbstractC13581im<C13582in, C13582in> {
    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: a */
    public final /* synthetic */ C13582in mo12566a() {
        return C13582in.m12568b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C13582in mo12565a(Object obj) {
        return ((AbstractC13526gl) obj).zzc;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: a */
    public final /* synthetic */ void mo12564a(C13582in c13582in, int i, long j) {
        c13582in.m12572a(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo12563a(C13582in c13582in, C13507ft c13507ft) throws IOException {
        c13582in.m12571a(c13507ft);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo12562a(Object obj, C13582in c13582in) {
        ((AbstractC13526gl) obj).zzc = c13582in;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: b */
    public final /* synthetic */ C13582in mo12560b(C13582in c13582in, C13582in c13582in2) {
        C13582in c13582in3 = c13582in2;
        return c13582in3.equals(C13582in.m12573a()) ? c13582in : C13582in.m12570a(c13582in, c13582in3);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: b */
    public final void mo12561b(Object obj) {
        ((AbstractC13526gl) obj).zzc.f50854e = false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: c */
    public final /* synthetic */ int mo12559c(C13582in c13582in) {
        C13582in c13582in2 = c13582in;
        int i = c13582in2.f50853d;
        int i2 = i;
        if (i == -1) {
            i2 = 0;
            for (int i3 = 0; i3 < c13582in2.f50850a; i3++) {
                int i4 = c13582in2.f50851b[i3];
                AbstractC13500fm abstractC13500fm = (AbstractC13500fm) c13582in2.f50852c[i3];
                int m12821f = AbstractC13506fs.m12821f(8);
                int mo12866a = abstractC13500fm.mo12866a();
                i2 += m12821f + m12821f + AbstractC13506fs.m12821f(16) + AbstractC13506fs.m12821f(i4 >>> 3) + AbstractC13506fs.m12821f(24) + AbstractC13506fs.m12821f(mo12866a) + mo12866a;
            }
            c13582in2.f50853d = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13581im
    /* renamed from: d */
    public final /* synthetic */ int mo12558d(C13582in c13582in) {
        return c13582in.m12567c();
    }
}
