.class public final Lcom/google/android/gms/internal/ads/ce1;
.super Lcom/google/android/gms/internal/ads/cz;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/re1;

.field private e:Lcom/google/android/gms/dynamic/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/re1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    return-void
.end method

.method private static E6(Lcom/google/android/gms/dynamic/a;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 4
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
.method public final N2(Lcom/google/android/gms/internal/ads/n00;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->B4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/ro0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ro0;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ro0;->K6(Lcom/google/android/gms/internal/ads/n00;)V

    :cond_1
    return-void
.end method

.method public final a()F
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->A4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->w()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->w()F

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ju;->j()F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception getting video controller aspect ratio."

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->e:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_3

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ce1;->E6(Lcom/google/android/gms/dynamic/a;)F

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->b()Lcom/google/android/gms/internal/ads/gz;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gz;->a()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gz;->d()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gz;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gz;->d()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    cmpl-float v1, v2, v1

    if-nez v1, :cond_6

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gz;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ce1;->E6(Lcom/google/android/gms/dynamic/a;)F

    move-result v0

    return v0

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method public final f()F
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->B4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ju;->g()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final g()Lcom/google/android/gms/internal/ads/ju;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->B4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->B4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ce1;->e:Lcom/google/android/gms/dynamic/a;

    return-void
.end method

.method public final zzg()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->e:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->b()Lcom/google/android/gms/internal/ads/gz;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gz;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()F
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->B4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ce1;->d:Lcom/google/android/gms/internal/ads/re1;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ju;->h()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method
