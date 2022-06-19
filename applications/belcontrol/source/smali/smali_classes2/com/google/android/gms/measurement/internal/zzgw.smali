.class public final Lcom/google/android/gms/measurement/internal/zzgw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:J

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhn;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:Lcom/google/android/gms/measurement/internal/zzhn;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:Lcom/google/android/gms/measurement/internal/zzhn;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zza:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhn;->zzG(JZ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:Lcom/google/android/gms/measurement/internal/zzhn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzy()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjb;->zzv(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
