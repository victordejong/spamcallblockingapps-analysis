.class public Lcom/google/android/gms/ads/d$a;
.super Ljava/lang/Object;
.source ""


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

.field private final b:Lcom/google/android/gms/internal/ads/s;


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

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/h;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->b()Lcom/google/android/gms/internal/ads/k03;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/de;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/k03;->c(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;)Lcom/google/android/gms/internal/ads/s;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/s;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/d;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/d;

    iget-object v1, p0, Lcom/google/android/gms/ads/d$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/s;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/s;->a()Lcom/google/android/gms/internal/ads/p;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/p;Lcom/google/android/gms/internal/ads/sz2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/i2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/i2;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/d;

    iget-object v2, p0, Lcom/google/android/gms/ads/d$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i2;->z6()Lcom/google/android/gms/internal/ads/p;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/ads/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/p;Lcom/google/android/gms/internal/ads/sz2;)V

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
    .param p3    # Lcom/google/android/gms/ads/formats/d$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/ads/f8;-><init>(Lcom/google/android/gms/ads/formats/d$b;Lcom/google/android/gms/ads/formats/d$a;)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/s;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->a()Lcom/google/android/gms/internal/ads/j7;

    move-result-object p3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->b()Lcom/google/android/gms/internal/ads/g7;

    move-result-object v0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/s;->p6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j7;Lcom/google/android/gms/internal/ads/g7;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add custom template ad listener"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/s;

    new-instance v1, Lcom/google/android/gms/internal/ads/lh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/lh;-><init>(Lcom/google/android/gms/ads/nativead/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s;->F3(Lcom/google/android/gms/internal/ads/q7;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/s;

    new-instance v1, Lcom/google/android/gms/internal/ads/g8;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/g8;-><init>(Lcom/google/android/gms/ads/formats/e$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s;->F3(Lcom/google/android/gms/internal/ads/q7;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/s;

    new-instance v1, Lcom/google/android/gms/internal/ads/lz2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/lz2;-><init>(Lcom/google/android/gms/ads/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s;->R0(Lcom/google/android/gms/internal/ads/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to set AdListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/s;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzagy;-><init>(Lcom/google/android/gms/ads/formats/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s;->D4(Lcom/google/android/gms/internal/ads/zzagy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->b:Lcom/google/android/gms/internal/ads/s;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzagy;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->e()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->d()Z

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->a()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->c()Lcom/google/android/gms/ads/s;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzady;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->c()Lcom/google/android/gms/ads/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzady;-><init>(Lcom/google/android/gms/ads/s;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    const/4 v2, 0x4

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->f()Z

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/b;->b()I

    move-result v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzagy;-><init>(IZIZILcom/google/android/gms/internal/ads/zzady;ZI)V

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/s;->D4(Lcom/google/android/gms/internal/ads/zzagy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method
