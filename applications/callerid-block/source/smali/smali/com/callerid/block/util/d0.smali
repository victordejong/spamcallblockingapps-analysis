.class public Lcom/callerid/block/util/d0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/util/d0$b;
    }
.end annotation


# direct methods
.method public static A()Z
    .locals 2

    const-string v0, "isOpenNeituiAd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static B(Z)V
    .locals 1

    const-string v0, "isOpenAd"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method private static C(Z)V
    .locals 1

    const-string v0, "isOpenMissedAd"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method private static D(Z)V
    .locals 1

    const-string v0, "isOpenMissedBannerAd"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method private static E(Z)V
    .locals 1

    const-string v0, "isOpenNeituiAd"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static F(Z)V
    .locals 1

    const-string v0, "isShowFenfa"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "mr_ntapp"

    const-string v1, "com.colorflash.callerscreen"

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "nt_description"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    const-string v0, "head_line"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    const-string v0, "nt_image"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    const-string v0, "nt_thumb"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/callerid/block/util/d0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callerid/block/util/d0$b;-><init>(Lcom/callerid/block/util/d0$a;)V

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    new-instance v0, Lcom/callerid/block/util/d0$b;

    invoke-direct {v0, v1}, Lcom/callerid/block/util/d0$b;-><init>(Lcom/callerid/block/util/d0$a;)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mr_ntapp"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nt_description"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "head_line"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nt_image"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nt_thumb"

    invoke-static {v0, p0}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static l(J)V
    .locals 1

    const-string v0, "search_ntapp_time"

    invoke-static {v0, p0, p1}, Lcom/callerid/block/util/y;->h(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic m(Z)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->B(Z)V

    return-void
.end method

.method static synthetic n(Z)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->C(Z)V

    return-void
.end method

.method static synthetic o(Z)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->D(Z)V

    return-void
.end method

.method static synthetic p(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Z)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/d0;->E(Z)V

    return-void
.end method

.method static synthetic v(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callerid/block/util/d0;->l(J)V

    return-void
.end method

.method public static w()Z
    .locals 2

    const-string v0, "isShowFenfa"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 2

    const-string v0, "isOpenAd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y()Z
    .locals 2

    const-string v0, "isOpenMissedAd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .locals 2

    const-string v0, "isOpenMissedBannerAd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
