.class final Lcom/google/android/gms/measurement/internal/zzgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/google/android/gms/measurement/internal/zzgm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zze:Lcom/google/android/gms/measurement/internal/zzgm;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zze:Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgm;->zzx(Lcom/google/android/gms/measurement/internal/zzgm;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzN()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzik;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzid;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzd:J

    .line 4
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zze:Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgm;->zzx(Lcom/google/android/gms/measurement/internal/zzgm;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzN()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzik;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzid;)V

    return-void
.end method
