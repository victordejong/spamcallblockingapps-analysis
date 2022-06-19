.class public Lcom/liulishuo/filedownloader/download/a;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/a$b;
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private d:Lcom/liulishuo/filedownloader/download/b;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/download/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/liulishuo/filedownloader/download/a;->a:I

    .line 4
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/a;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/a;->e:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/liulishuo/filedownloader/download/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 7
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/download/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/download/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/liulishuo/filedownloader/download/a;-><init>(Lcom/liulishuo/filedownloader/download/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V

    return-void
.end method

.method private a(Lc/d/a/e0/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v1, v1, Lcom/liulishuo/filedownloader/download/b;->a:J

    invoke-interface {p1, v0, v1, v2}, Lc/d/a/e0/b;->c(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->e:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-interface {p1, v1, v0}, Lc/d/a/e0/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/b;->a(Lc/d/a/e0/b;)V

    return-void
.end method

.method private b(Lc/d/a/e0/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/liulishuo/filedownloader/download/a;->a:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "%d add outside header: %s"

    .line 6
    invoke-static {p0, v2, v1}, Lc/d/a/i0/d;->h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-interface {p1, v2, v3}, Lc/d/a/e0/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(Lc/d/a/e0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    const-string v1, "User-Agent"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lc/d/a/i0/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lc/d/a/e0/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method c()Lc/d/a/e0/b;
    .locals 6

    .line 1
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/c;->a(Ljava/lang/String;)Lc/d/a/e0/b;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/a;->b(Lc/d/a/e0/b;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/a;->a(Lc/d/a/e0/b;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/a;->d(Lc/d/a/e0/b;)V

    .line 5
    invoke-interface {v0}, Lc/d/a/e0/b;->g()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->f:Ljava/util/Map;

    .line 6
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    .line 7
    iget v5, p0, Lcom/liulishuo/filedownloader/download/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/a;->f:Ljava/util/Map;

    aput-object v5, v1, v2

    const-string v5, "<---- %s request header %s"

    invoke-static {p0, v5, v1}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-interface {v0}, Lc/d/a/e0/b;->execute()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    .line 10
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/a;->f:Ljava/util/Map;

    invoke-static {v5, v0, v1}, Lc/d/a/e0/d;->c(Ljava/util/Map;Lc/d/a/e0/b;Ljava/util/List;)Lc/d/a/e0/b;

    move-result-object v0

    .line 11
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    .line 12
    iget v4, p0, Lcom/liulishuo/filedownloader/download/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 13
    invoke-interface {v0}, Lc/d/a/e0/b;->b()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "----> %s response header %s"

    .line 14
    invoke-static {p0, v2, v1}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/liulishuo/filedownloader/download/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->f:Ljava/util/Map;

    return-object v0
.end method

.method h()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method i(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v1, v0, Lcom/liulishuo/filedownloader/download/b;->b:J

    const/4 v8, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "no data download, no need to update"

    .line 2
    invoke-static {p0, v1, v0}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-wide v3, v0, Lcom/liulishuo/filedownloader/download/b;->d:J

    sub-long v1, p1, v1

    sub-long v6, v3, v1

    .line 4
    iget-wide v1, v0, Lcom/liulishuo/filedownloader/download/b;->a:J

    iget-wide v4, v0, Lcom/liulishuo/filedownloader/download/b;->c:J

    move-wide v0, v1

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/liulishuo/filedownloader/download/b$b;->b(JJJJ)Lcom/liulishuo/filedownloader/download/b;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    .line 5
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v8

    const-string v0, "after update profile:%s"

    .line 6
    invoke-static {p0, v0, v1}, Lc/d/a/i0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
