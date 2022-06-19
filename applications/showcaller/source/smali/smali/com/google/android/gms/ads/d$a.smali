.class public Lcom/google/android/gms/ads/d$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->b()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/p70;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/p70;-><init>()V

    .line 3
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ur;->k(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/ps;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/ps;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/d;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/d;

    iget-object v1, p0, Lcom/google/android/gms/ads/d$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/ps;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ps;->a()Lcom/google/android/gms/internal/ads/ms;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/xq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/fv;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fv;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/d;

    iget-object v2, p0, Lcom/google/android/gms/ads/d$a;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fv;->F6()Lcom/google/android/gms/internal/ads/ms;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    .line 6
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/ads/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/xq;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/ads/formats/d$b;Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/d$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/formats/d$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/j10;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/ads/j10;-><init>(Lcom/google/android/gms/ads/formats/d$b;Lcom/google/android/gms/ads/formats/d$a;)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/ps;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/j10;->c()Lcom/google/android/gms/internal/ads/m00;

    move-result-object p3

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/j10;->d()Lcom/google/android/gms/internal/ads/j00;

    move-result-object v0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/ps;->A5(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m00;Lcom/google/android/gms/internal/ads/j00;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add custom template ad listener"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/nativead/a$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/xa0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/xa0;-><init>(Lcom/google/android/gms/ads/nativead/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ps;->H3(Lcom/google/android/gms/internal/ads/t00;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public d(Lcom/google/android/gms/ads/formats/e$a;)Lcom/google/android/gms/ads/d$a;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/formats/e$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/k10;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/k10;-><init>(Lcom/google/android/gms/ads/formats/e$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ps;->H3(Lcom/google/android/gms/internal/ads/t00;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/pq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/pq;-><init>(Lcom/google/android/gms/ads/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ps;->T5(Lcom/google/android/gms/internal/ads/gs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to set AdListener."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public f(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/d$a;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/formats/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzblv;-><init>(Lcom/google/android/gms/ads/formats/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ps;->B1(Lcom/google/android/gms/internal/ads/zzblv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public g(Lcom/google/android/gms/ads/nativead/b;)Lcom/google/android/gms/ads/d$a;
    .locals 11
    .param p1    # Lcom/google/android/gms/ads/nativead/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/ps;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzblv;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->e()Z

    move-result v3

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->d()Z

    move-result v5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->a()I

    move-result v6

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->c()Lcom/google/android/gms/ads/t;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbis;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->c()Lcom/google/android/gms/ads/t;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(Lcom/google/android/gms/ads/t;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    const/4 v2, 0x4

    const/4 v4, -0x1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->f()Z

    move-result v8

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->b()I

    move-result v9

    move-object v1, v10

    .line 9
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzblv;-><init>(IZIZILcom/google/android/gms/internal/ads/zzbis;ZI)V

    .line 10
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/ps;->B1(Lcom/google/android/gms/internal/ads/zzblv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method
