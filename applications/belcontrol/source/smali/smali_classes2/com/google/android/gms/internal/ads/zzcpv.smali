.class public final Lcom/google/android/gms/internal/ads/zzcpv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzgqk:Lcom/google/android/gms/internal/ads/zzcpt;

.field private final zzgql:Lcom/google/android/gms/internal/ads/zzdzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpt;Lcom/google/android/gms/internal/ads/zzdzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgqk:Lcom/google/android/gms/internal/ads/zzcpt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgql:Lcom/google/android/gms/internal/ads/zzdzv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdqu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqu<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgql:Lcom/google/android/gms/internal/ads/zzdzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgqk:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcpy;->zza(Lcom/google/android/gms/internal/ads/zzcpt;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcpx;-><init>(Lcom/google/android/gms/internal/ads/zzcpv;Lcom/google/android/gms/internal/ads/zzdqu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgql:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method
