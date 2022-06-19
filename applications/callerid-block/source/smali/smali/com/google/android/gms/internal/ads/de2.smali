.class final Lcom/google/android/gms/internal/ads/de2;
.super Lcom/google/android/gms/internal/ads/lb2;
.source ""


# instance fields
.field final b:Lcom/google/android/gms/internal/ads/fe2;

.field c:Lcom/google/android/gms/internal/ads/nb2;

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzeve;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeve;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/de2;->d:Lcom/google/android/gms/internal/ads/zzeve;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lb2;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/fe2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/fe2;-><init>(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/de2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/de2;->b:Lcom/google/android/gms/internal/ads/fe2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/de2;->b()Lcom/google/android/gms/internal/ads/nb2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/de2;->c:Lcom/google/android/gms/internal/ads/nb2;

    return-void
.end method

.method private final b()Lcom/google/android/gms/internal/ads/nb2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de2;->b:Lcom/google/android/gms/internal/ads/fe2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fe2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de2;->b:Lcom/google/android/gms/internal/ads/fe2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fe2;->b()Lcom/google/android/gms/internal/ads/zzesb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesf;->zzp()Lcom/google/android/gms/internal/ads/nb2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de2;->c:Lcom/google/android/gms/internal/ads/nb2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de2;->c:Lcom/google/android/gms/internal/ads/nb2;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nb2;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/de2;->c:Lcom/google/android/gms/internal/ads/nb2;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/de2;->b()Lcom/google/android/gms/internal/ads/nb2;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/de2;->c:Lcom/google/android/gms/internal/ads/nb2;

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
