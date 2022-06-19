.class public Lcom/allinone/callerid/main/EZCallApplication;
.super Landroid/app/Application;
.source "EZCallApplication.java"


# static fields
.field public static d:Z = false

.field private static e:Lcom/allinone/callerid/main/EZCallApplication;


# instance fields
.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Lcom/allinone/callerid/util/gg/AppOpenManager;

.field public k:Z

.field private l:Lcom/danikula/videocache/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/main/EZCallApplication;->f:Z

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/main/EZCallApplication;->g:Z

    const-string v0, "en"

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/allinone/callerid/main/EZCallApplication;->i:Z

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/main/EZCallApplication;->k:Z

    return-void
.end method

.method static synthetic a()Lcom/allinone/callerid/main/EZCallApplication;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/main/EZCallApplication;->e:Lcom/allinone/callerid/main/EZCallApplication;

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/main/EZCallApplication$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/main/EZCallApplication$b;-><init>(Lcom/allinone/callerid/main/EZCallApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized c()Lcom/allinone/callerid/main/EZCallApplication;
    .locals 2

    const-class v0, Lcom/allinone/callerid/main/EZCallApplication;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/allinone/callerid/main/EZCallApplication;->e:Lcom/allinone/callerid/main/EZCallApplication;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/allinone/callerid/main/EZCallApplication;

    invoke-direct {v1}, Lcom/allinone/callerid/main/EZCallApplication;-><init>()V

    sput-object v1, Lcom/allinone/callerid/main/EZCallApplication;->e:Lcom/allinone/callerid/main/EZCallApplication;

    .line 3
    :cond_0
    sget-object v1, Lcom/allinone/callerid/main/EZCallApplication;->e:Lcom/allinone/callerid/main/EZCallApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d(Landroid/content/Context;)Lcom/danikula/videocache/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/allinone/callerid/main/EZCallApplication;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/main/EZCallApplication;->l:Lcom/danikula/videocache/f;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/allinone/callerid/main/EZCallApplication;->f()Lcom/danikula/videocache/f;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/main/EZCallApplication;->l:Lcom/danikula/videocache/f;

    :cond_0
    return-object v0
.end method

.method private f()Lcom/danikula/videocache/f;
    .locals 3

    .line 1
    new-instance v0, Lcom/danikula/videocache/f$b;

    invoke-direct {v0, p0}, Lcom/danikula/videocache/f$b;-><init>(Landroid/content/Context;)V

    const-wide/32 v1, 0x40000000

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/f$b;->d(J)Lcom/danikula/videocache/f$b;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/f/d;

    invoke-direct {v1}, Lcom/allinone/callerid/d/f/d;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/danikula/videocache/f$b;->c(Lcom/danikula/videocache/q/c;)Lcom/danikula/videocache/f$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/danikula/videocache/f$b;->a()Lcom/danikula/videocache/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    :try_start_0
    invoke-static {p0}, Landroidx/multidex/a;->l(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->y0()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->i0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->S2(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->S2(I)V

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z2()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 6
    :goto_1
    invoke-static {v1}, Landroidx/appcompat/app/c;->F(I)V

    const v1, 0x7f110115

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    .line 7
    invoke-static {p0, v1}, Lcom/allinone/callerid/util/c1;->c(Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    const v0, 0x7f1100ef

    .line 8
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/c1;->c(Landroid/content/Context;I)V

    goto :goto_2

    .line 9
    :cond_5
    invoke-static {p0, v1}, Lcom/allinone/callerid/util/c1;->c(Landroid/content/Context;I)V

    :goto_2
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/play/core/missingsplits/b;->a(Landroid/content/Context;)Lcom/google/android/play/core/missingsplits/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/missingsplits/a;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "tony"

    const-string v1, "Application--onCreate"

    .line 5
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    :try_start_1
    sput-object p0, Lcom/allinone/callerid/main/EZCallApplication;->e:Lcom/allinone/callerid/main/EZCallApplication;

    .line 7
    invoke-static {p0}, Lcom/android/boom/a;->b(Landroid/content/Context;)V

    .line 8
    new-instance v0, Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/gg/AppOpenManager;-><init>(Lcom/allinone/callerid/main/EZCallApplication;)V

    iput-object v0, p0, Lcom/allinone/callerid/main/EZCallApplication;->j:Lcom/allinone/callerid/util/gg/AppOpenManager;

    .line 9
    invoke-virtual {p0}, Lcom/allinone/callerid/main/EZCallApplication;->e()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mmkv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/main/EZCallApplication$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/main/EZCallApplication$a;-><init>(Lcom/allinone/callerid/main/EZCallApplication;)V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->p(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/main/EZCallApplication;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
