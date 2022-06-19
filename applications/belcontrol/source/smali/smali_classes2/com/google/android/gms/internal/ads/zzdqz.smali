.class public final Lcom/google/android/gms/internal/ads/zzdqz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzhpu:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE"
        }
    .end annotation
.end field

.field private final synthetic zzhpy:Lcom/google/android/gms/internal/ads/zzdqv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdqv;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhpy:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhpu:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdqv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdqy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqz;-><init>(Lcom/google/android/gms/internal/ads/zzdqv;Ljava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzdrb;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdrb<",
            "TO;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhpy:Lcom/google/android/gms/internal/ads/zzdqv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhpu:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqv;->zzaxg()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdrb;-><init>(Lcom/google/android/gms/internal/ads/zzdqv;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzw;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdqy;)V

    return-object v8
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzdrb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqt;",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdrb<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Lcom/google/android/gms/internal/ads/zzdqt;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqz;->zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzdrb<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhpy:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqz;->zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzdzv;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzdrb<",
            "TO;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhpy:Lcom/google/android/gms/internal/ads/zzdqv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqz;->zzhpu:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqv;->zzaxg()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdrb;-><init>(Lcom/google/android/gms/internal/ads/zzdqv;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzw;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdqy;)V

    return-object v8
.end method
