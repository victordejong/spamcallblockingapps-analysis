.class final Lcom/google/android/gms/internal/ads/zzenf;
.super Lcom/google/android/gms/internal/ads/zzejs;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# instance fields
.field private final zzitr:Lcom/google/android/gms/internal/ads/zzenh;

.field private zzits:Lcom/google/android/gms/internal/ads/zzejw;

.field private final synthetic zzitt:Lcom/google/android/gms/internal/ads/zzeng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeng;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzitt:Lcom/google/android/gms/internal/ads/zzeng;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejs;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzenh;-><init>(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzenf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzitr:Lcom/google/android/gms/internal/ads/zzenh;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzenf;->zzbki()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzits:Lcom/google/android/gms/internal/ads/zzejw;

    return-void
.end method

.method private final zzbki()Lcom/google/android/gms/internal/ads/zzejw;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzitr:Lcom/google/android/gms/internal/ads/zzenh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzenh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzitr:Lcom/google/android/gms/internal/ads/zzenh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzenh;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejr;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejw;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzits:Lcom/google/android/gms/internal/ads/zzejw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextByte()B
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzits:Lcom/google/android/gms/internal/ads/zzejw;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzejw;->nextByte()B

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzits:Lcom/google/android/gms/internal/ads/zzejw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzejw;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzenf;->zzbki()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzenf;->zzits:Lcom/google/android/gms/internal/ads/zzejw;

    :cond_0
    return v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
