.class final Lcom/google/android/gms/internal/ads/zzgmh;
.super Lcom/google/android/gms/internal/ads/zzgix;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzgml;

.field public zzb:Lcom/google/android/gms/internal/ads/zzgiz;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgmn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgmn;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zzc:Lcom/google/android/gms/internal/ads/zzgmn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgix;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgml;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgml;-><init>(Lcom/google/android/gms/internal/ads/zzgjf;Lcom/google/android/gms/internal/ads/zzgmk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zza:Lcom/google/android/gms/internal/ads/zzgml;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgmh;->zzb()Lcom/google/android/gms/internal/ads/zzgiz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgiz;

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/ads/zzgiz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zza:Lcom/google/android/gms/internal/ads/zzgml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgml;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zza:Lcom/google/android/gms/internal/ads/zzgml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgml;->zza()Lcom/google/android/gms/internal/ads/zzgja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjf;->zzs()Lcom/google/android/gms/internal/ads/zzgiz;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgiz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgiz;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgiz;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgiz;

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgmh;->zzb()Lcom/google/android/gms/internal/ads/zzgiz;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgiz;

    :cond_0
    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
