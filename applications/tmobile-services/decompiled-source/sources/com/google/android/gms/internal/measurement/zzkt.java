package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkt.class */
final class zzkt extends zzkr<zzku, zzku> {
    /* renamed from: t */
    private static void m12114t(Object obj, zzku zzkuVar) {
        ((zzhz) obj).zzb = zzkuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: a */
    public final /* synthetic */ zzku mo12132a() {
        return zzku.m12107g();
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: b */
    final /* synthetic */ zzku mo12131b(zzku zzkuVar) {
        zzku zzkuVar2 = zzkuVar;
        zzkuVar2.m12105i();
        return zzkuVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: c */
    final /* synthetic */ void mo12130c(zzku zzkuVar, int i, int i2) {
        zzkuVar.m12111c((i << 3) | 5, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: d */
    public final /* synthetic */ void mo12129d(zzku zzkuVar, int i, long j) {
        zzkuVar.m12111c(i << 3, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: e */
    public final /* synthetic */ void mo12128e(zzku zzkuVar, int i, zzgr zzgrVar) {
        zzkuVar.m12111c((i << 3) | 2, zzgrVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: f */
    final /* synthetic */ void mo12127f(zzku zzkuVar, int i, zzku zzkuVar2) {
        zzkuVar.m12111c((i << 3) | 3, zzkuVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: g */
    public final /* synthetic */ void mo12126g(zzku zzkuVar, zzlo zzloVar) throws IOException {
        zzkuVar.m12106h(zzloVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ void mo12125h(Object obj, zzku zzkuVar) {
        m12114t(obj, zzkuVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: i */
    public final boolean mo12124i(zzka zzkaVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: k */
    public final /* synthetic */ zzku mo12123k(Object obj) {
        return ((zzhz) obj).zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: l */
    final /* synthetic */ void mo12122l(zzku zzkuVar, int i, long j) {
        zzkuVar.m12111c((i << 3) | 1, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: m */
    public final /* synthetic */ void mo12121m(zzku zzkuVar, zzlo zzloVar) throws IOException {
        zzkuVar.m12109e(zzloVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: n */
    public final /* synthetic */ void mo12120n(Object obj, zzku zzkuVar) {
        m12114t(obj, zzkuVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: o */
    public final /* synthetic */ zzku mo12119o(Object obj) {
        zzku zzkuVar = ((zzhz) obj).zzb;
        zzku zzkuVar2 = zzkuVar;
        if (zzkuVar == zzku.m12113a()) {
            zzkuVar2 = zzku.m12107g();
            m12114t(obj, zzkuVar2);
        }
        return zzkuVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: p */
    public final /* synthetic */ zzku mo12118p(zzku zzkuVar, zzku zzkuVar2) {
        zzku zzkuVar3 = zzkuVar;
        zzku zzkuVar4 = zzkuVar2;
        return zzkuVar4.equals(zzku.m12113a()) ? zzkuVar3 : zzku.m12112b(zzkuVar3, zzkuVar4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: q */
    public final void mo12117q(Object obj) {
        ((zzhz) obj).zzb.m12105i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: r */
    public final /* synthetic */ int mo12116r(zzku zzkuVar) {
        return zzkuVar.m12104j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkr
    /* renamed from: s */
    public final /* synthetic */ int mo12115s(zzku zzkuVar) {
        return zzkuVar.m12103k();
    }
}
