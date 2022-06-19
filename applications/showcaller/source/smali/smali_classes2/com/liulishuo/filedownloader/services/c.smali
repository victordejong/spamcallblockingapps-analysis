.class public Lcom/liulishuo/filedownloader/services/c;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Lc/d/a/i0/c$a;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/e0/a;

    invoke-direct {v0}, Lc/d/a/e0/a;-><init>()V

    return-object v0
.end method

.method private e()Lc/d/a/i0/c$b;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/e0/c$b;

    invoke-direct {v0}, Lc/d/a/e0/c$b;-><init>()V

    return-object v0
.end method

.method private f()Lc/d/a/f0/a;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/f0/c;

    invoke-direct {v0}, Lc/d/a/f0/c;-><init>()V

    return-object v0
.end method

.method private g()Lcom/liulishuo/filedownloader/services/i;
    .locals 2

    .line 1
    new-instance v0, Lcom/liulishuo/filedownloader/services/i$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/i$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/i$b;->b(Z)Lcom/liulishuo/filedownloader/services/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/i$b;->a()Lcom/liulishuo/filedownloader/services/i;

    move-result-object v0

    return-object v0
.end method

.method private h()Lc/d/a/i0/c$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/liulishuo/filedownloader/services/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/b;-><init>()V

    return-object v0
.end method

.method private i()Lc/d/a/i0/c$d;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/h0/b$a;

    invoke-direct {v0}, Lc/d/a/h0/b$a;-><init>()V

    return-object v0
.end method

.method private m()I
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/i0/e;->a()Lc/d/a/i0/e;

    move-result-object v0

    iget v0, v0, Lc/d/a/i0/e;->e:I

    return v0
.end method


# virtual methods
.method public a()Lc/d/a/i0/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->d()Lc/d/a/i0/c$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public b()Lc/d/a/i0/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->e()Lc/d/a/i0/c$b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public c()Lc/d/a/f0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->f()Lc/d/a/f0/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public j()Lcom/liulishuo/filedownloader/services/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->g()Lcom/liulishuo/filedownloader/services/i;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public k()Lc/d/a/i0/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->h()Lc/d/a/i0/c$c;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public l()Lc/d/a/i0/c$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->i()Lc/d/a/i0/c$d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->m()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
