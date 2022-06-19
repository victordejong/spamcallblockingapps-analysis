.class public final Lcom/google/android/gms/internal/ads/fi3;
.super Lcom/google/android/gms/internal/ads/ee3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ee3<",
        "Lcom/google/android/gms/internal/ads/gi3;",
        "Lcom/google/android/gms/internal/ads/fi3;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/gi3;->D()Lcom/google/android/gms/internal/ads/gi3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ee3;-><init>(Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/gh3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/gi3;->D()Lcom/google/android/gms/internal/ads/gi3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ee3;-><init>(Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fi3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/gi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/gi3;->E(Lcom/google/android/gms/internal/ads/gi3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(J)Lcom/google/android/gms/internal/ads/fi3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/gi3;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/gi3;->F(Lcom/google/android/gms/internal/ads/gi3;J)V

    return-object p0
.end method

.method public final s(Z)Lcom/google/android/gms/internal/ads/fi3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/gi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/gi3;->G(Lcom/google/android/gms/internal/ads/gi3;Z)V

    return-object p0
.end method
