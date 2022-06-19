.class public Lcom/callerid/block/util/y;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/callerid/block/util/y;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/y$c;

    invoke-direct {v1}, Lcom/callerid/block/util/y$c;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->c(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return p1
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/y$e;

    invoke-direct {v1}, Lcom/callerid/block/util/y$e;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return p1
.end method

.method public static c(Ljava/lang/String;J)J
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/y$g;

    invoke-direct {v1}, Lcom/callerid/block/util/y$g;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-wide p1
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mmkv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/y$a;

    invoke-direct {v1}, Lcom/callerid/block/util/y$a;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object p1
.end method

.method public static f(Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/y$d;

    invoke-direct {v1}, Lcom/callerid/block/util/y$d;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static g(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/y$f;

    invoke-direct {v1}, Lcom/callerid/block/util/y$f;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static h(Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/y$h;

    invoke-direct {v1}, Lcom/callerid/block/util/y$h;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->j(Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callerid/block/util/y;->a:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/util/y$b;

    invoke-direct {v1}, Lcom/callerid/block/util/y$b;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->o(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$b;)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallerIdMain"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
