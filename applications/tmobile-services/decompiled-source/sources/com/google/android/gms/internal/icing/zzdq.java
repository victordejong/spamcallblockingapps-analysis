package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdq.class */
final class zzdq extends zzdn<zzdx.zzc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzdn
    /* renamed from: a */
    public final int mo13862a(Map.Entry<?, ?> entry) {
        zzdx.zzc zzcVar = (zzdx.zzc) entry.getKey();
        throw new NoSuchMethodError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzdn
    /* renamed from: b */
    public final void mo13861b(zzhg zzhgVar, Map.Entry<?, ?> entry) throws IOException {
        zzdx.zzc zzcVar = (zzdx.zzc) entry.getKey();
        throw new NoSuchMethodError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzdn
    /* renamed from: c */
    public final zzds<zzdx.zzc> mo13860c(Object obj) {
        return ((zzdx.zzd) obj).zzkj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzdn
    /* renamed from: d */
    public final zzds<zzdx.zzc> mo13859d(Object obj) {
        zzdx.zzd zzdVar = (zzdx.zzd) obj;
        if (zzdVar.zzkj.m13855b()) {
            zzdVar.zzkj = (zzds) zzdVar.zzkj.clone();
        }
        return zzdVar.zzkj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzdn
    /* renamed from: e */
    public final boolean mo13858e(zzfh zzfhVar) {
        return zzfhVar instanceof zzdx.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzdn
    /* renamed from: f */
    public final void mo13857f(Object obj) {
        mo13860c(obj).m13846k();
    }
}
