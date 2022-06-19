.class public final Lcom/google/android/gms/internal/ads/og1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/s31;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/re1;

.field private final e:Lcom/google/android/gms/internal/ads/we1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/re1;Lcom/google/android/gms/internal/ads/we1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/og1;->d:Lcom/google/android/gms/internal/ads/re1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/og1;->e:Lcom/google/android/gms/internal/ads/we1;

    return-void
.end method


# virtual methods
.method public final zzg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/og1;->d:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->u()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/og1;->d:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->t()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/og1;->d:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/re1;->r()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/og1;->e:Lcom/google/android/gms/internal/ads/we1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/we1;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v1, Lb/e/a;

    invoke-direct {v1}, Lb/e/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
