.class public final Lcom/google/android/gms/internal/ads/bcd;
.super Lcom/google/android/gms/internal/ads/dp;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcr;

.field private b:Lcom/google/android/gms/dynamic/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bcr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    return-void
.end method

.method private static b(Lcom/google/android/gms/dynamic/b;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 79
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

.method private final g()F
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/emk;->i()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Remote exception getting video controller aspect ratio."

    .line 71
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dP:Lcom/google/android/gms/internal/ads/af;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->z()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->z()F

    move-result v0

    return v0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bcd;->g()F

    move-result v0

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->b:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_3

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bcd;->b(Lcom/google/android/gms/dynamic/b;)F

    move-result v0

    return v0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->g()Lcom/google/android/gms/internal/ads/dr;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    if-eqz v0, :cond_5

    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dr;->d()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dr;->e()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dr;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dr;->e()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    cmpl-float v1, v2, v1

    if-eqz v1, :cond_6

    return v2

    .line 25
    :cond_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dr;->a()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bcd;->b(Lcom/google/android/gms/dynamic/b;)F

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 2

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bX:Lcom/google/android/gms/internal/ads/af;

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcd;->b:Lcom/google/android/gms/dynamic/b;

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ff;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dQ:Lcom/google/android/gms/internal/ads/af;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/aem;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    .line 1099
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1100
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/aem;->g:Lcom/google/android/gms/internal/ads/ff;

    .line 1101
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final b()Lcom/google/android/gms/dynamic/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->b:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->g()Lcom/google/android/gms/internal/ads/dr;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dr;->a()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final c()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dQ:Lcom/google/android/gms/internal/ads/af;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/emk;->f()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final d()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dQ:Lcom/google/android/gms/internal/ads/af;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/emk;->g()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/emk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dQ:Lcom/google/android/gms/internal/ads/af;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dQ:Lcom/google/android/gms/internal/ads/af;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcd;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
