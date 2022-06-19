.class final Lcom/google/android/gms/internal/ads/yf3;
.super Lcom/google/android/gms/internal/ads/cd3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final d:Lcom/google/android/gms/internal/ads/bg3;

.field e:Lcom/google/android/gms/internal/ads/dd3;

.field final synthetic f:Lcom/google/android/gms/internal/ads/zzghy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzghy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yf3;->f:Lcom/google/android/gms/internal/ads/zzghy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cd3;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/bg3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/bg3;-><init>(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/ag3;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yf3;->d:Lcom/google/android/gms/internal/ads/bg3;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yf3;->a()Lcom/google/android/gms/internal/ads/dd3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yf3;->e:Lcom/google/android/gms/internal/ads/dd3;

    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/dd3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yf3;->d:Lcom/google/android/gms/internal/ads/bg3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bg3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yf3;->d:Lcom/google/android/gms/internal/ads/bg3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bg3;->a()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzq()Lcom/google/android/gms/internal/ads/dd3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yf3;->e:Lcom/google/android/gms/internal/ads/dd3;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yf3;->e:Lcom/google/android/gms/internal/ads/dd3;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dd3;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yf3;->e:Lcom/google/android/gms/internal/ads/dd3;

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yf3;->a()Lcom/google/android/gms/internal/ads/dd3;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yf3;->e:Lcom/google/android/gms/internal/ads/dd3;

    :cond_0
    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
