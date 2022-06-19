.class public Lcom/allinone/callerid/util/k0;
.super Ljava/lang/Object;
.source "NeiTuiHalper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/k0$b;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    const-string v0, "ntapp"

    const-string v1, "mr_ntapp"

    const-string v2, "com.colorflash.callerscreen"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string v0, "ntapp"

    const-string v1, "nt_description"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const-string v0, "ntapp"

    const-string v1, "head_line"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    const-string v0, "ntapp"

    const-string v1, "nt_image"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    const-string v0, "ntapp"

    const-string v1, "nt_thumb"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()J
    .locals 4

    const-string v0, "ntapp"

    const-string v1, "search_ntapp_time"

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/util/e0;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/util/k0;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->s0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/k0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allinone/callerid/util/k0$b;-><init>(Lcom/allinone/callerid/util/k0$a;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private static h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntapp"

    const-string v1, "mr_ntapp"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static i(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntapp"

    const-string v1, "nt_description"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static j(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntapp"

    const-string v1, "head_line"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static k(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntapp"

    const-string v1, "nt_image"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static l(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntapp"

    const-string v1, "nt_thumb"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static m(J)V
    .locals 2

    const-string v0, "ntapp"

    const-string v1, "search_ntapp_time"

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/allinone/callerid/util/e0;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic n(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/allinone/callerid/util/k0;->v(Z)V

    return-void
.end method

.method static synthetic o(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/allinone/callerid/util/k0;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/allinone/callerid/util/k0;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/allinone/callerid/util/k0;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/allinone/callerid/util/k0;->l(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/allinone/callerid/util/k0;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/allinone/callerid/util/k0;->m(J)V

    return-void
.end method

.method public static u()Z
    .locals 3

    const-string v0, "ntapp"

    const-string v1, "isOpenAd"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/e0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static v(Z)V
    .locals 2

    const-string v0, "ntapp"

    const-string v1, "isOpenAd"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/allinone/callerid/util/e0;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
