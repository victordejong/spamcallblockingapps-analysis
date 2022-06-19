package com.google.android.gms.internal.firebase_remote_config;

import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbh.class */
final class zzbh extends zzaz {
    private final zzfo zzdu;
    private final zzbf zzdv;

    public zzbh(zzbf zzbfVar, zzfo zzfoVar) {
        this.zzdv = zzbfVar;
        this.zzdu = zzfoVar;
        zzfoVar.setLenient(true);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void flush() {
        this.zzdu.flush();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void writeBoolean(boolean z) {
        this.zzdu.zzc(z);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void writeString(String str) {
        this.zzdu.zzbg(str);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zza(double d) {
        this.zzdu.zzb(d);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zza(float f) {
        this.zzdu.zzb(f);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zza(long j) {
        this.zzdu.zzd(j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zza(BigDecimal bigDecimal) {
        this.zzdu.zza(bigDecimal);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zza(BigInteger bigInteger) {
        this.zzdu.zza(bigInteger);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zzad(String str) {
        this.zzdu.zzbf(str);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zzas() {
        this.zzdu.zzef();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zzat() {
        this.zzdu.zzeg();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zzau() {
        this.zzdu.zzeh();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zzav() {
        this.zzdu.zzei();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zzaw() {
        this.zzdu.zzel();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zzax() {
        this.zzdu.setIndent("  ");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaz
    public final void zze(int i) {
        this.zzdu.zzd(i);
    }
}
