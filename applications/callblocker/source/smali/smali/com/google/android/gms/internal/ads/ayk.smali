.class public final Lcom/google/android/gms/internal/ads/ayk;
.super Lcom/google/android/gms/internal/ads/bs;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ayx;

.field private b:Lcom/google/android/gms/dynamic/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ayx;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bs;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    .line 3
    return-void
.end method

.method private static b(Lcom/google/android/gms/dynamic/a;)F
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 73
    if-nez p0, :cond_0

    move v0, v1

    .line 80
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 76
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 80
    goto :goto_0
.end method

.method private final g()F
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eba;->i()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string/jumbo v1, "Remote exception getting video controller aspect ratio."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()F
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dd:Lcom/google/android/gms/internal/ads/ect;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 26
    :cond_0
    :goto_0
    return v0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->z()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->z()F

    move-result v0

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ayk;->g()F

    move-result v0

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->b:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->b:Lcom/google/android/gms/dynamic/a;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayk;->b(Lcom/google/android/gms/dynamic/a;)F

    move-result v0

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->g()Lcom/google/android/gms/internal/ads/bu;

    move-result-object v2

    .line 16
    if-nez v2, :cond_5

    move v0, v1

    .line 17
    goto :goto_0

    .line 19
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bu;->d()I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bu;->e()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bu;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bu;->e()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 23
    :goto_1
    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 25
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/bu;->a()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayk;->b(Lcom/google/android/gms/dynamic/a;)F

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 21
    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bx:Lcom/google/android/gms/internal/ads/ect;

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayk;->b:Lcom/google/android/gms/dynamic/a;

    .line 64
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dh;)V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->de:Lcom/google/android/gms/internal/ads/ect;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/adn;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adn;

    .line 58
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/adn;->a(Lcom/google/android/gms/internal/ads/dh;)V

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->b:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->b:Lcom/google/android/gms/dynamic/a;

    .line 68
    :goto_0
    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->g()Lcom/google/android/gms/internal/ads/bu;

    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bu;->a()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->de:Lcom/google/android/gms/internal/ads/ect;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 33
    :goto_0
    return v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eba;->f()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method public final d()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->de:Lcom/google/android/gms/internal/ads/ect;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 40
    :goto_0
    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eba;->g()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 40
    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/eba;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->de:Lcom/google/android/gms/internal/ads/ect;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->de:Lcom/google/android/gms/internal/ads/ect;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 50
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayk;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
