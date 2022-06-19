.class final Lcom/google/android/gms/internal/ads/co0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/wn0;

.field private final e:Lcom/google/android/gms/ads/internal/overlay/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/ads/internal/overlay/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/co0;->d:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/co0;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/co0;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->a()V

    :cond_0
    return-void
.end method

.method public final a3()V
    .locals 0

    return-void
.end method

.method public final a6(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/co0;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/o;->a6(I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/co0;->d:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->P()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/co0;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->e()V

    :cond_0
    return-void
.end method

.method public final m2()V
    .locals 0

    return-void
.end method

.method public final y4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/co0;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->y4()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/co0;->d:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->W()V

    return-void
.end method
