.class public final Lcom/google/android/gms/internal/ads/i63;
.super Lcom/google/android/gms/internal/ads/ee3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ee3<",
        "Lcom/google/android/gms/internal/ads/j63;",
        "Lcom/google/android/gms/internal/ads/i63;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/j63;->H()Lcom/google/android/gms/internal/ads/j63;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ee3;-><init>(Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/h63;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/j63;->H()Lcom/google/android/gms/internal/ads/j63;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ee3;-><init>(Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method


# virtual methods
.method public final q(I)Lcom/google/android/gms/internal/ads/i63;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/j63;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/j63;->I(Lcom/google/android/gms/internal/ads/j63;I)V

    return-object p0
.end method

.method public final r(Lcom/google/android/gms/internal/ads/p63;)Lcom/google/android/gms/internal/ads/i63;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/j63;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/j63;->J(Lcom/google/android/gms/internal/ads/j63;Lcom/google/android/gms/internal/ads/p63;)V

    return-object p0
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/i63;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/j63;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/j63;->L(Lcom/google/android/gms/internal/ads/j63;Lcom/google/android/gms/internal/ads/zzgex;)V

    return-object p0
.end method
