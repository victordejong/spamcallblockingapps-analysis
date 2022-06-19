.class Lcom/allinone/callerid/k/c$a;
.super Lc/d/a/i;
.source "OfflineDbDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/k/c;
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
    iput-object p1, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-direct {p0}, Lc/d/a/i;-><init>()V

    return-void
.end method

.method private synthetic l()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v0}, Lcom/allinone/callerid/k/c;->b(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v2}, Lcom/allinone/callerid/k/c;->c(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/k/c;->d(Lcom/allinone/callerid/k/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkupdate"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v1}, Lcom/allinone/callerid/k/c;->b(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v0}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v0}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/allinone/callerid/l/a/d;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic n()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v0}, Lcom/allinone/callerid/k/c;->b(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v2}, Lcom/allinone/callerid/k/c;->c(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/k/c;->d(Lcom/allinone/callerid/k/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkupdate"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v1}, Lcom/allinone/callerid/k/c;->b(Lcom/allinone/callerid/k/c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected b(Lc/d/a/a;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210\uff1a\u5f00\u59cb\u89e3\u538b\u6570\u636e\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "checkupdate"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "download_offline_db_complete"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/allinone/callerid/k/b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/k/b;-><init>(Lcom/allinone/callerid/k/c$a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected d(Lc/d/a/a;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u5931\u8d25\u539f\u56e0\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "checkupdate"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Requested Range Not Satisfiable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/allinone/callerid/k/a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/k/a;-><init>(Lcom/allinone/callerid/k/c$a;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    const-wide/16 p1, 0x0

    .line 6
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/a1;->L1(J)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {p1}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/k/c$a;->a:Lcom/allinone/callerid/k/c;

    invoke-static {p1}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/l/a/d;->b()V

    :cond_2
    return-void
.end method

.method protected f(Lc/d/a/a;II)V
    .locals 0

    return-void
.end method

.method protected g(Lc/d/a/a;II)V
    .locals 0

    return-void
.end method

.method protected h(Lc/d/a/a;II)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lc/d/a/a;->v()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lc/d/a/a;->f()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u8fdb\u5ea6\uff1a "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/   \u8fdb\u5ea6\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkupdate"

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected k(Lc/d/a/a;)V
    .locals 0

    return-void
.end method

.method public synthetic m()V
    .locals 0

    invoke-direct {p0}, Lcom/allinone/callerid/k/c$a;->l()V

    return-void
.end method

.method public synthetic o()V
    .locals 0

    invoke-direct {p0}, Lcom/allinone/callerid/k/c$a;->n()V

    return-void
.end method
