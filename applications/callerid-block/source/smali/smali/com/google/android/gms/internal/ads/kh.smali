.class public final Lcom/google/android/gms/internal/ads/kh;
.super Lcom/google/android/gms/ads/nativead/a;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/y7;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/jh;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/y7;)V
    .locals 5

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/a;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kh;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kh;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/y7;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/f6;->z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/g6;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kh;->b:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/jh;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/jh;-><init>(Lcom/google/android/gms/internal/ads/g6;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/y7;->C()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/u0;->z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/v0;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kh;->d:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/w0;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/w0;-><init>(Lcom/google/android/gms/internal/ads/v0;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/y7;->e()Lcom/google/android/gms/internal/ads/g6;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/ads/jh;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/jh;-><init>(Lcom/google/android/gms/internal/ads/g6;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kh;->c:Lcom/google/android/gms/internal/ads/jh;

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/y7;->l()Lcom/google/android/gms/internal/ads/z5;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/google/android/gms/internal/ads/ih;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/y7;->l()Lcom/google/android/gms/internal/ads/z5;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/ih;-><init>(Lcom/google/android/gms/internal/ads/z5;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y7;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y7;->g()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y7;->i()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y7;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/ads/nativead/a$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->c:Lcom/google/android/gms/internal/ads/jh;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->b:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y7;->m()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/lang/Double;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/y7;->j()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y7;->k()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic j()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y7;->t()Lcom/google/android/gms/dynamic/a;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
