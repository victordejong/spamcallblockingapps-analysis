.class public final Lcom/google/android/gms/internal/ads/ei0;
.super Lcom/google/android/gms/internal/ads/c6;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/si0;

.field private c:Lcom/google/android/gms/dynamic/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/si0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/c6;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    return-void
.end method

.method private static z6(Lcom/google/android/gms/dynamic/a;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()F
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->Q3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->s()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->s()F

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/m1;->m()F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception getting video controller aspect ratio."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->c:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->z6(Lcom/google/android/gms/dynamic/a;)F

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->d0()Lcom/google/android/gms/internal/ads/g6;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g6;->a()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g6;->d()I

    move-result v2

    if-eq v2, v3, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g6;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g6;->d()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    cmpl-float v1, v2, v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g6;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->z6(Lcom/google/android/gms/dynamic/a;)F

    move-result v0

    return v0

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method public final b5(Lcom/google/android/gms/internal/ads/k7;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/eu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eu;->F6(Lcom/google/android/gms/internal/ads/k7;)V

    :cond_1
    return-void
.end method

.method public final e()F
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/m1;->h()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final g()Lcom/google/android/gms/dynamic/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->c:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->d0()Lcom/google/android/gms/internal/ads/g6;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g6;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/m1;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    return-object v0
.end method

.method public final i()F
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/m1;->j()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final j()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->b:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ei0;->c:Lcom/google/android/gms/dynamic/a;

    return-void
.end method
