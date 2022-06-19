.class public final Lcom/google/android/gms/internal/ads/ag2;
.super Lcom/google/android/gms/internal/ads/lc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/lc2<",
        "Lcom/google/android/gms/internal/ads/cg2;",
        "Lcom/google/android/gms/internal/ads/ag2;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/cg2;->F()Lcom/google/android/gms/internal/ads/cg2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/lc2;-><init>(Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/kf2;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cg2;->F()Lcom/google/android/gms/internal/ads/cg2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/lc2;-><init>(Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method


# virtual methods
.method public final q(Lcom/google/android/gms/internal/ads/zzexf;)Lcom/google/android/gms/internal/ads/ag2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lc2;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lc2;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lc2;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc2;->c:Lcom/google/android/gms/internal/ads/oc2;

    check-cast v0, Lcom/google/android/gms/internal/ads/cg2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cg2;->G(Lcom/google/android/gms/internal/ads/cg2;Lcom/google/android/gms/internal/ads/zzexf;)V

    return-object p0
.end method

.method public final r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ag2;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/lc2;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lc2;->j()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/lc2;->d:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lc2;->c:Lcom/google/android/gms/internal/ads/oc2;

    check-cast p1, Lcom/google/android/gms/internal/ads/cg2;

    const-string v0, "image/png"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cg2;->H(Lcom/google/android/gms/internal/ads/cg2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/ag2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lc2;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lc2;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lc2;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc2;->c:Lcom/google/android/gms/internal/ads/oc2;

    check-cast v0, Lcom/google/android/gms/internal/ads/cg2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cg2;->I(Lcom/google/android/gms/internal/ads/cg2;Lcom/google/android/gms/internal/ads/zzesf;)V

    return-object p0
.end method
