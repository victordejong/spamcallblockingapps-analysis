.class final Lcom/google/android/gms/measurement/internal/zzhk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Z

.field public final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zze:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzc:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zze:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzc:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzd:Z

    const/4 v3, 0x0

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjk;->zzq(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
