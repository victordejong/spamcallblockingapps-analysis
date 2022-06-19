.class Lcom/callerid/block/j/d$b;
.super Lcom/hzy/lib7z/ExtractCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/j/d;->l(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/j/d;


# direct methods
.method constructor <init>(Lcom/callerid/block/j/d;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-direct {p0}, Lcom/hzy/lib7z/ExtractCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89e3\u538b\u5931\u8d25\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkupdate"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/util/k;->t()V

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {p2}, Lcom/callerid/block/j/d;->a(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {p1}, Lcom/callerid/block/j/d;->d(Lcom/callerid/block/j/d;)Lcom/callerid/block/k/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {p1}, Lcom/callerid/block/j/d;->d(Lcom/callerid/block/j/d;)Lcom/callerid/block/k/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/callerid/block/k/a/b;->a()V

    :cond_1
    return-void
.end method

.method public onProgress(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {v0, p1}, Lcom/callerid/block/j/d;->f(Lcom/callerid/block/j/d;Ljava/lang/String;)Ljava/lang/String;

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89e3\u538b\u4e2d... "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkupdate"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSucceed()V
    .locals 6

    invoke-super {p0}, Lcom/hzy/lib7z/ExtractCallback;->onSucceed()V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    const-string v1, "checkupdate"

    if-eqz v0, :cond_0

    const-string v0, "\u89e3\u538b\u5b8c\u6210... "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {v3}, Lcom/callerid/block/j/d;->b(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {v3}, Lcom/callerid/block/j/d;->e(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {v4}, Lcom/callerid/block/j/d;->b(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/offlinedatavest.sqlite"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {v2}, Lcom/callerid/block/j/d;->a(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/z;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/z;->e(Landroid/content/Context;)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {v2}, Lcom/callerid/block/j/d;->g(Lcom/callerid/block/j/d;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {v0}, Lcom/callerid/block/j/d;->h(Lcom/callerid/block/j/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->r(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/callerid/block/j/d$b;->a:Lcom/callerid/block/j/d;

    invoke-static {v0}, Lcom/callerid/block/j/d;->h(Lcom/callerid/block/j/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/callerid/block/util/n0;->E0(Landroid/content/Context;Z)V

    :cond_2
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/callerid/block/util/n0;->N0(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/n0;->z0(Landroid/content/Context;J)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/n0;->B0(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/callerid/block/j/d$b$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/j/d$b$a;-><init>(Lcom/callerid/block/j/d$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
