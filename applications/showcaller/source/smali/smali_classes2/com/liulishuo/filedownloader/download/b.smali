.class public Lcom/liulishuo/filedownloader/download/b;
.super Ljava/lang/Object;
.source "ConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/b$b;
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:J

.field final d:J

.field private final e:Z

.field private final f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->a:J

    .line 6
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    .line 7
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    .line 8
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->d:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->e:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->f:Z

    return-void
.end method

.method private constructor <init>(JJJJ)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJZ)V

    return-void
.end method

.method synthetic constructor <init>(JJJJLcom/liulishuo/filedownloader/download/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJ)V

    return-void
.end method

.method private constructor <init>(JJJJZ)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    :cond_0
    if-nez p9, :cond_2

    .line 13
    :cond_1
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/b;->a:J

    .line 14
    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    .line 15
    iput-wide p5, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    .line 16
    iput-wide p7, p0, Lcom/liulishuo/filedownloader/download/b;->d:J

    .line 17
    iput-boolean p9, p0, Lcom/liulishuo/filedownloader/download/b;->e:Z

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/download/b;->f:Z

    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method synthetic constructor <init>(JJJJZLcom/liulishuo/filedownloader/download/b$a;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/liulishuo/filedownloader/download/b;-><init>(JJJJZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/download/b$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/e0/b;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/b;->f:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lc/d/a/i0/e;->a()Lc/d/a/i0/e;

    move-result-object v0

    iget-boolean v0, v0, Lc/d/a/i0/e;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "HEAD"

    .line 3
    invoke-interface {p1, v0}, Lc/d/a/e0/b;->f(Ljava/lang/String;)Z

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    new-array v0, v4, [Ljava/lang/Object;

    .line 5
    iget-wide v1, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "bytes=%d-"

    invoke-static {v1, v0}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    iget-wide v1, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    iget-wide v1, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "bytes=%d-%d"

    invoke-static {v1, v0}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Range"

    .line 8
    invoke-interface {p1, v1, v0}, Lc/d/a/e0/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/liulishuo/filedownloader/download/b;->a:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/liulishuo/filedownloader/download/b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/liulishuo/filedownloader/download/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "range[%d, %d) current offset[%d]"

    .line 3
    invoke-static {v1, v0}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
