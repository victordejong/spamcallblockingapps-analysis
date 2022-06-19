.class public final Lcom/google/android/gms/measurement/internal/zzhk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaf;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:Z

.field public final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhn;Lcom/google/android/gms/measurement/internal/zzaf;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zze:Lcom/google/android/gms/measurement/internal/zzhn;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zze:Lcom/google/android/gms/measurement/internal/zzhn;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhn;->zzr(Lcom/google/android/gms/measurement/internal/zzaf;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zze:Lcom/google/android/gms/measurement/internal/zzhn;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzc:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzd:Z

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzhn;->zzW(Lcom/google/android/gms/measurement/internal/zzhn;Lcom/google/android/gms/measurement/internal/zzaf;IJZZ)V

    return-void
.end method
