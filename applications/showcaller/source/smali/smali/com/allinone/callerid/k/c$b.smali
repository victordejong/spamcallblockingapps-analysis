.class Lcom/allinone/callerid/k/c$b;
.super Lcom/hzy/lib7z/ExtractCallback;
.source "OfflineDbDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/k/c;->j(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/k/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/k/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-direct {p0}, Lcom/hzy/lib7z/ExtractCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89e3\u538b\u5931\u8d25\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkupdate"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "un_7zip_filed"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {p2}, Lcom/allinone/callerid/k/c;->b(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {p1}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {p1}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/l/a/d;->b()V

    :cond_1
    return-void
.end method

.method public onProgress(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v0, p1}, Lcom/allinone/callerid/k/c;->f(Lcom/allinone/callerid/k/c;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 3
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
    .locals 7

    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    .line 1
    invoke-super {p0}, Lcom/hzy/lib7z/ExtractCallback;->onSucceed()V

    .line 2
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v2, "checkupdate"

    if-eqz v1, :cond_0

    const-string v1, "\u89e3\u538b\u5b8c\u6210... "

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v4}, Lcom/allinone/callerid/k/c;->c(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v4}, Lcom/allinone/callerid/k/c;->e(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v5}, Lcom/allinone/callerid/k/c;->c(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/offlinedata.sqlite"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-wide/16 v3, 0x3e8

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 8
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v3}, Lcom/allinone/callerid/k/c;->b(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 11
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/h1;->k0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {v2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/f0;->j(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v3, "download_offline_db_ok_new"

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/f0;->n(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/a1;->W()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 17
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/f0;->k(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v3, "download_offline_db_ok_first_new"

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 19
    :cond_2
    invoke-static {v2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->A1(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_3
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/allinone/callerid/k/c$b$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/k/c$b$a;-><init>(Lcom/allinone/callerid/k/c$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
