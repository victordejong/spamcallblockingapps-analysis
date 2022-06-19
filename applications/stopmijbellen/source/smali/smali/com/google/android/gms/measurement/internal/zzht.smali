.class final Lcom/google/android/gms/measurement/internal/zzht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaf;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:Z

.field public final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzaf;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzr(Lcom/google/android/gms/measurement/internal/zzaf;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzc:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzd:Z

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzhw;->zzW(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzaf;IJZZ)V

    return-void
.end method
