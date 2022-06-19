.class public final Lcom/google/android/gms/measurement/internal/zzhw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhu;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhu;

.field public final synthetic zzc:J

.field public final synthetic zzd:Z

.field public final synthetic zze:Lcom/google/android/gms/measurement/internal/zzib;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzib;Lcom/google/android/gms/measurement/internal/zzhu;Lcom/google/android/gms/measurement/internal/zzhu;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zze:Lcom/google/android/gms/measurement/internal/zzib;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zza:Lcom/google/android/gms/measurement/internal/zzhu;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzb:Lcom/google/android/gms/measurement/internal/zzhu;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zze:Lcom/google/android/gms/measurement/internal/zzib;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zza:Lcom/google/android/gms/measurement/internal/zzhu;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzb:Lcom/google/android/gms/measurement/internal/zzhu;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzc:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzd:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzib;->zzv(Lcom/google/android/gms/measurement/internal/zzib;Lcom/google/android/gms/measurement/internal/zzhu;Lcom/google/android/gms/measurement/internal/zzhu;JZLandroid/os/Bundle;)V

    return-void
.end method
