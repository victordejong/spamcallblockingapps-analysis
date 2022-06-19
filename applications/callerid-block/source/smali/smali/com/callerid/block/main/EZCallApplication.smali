.class public Lcom/callerid/block/main/EZCallApplication;
.super Landroid/app/Application;
.source ""


# static fields
.field private static g:Lcom/callerid/block/main/EZCallApplication;


# instance fields
.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Lcom/callerid/block/util/AppOpenManager;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/main/EZCallApplication;->b:Z

    const-string v1, "en"

    iput-object v1, p0, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/callerid/block/main/EZCallApplication;->e:Z

    iput-boolean v0, p0, Lcom/callerid/block/main/EZCallApplication;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/main/EZCallApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/EZCallApplication;->d()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/main/EZCallApplication$c;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/EZCallApplication$c;-><init>(Lcom/callerid/block/main/EZCallApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized c()Lcom/callerid/block/main/EZCallApplication;
    .locals 2

    const-class v0, Lcom/callerid/block/main/EZCallApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/callerid/block/main/EZCallApplication;->g:Lcom/callerid/block/main/EZCallApplication;

    if-nez v1, :cond_0

    new-instance v1, Lcom/callerid/block/main/EZCallApplication;

    invoke-direct {v1}, Lcom/callerid/block/main/EZCallApplication;-><init>()V

    sput-object v1, Lcom/callerid/block/main/EZCallApplication;->g:Lcom/callerid/block/main/EZCallApplication;

    :cond_0
    sget-object v1, Lcom/callerid/block/main/EZCallApplication;->g:Lcom/callerid/block/main/EZCallApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/n0;->t1(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/callerid/block/util/t0;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    if-eqz v0, :cond_1c

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "hi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/callerid/block/util/n0;->s1(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string v3, "ru"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "es"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "ar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "fr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const-string v3, "de"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    const-string v3, "pt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    :cond_7
    const-string v3, "it"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_0

    :cond_8
    const-string v3, "vi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    const-string v3, "ur"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_0

    :cond_a
    const-string v3, "bn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_0

    :cond_b
    const-string v3, "ta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_0

    :cond_c
    const-string v3, "te"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_0

    :cond_d
    const-string v3, "kn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_0

    :cond_e
    const-string v3, "gu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    :cond_f
    const-string v3, "mr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_0

    :cond_10
    const-string v3, "ml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_0

    :cond_11
    const-string v3, "pa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_0

    :cond_12
    const-string v3, "iw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_0

    :cond_13
    const-string v3, "cs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cs"

    goto/16 :goto_3

    :cond_14
    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ms"

    goto/16 :goto_3

    :cond_15
    const-string v3, "th"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "th"

    goto :goto_3

    :cond_16
    const-string v3, "tr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tr"

    goto :goto_3

    :cond_17
    const-string v3, "am"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "am"

    goto :goto_3

    :cond_18
    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/t0;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "en_GB"

    :goto_1
    invoke-static {v0, v2}, Lcom/callerid/block/util/n0;->s1(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_19
    const-string v2, "CA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "en_CA"

    goto :goto_1

    :cond_1a
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_2
    invoke-static {v0, v1}, Lcom/callerid/block/util/n0;->s1(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_1b
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_3
    invoke-static {v0, v1}, Lcom/callerid/block/util/n0;->s1(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1d
    :goto_4
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "Application\u5f00\u59cb"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroidx/multidex/a;->k(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/util/n0;->h0()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/callerid/block/util/n0;->G1(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/callerid/block/util/n0;->G1(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/callerid/block/util/n0;->B1()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/appcompat/app/c;->F(I)V

    const v1, 0x7f110124

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_2

    :cond_4
    const v0, 0x7f1100e4

    invoke-static {p0, v0}, Lcom/callerid/block/util/p0;->c(Landroid/content/Context;I)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {p0, v1}, Lcom/callerid/block/util/p0;->c(Landroid/content/Context;I)V

    :goto_3
    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-static {p0}, Lcom/google/android/play/core/missingsplits/b;->a(Landroid/content/Context;)Lcom/google/android/play/core/missingsplits/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/missingsplits/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/t0;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Le/f/a/a/a;->a(Landroid/app/Application;)V

    :cond_1
    sput-object p0, Lcom/callerid/block/main/EZCallApplication;->g:Lcom/callerid/block/main/EZCallApplication;

    invoke-static {p0}, Lcom/android/boom/a;->b(Landroid/content/Context;)V

    new-instance v0, Lcom/callerid/block/main/EZCallApplication$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/EZCallApplication$a;-><init>(Lcom/callerid/block/main/EZCallApplication;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/l;->a(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/b;)V

    new-instance v0, Lcom/callerid/block/util/AppOpenManager;

    invoke-direct {v0, p0}, Lcom/callerid/block/util/AppOpenManager;-><init>(Lcom/callerid/block/main/EZCallApplication;)V

    iput-object v0, p0, Lcom/callerid/block/main/EZCallApplication;->d:Lcom/callerid/block/util/AppOpenManager;

    invoke-virtual {p0}, Lcom/callerid/block/main/EZCallApplication;->e()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/rey/material/app/b;->h(Landroid/content/Context;IILcom/rey/material/app/b$a;)V

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/main/EZCallApplication$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/EZCallApplication$b;-><init>(Lcom/callerid/block/main/EZCallApplication;)V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/callerid/block/main/EZCallApplication;->b()V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "wbb"

    const-string v1, "Application\u7ed3\u675f"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
