.class public Lcom/liulishuo/filedownloader/services/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/services/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Le/e/a/h0/c$a;
    .locals 1

    new-instance v0, Le/e/a/d0/a;

    invoke-direct {v0}, Le/e/a/d0/a;-><init>()V

    return-object v0
.end method

.method private e()Le/e/a/h0/c$b;
    .locals 1

    new-instance v0, Le/e/a/d0/c$b;

    invoke-direct {v0}, Le/e/a/d0/c$b;-><init>()V

    return-object v0
.end method

.method private f()Le/e/a/e0/a;
    .locals 1

    new-instance v0, Le/e/a/e0/c;

    invoke-direct {v0}, Le/e/a/e0/c;-><init>()V

    return-object v0
.end method

.method private g()Lcom/liulishuo/filedownloader/services/i;
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/services/i$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/i$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/i$b;->b(Z)Lcom/liulishuo/filedownloader/services/i$b;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/i$b;->a()Lcom/liulishuo/filedownloader/services/i;

    move-result-object v0

    return-object v0
.end method

.method private h()Le/e/a/h0/c$d;
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/services/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/b;-><init>()V

    return-object v0
.end method

.method private i()Le/e/a/h0/c$e;
    .locals 1

    new-instance v0, Le/e/a/g0/b$a;

    invoke-direct {v0}, Le/e/a/g0/b$a;-><init>()V

    return-object v0
.end method

.method private m()I
    .locals 1

    invoke-static {}, Le/e/a/h0/e;->a()Le/e/a/h0/e;

    move-result-object v0

    iget v0, v0, Le/e/a/h0/e;->e:I

    return v0
.end method


# virtual methods
.method public a()Le/e/a/h0/c$a;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->d()Le/e/a/h0/c$a;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->e:Le/e/a/h0/c$a;

    if-eqz v0, :cond_2

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize connection count adapter: %s"

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->d()Le/e/a/h0/c$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Le/e/a/h0/c$b;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->e()Le/e/a/h0/c$b;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->d:Le/e/a/h0/c$b;

    if-eqz v0, :cond_2

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize connection creator: %s"

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->e()Le/e/a/h0/c$b;

    move-result-object v0

    return-object v0
.end method

.method public c()Le/e/a/e0/a;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->a:Le/e/a/h0/c$c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Le/e/a/h0/c$c;->a()Le/e/a/e0/a;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize database: %s"

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->f()Le/e/a/e0/a;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->f()Le/e/a/e0/a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/liulishuo/filedownloader/services/i;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->g()Lcom/liulishuo/filedownloader/services/i;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->g:Lcom/liulishuo/filedownloader/services/i;

    if-eqz v0, :cond_2

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize foreground service config: %s"

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->g()Lcom/liulishuo/filedownloader/services/i;

    move-result-object v0

    return-object v0
.end method

.method public k()Le/e/a/h0/c$d;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->h()Le/e/a/h0/c$d;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->f:Le/e/a/h0/c$d;

    if-eqz v0, :cond_2

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize id generator: %s"

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->h()Le/e/a/h0/c$d;

    move-result-object v0

    return-object v0
.end method

.method public l()Le/e/a/h0/c$e;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->i()Le/e/a/h0/c$e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->c:Le/e/a/h0/c$e;

    if-eqz v0, :cond_2

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize output stream: %s"

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->i()Le/e/a/h0/c$e;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->m()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d"

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Le/e/a/h0/e;->b(I)I

    move-result v0

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->m()I

    move-result v0

    return v0
.end method
