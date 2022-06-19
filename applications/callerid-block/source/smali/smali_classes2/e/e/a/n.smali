.class Le/e/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/t;
.implements Lcom/liulishuo/filedownloader/services/e$a;


# static fields
.field private static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/liulishuo/filedownloader/services/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;

    sput-object v0, Le/e/a/n;->d:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/e/a/n;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/e/a/n;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/services/e;)V
    .locals 3

    iput-object p1, p0, Le/e/a/n;->c:Lcom/liulishuo/filedownloader/services/e;

    iget-object p1, p0, Le/e/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Le/e/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-static {}, Le/e/a/f;->e()Le/e/a/f;

    move-result-object p1

    new-instance v0, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v1, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->b:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v2, Le/e/a/n;->d:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/liulishuo/filedownloader/event/a;->b(Lcom/liulishuo/filedownloader/event/b;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Le/e/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/e/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p2, Landroid/content/Intent;

    sget-object v0, Le/e/a/n;->d:Ljava/lang/Class;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Le/e/a/h0/f;->P(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Le/e/a/n;->a:Z

    const-string v1, "is_foreground"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v0, p0, Le/e/a/n;->a:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start foreground service"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    :goto_0
    return-void
.end method

.method public f0(I)B
    .locals 1

    invoke-virtual {p0}, Le/e/a/n;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Le/e/a/h0/a;->a(I)B

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Le/e/a/n;->c:Lcom/liulishuo/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/e;->f0(I)B

    move-result p1

    return p1
.end method

.method public i0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 11

    invoke-virtual {p0}, Le/e/a/n;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Le/e/a/h0/a;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p0

    iget-object v1, v0, Le/e/a/n;->c:Lcom/liulishuo/filedownloader/services/e;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/liulishuo/filedownloader/services/e;->i0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    const/4 v1, 0x1

    return v1
.end method

.method public n0(Z)V
    .locals 1

    invoke-virtual {p0}, Le/e/a/n;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Le/e/a/h0/a;->e(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/n;->c:Lcom/liulishuo/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/e;->n0(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/e/a/n;->a:Z

    return-void
.end method

.method public v0(I)Z
    .locals 1

    invoke-virtual {p0}, Le/e/a/n;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Le/e/a/h0/a;->c(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Le/e/a/n;->c:Lcom/liulishuo/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/e;->v0(I)Z

    move-result p1

    return p1
.end method

.method public w0()Z
    .locals 1

    iget-object v0, p0, Le/e/a/n;->c:Lcom/liulishuo/filedownloader/services/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x0()Z
    .locals 1

    iget-boolean v0, p0, Le/e/a/n;->a:Z

    return v0
.end method

.method public y0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le/e/a/n;->b(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
