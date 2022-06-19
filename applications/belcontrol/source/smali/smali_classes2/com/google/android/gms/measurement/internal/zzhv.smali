.class public final Lcom/google/android/gms/measurement/internal/zzhv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/os/Bundle;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhu;

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzhu;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/google/android/gms/measurement/internal/zzib;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzib;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzhu;Lcom/google/android/gms/measurement/internal/zzhu;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zze:Lcom/google/android/gms/measurement/internal/zzib;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzb:Lcom/google/android/gms/measurement/internal/zzhu;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzc:Lcom/google/android/gms/measurement/internal/zzhu;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zze:Lcom/google/android/gms/measurement/internal/zzib;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzb:Lcom/google/android/gms/measurement/internal/zzhu;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzc:Lcom/google/android/gms/measurement/internal/zzhu;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzib;->zzu(Lcom/google/android/gms/measurement/internal/zzib;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzhu;Lcom/google/android/gms/measurement/internal/zzhu;J)V

    return-void
.end method
