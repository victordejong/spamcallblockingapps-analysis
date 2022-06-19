.class public Le/e/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/w;
.implements Le/e/a/w$b;
.implements Le/e/a/w$a;
.implements Le/e/a/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/d$a;
    }
.end annotation


# instance fields
.field private a:Le/e/a/s;

.field private final b:Ljava/lang/Object;

.field private final c:Le/e/a/d$a;

.field private volatile d:B

.field private e:Ljava/lang/Throwable;

.field private final f:Le/e/a/r;

.field private g:J

.field private h:J

.field private i:I


# direct methods
.method constructor <init>(Le/e/a/d$a;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Le/e/a/d;->d:B

    const/4 v0, 0x0

    iput-object v0, p0, Le/e/a/d;->e:Ljava/lang/Throwable;

    iput-object p2, p0, Le/e/a/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Le/e/a/d;->c:Le/e/a/d$a;

    new-instance p2, Le/e/a/b;

    invoke-direct {p2}, Le/e/a/b;-><init>()V

    iput-object p2, p0, Le/e/a/d;->f:Le/e/a/r;

    new-instance p2, Le/e/a/k;

    invoke-interface {p1}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Le/e/a/k;-><init>(Le/e/a/a$b;Le/e/a/a$d;)V

    iput-object p2, p0, Le/e/a/d;->a:Le/e/a/s;

    return-void
.end method

.method private q()I
    .locals 1

    iget-object v0, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a;->F()I

    move-result v0

    return v0
.end method

.method private r()V
    .locals 5

    iget-object v0, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-interface {v0}, Le/e/a/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/h0/f;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/e/a/a;->l(Ljava/lang/String;)Le/e/a/a;

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Le/e/a/a;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "save Path is null to %s"

    invoke-static {p0, v4, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Le/e/a/a;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Le/e/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Le/e/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/h0/f;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Create parent directory failed, please make sure you have permission to create file or directory on the path: %s"

    invoke-static {v1, v3}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v1, Ljava/security/InvalidParameterException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Le/e/a/a;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "the provided mPath[%s] is invalid, can\'t find its directory"

    invoke-static {v0, v3}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private s(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8

    iget-object v0, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result v1

    iput-byte v1, p0, Le/e/a/d;->d:B

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->o()Z

    const/4 v2, -0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_a

    const/4 v2, -0x3

    if-eq v1, v2, :cond_8

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Le/e/a/d;->a:Le/e/a/s;

    invoke-interface {v0, p1}, Le/e/a/s;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->g:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->n()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Le/e/a/d;->e:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()I

    move-result v0

    iput v0, p0, Le/e/a/d;->i:I

    iget-object v0, p0, Le/e/a/d;->f:Le/e/a/r;

    invoke-interface {v0}, Le/e/a/r;->d()V

    iget-object v0, p0, Le/e/a/d;->a:Le/e/a/s;

    invoke-interface {v0, p1}, Le/e/a/s;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->g:J

    iget-object v0, p0, Le/e/a/d;->f:Le/e/a/r;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/e/a/r;->c(J)V

    iget-object v0, p0, Le/e/a/d;->a:Le/e/a/s;

    invoke-interface {v0, p1}, Le/e/a/s;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v1

    iput-wide v1, p0, Le/e/a/d;->h:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->p()Z

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Le/e/a/a;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Le/e/a/a;->getFilename()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    const-string v0, "already has mFilename[%s], but assign mFilename[%s] again"

    invoke-static {p0, v0, v2}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0, v1}, Le/e/a/d$a;->j(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Le/e/a/d;->f:Le/e/a/r;

    iget-wide v1, p0, Le/e/a/d;->g:J

    invoke-interface {v0, v1, v2}, Le/e/a/r;->b(J)V

    iget-object v0, p0, Le/e/a/d;->a:Le/e/a/s;

    invoke-interface {v0, p1}, Le/e/a/s;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->g:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->h:J

    iget-object v0, p0, Le/e/a/d;->a:Le/e/a/s;

    :goto_0
    invoke-interface {v0, p1}, Le/e/a/s;->g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->n()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Le/e/a/d;->e:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->g:J

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->q()Z

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->g:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->h:J

    :cond_9
    :goto_1
    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v0

    iget-object v1, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v1}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Le/e/a/h;->h(Le/e/a/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_3

    :cond_a
    iget-object v1, p0, Le/e/a/d;->f:Le/e/a/r;

    invoke-interface {v1}, Le/e/a/r;->d()V

    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v1

    invoke-interface {v0}, Le/e/a/a;->F()I

    move-result v2

    invoke-virtual {v1, v2}, Le/e/a/h;->c(I)I

    move-result v1

    if-gt v1, v5, :cond_b

    invoke-interface {v0}, Le/e/a/a;->H()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v2

    invoke-interface {v0}, Le/e/a/a;->x()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Le/e/a/a;->q()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Le/e/a/h0/f;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Le/e/a/h;->c(I)I

    move-result v2

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v1, v2

    if-gt v1, v5, :cond_9

    invoke-static {}, Le/e/a/m;->b()Le/e/a/m;

    move-result-object v1

    invoke-interface {v0}, Le/e/a/a;->F()I

    move-result v2

    invoke-virtual {v1, v2}, Le/e/a/m;->f0(I)B

    move-result v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Le/e/a/a;->F()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "warn, but no mListener to receive, switch to pending %d %d"

    invoke-static {p0, v0, v2}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-byte v5, p0, Le/e/a/d;->d:B

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->h:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Le/e/a/d;->g:J

    iget-object v2, p0, Le/e/a/d;->f:Le/e/a/r;

    invoke-interface {v2, v0, v1}, Le/e/a/r;->b(J)V

    iget-object v0, p0, Le/e/a/d;->a:Le/e/a/s;

    check-cast p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot$b;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$b;->a()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p1

    goto/16 :goto_0

    :goto_3
    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 3

    iget-object v0, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result v0

    const/4 v2, -0x4

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Le/e/a/d;->e()B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Le/e/a/d;->s(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public b()V
    .locals 4

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Le/e/a/d;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-byte v3, p0, Le/e/a/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "free the task %d, when the status is %d"

    invoke-static {p0, v2, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-byte v1, p0, Le/e/a/d;->d:B

    return-void
.end method

.method public c()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Le/e/a/d;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Le/e/a/d;->i:I

    return v0
.end method

.method public e()B
    .locals 1

    iget-byte v0, p0, Le/e/a/d;->d:B

    return v0
.end method

.method public f()Le/e/a/s;
    .locals 1

    iget-object v0, p0, Le/e/a/d;->a:Le/e/a/s;

    return-object v0
.end method

.method public g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 1

    iget-object v0, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->d(Le/e/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Le/e/a/d;->s(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 p1, 0x1

    return p1
.end method

.method public h()V
    .locals 5

    iget-object v0, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-static {}, Le/e/a/l;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Le/e/a/l;->a()Le/e/a/l$a;

    move-result-object v1

    invoke-interface {v1, v0}, Le/e/a/l$a;->d(Le/e/a/a;)V

    :cond_0
    sget-boolean v1, Le/e/a/h0/d;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0}, Le/e/a/d;->e()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "filedownloader:lifecycle:over %s by %d "

    invoke-static {p0, v3, v1}, Le/e/a/h0/d;->h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Le/e/a/d;->f:Le/e/a/r;

    iget-wide v3, p0, Le/e/a/d;->g:J

    invoke-interface {v1, v3, v4}, Le/e/a/r;->a(J)V

    iget-object v1, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v1}, Le/e/a/d$a;->m()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v1}, Le/e/a/d$a;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/e/a/a$a;

    invoke-interface {v4, v0}, Le/e/a/a$a;->a(Le/e/a/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Le/e/a/q;->d()Le/e/a/q;

    move-result-object v0

    invoke-virtual {v0}, Le/e/a/q;->e()Le/e/a/u;

    move-result-object v0

    iget-object v1, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v1}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v1

    invoke-interface {v0, v1}, Le/e/a/u;->c(Le/e/a/a$b;)V

    return-void
.end method

.method public i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 3

    invoke-virtual {p0}, Le/e/a/d;->e()B

    move-result v0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result v1

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/model/b;->b(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean p1, Le/e/a/h0/d;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget-byte v2, p0, Le/e/a/d;->d:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0}, Le/e/a/d;->e()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Le/e/a/d;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "can\'t update mStatus change by keep ahead, %d, but the current mStatus is %d, %d"

    invoke-static {p0, v1, p1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Le/e/a/d;->s(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return v1
.end method

.method public j()V
    .locals 8

    iget-object v0, p0, Le/e/a/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-byte v1, p0, Le/e/a/d;->d:B

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v1, "High concurrent cause, this task %d will not input to launch pool, because of the status isn\'t idle : %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Le/e/a/d;->q()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-byte v4, p0, Le/e/a/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    const/16 v1, 0xa

    iput-byte v1, p0, Le/e/a/d;->d:B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v1

    invoke-static {}, Le/e/a/l;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Le/e/a/l;->a()Le/e/a/l$a;

    move-result-object v5

    invoke-interface {v5, v1}, Le/e/a/l$a;->c(Le/e/a/a;)V

    :cond_1
    sget-boolean v5, Le/e/a/h0/d;->a:Z

    if-eqz v5, :cond_2

    const-string v5, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Le/e/a/a;->x()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v1}, Le/e/a/a;->g()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v1}, Le/e/a/a;->r()Le/e/a/i;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-interface {v1}, Le/e/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {p0, v5, v6}, Le/e/a/h0/d;->h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :try_start_1
    invoke-direct {p0}, Le/e/a/d;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Le/e/a/h;->a(Le/e/a/a$b;)V

    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v2

    invoke-virtual {p0, v1}, Le/e/a/d;->n(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Le/e/a/h;->h(Le/e/a/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Le/e/a/p;->a()Le/e/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/e/a/p;->b(Le/e/a/w$b;)V

    :cond_3
    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "the task[%d] has been into the launch pool."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Le/e/a/d;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Le/e/a/h0/d;->h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Le/e/a/d;->g:J

    return-wide v0
.end method

.method public l()V
    .locals 2

    invoke-static {}, Le/e/a/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/e/a/d;->e()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {}, Le/e/a/l;->a()Le/e/a/l$a;

    move-result-object v0

    iget-object v1, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v1}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v1

    invoke-interface {v1}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/e/a/l$a;->b(Le/e/a/a;)V

    :cond_0
    return-void
.end method

.method public m(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 5

    invoke-virtual {p0}, Le/e/a/d;->e()B

    move-result v0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-ne v4, v0, :cond_1

    invoke-static {v1}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean p1, Le/e/a/h0/d;->a:Z

    if-eqz p1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Le/e/a/d;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "High concurrent cause, callback pending, but has already be paused %d"

    invoke-static {p0, v0, p1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v3

    :cond_1
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/model/b;->c(II)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean p1, Le/e/a/h0/d;->a:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget-byte v0, p0, Le/e/a/d;->d:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {p0}, Le/e/a/d;->e()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p1, v3

    const/4 v0, 0x2

    invoke-direct {p0}, Le/e/a/d;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "can\'t update mStatus change by keep flow, %d, but the current mStatus is %d, %d"

    invoke-static {p0, v0, p1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2

    :cond_3
    invoke-direct {p0, p1}, Le/e/a/d;->s(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return v3
.end method

.method public n(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 3

    const/4 v0, -0x1

    iput-byte v0, p0, Le/e/a/d;->d:B

    iput-object p1, p0, Le/e/a/d;->e:Ljava/lang/Throwable;

    invoke-direct {p0}, Le/e/a/d;->q()I

    move-result v0

    invoke-virtual {p0}, Le/e/a/d;->k()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/liulishuo/filedownloader/message/c;->b(IJLjava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p1

    return-object p1
.end method

.method public o()V
    .locals 3

    invoke-static {}, Le/e/a/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/e/a/l;->a()Le/e/a/l$a;

    move-result-object v0

    iget-object v1, p0, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v1}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v1

    invoke-interface {v1}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/e/a/l$a;->a(Le/e/a/a;)V

    :cond_0
    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Le/e/a/d;->e()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "filedownloader:lifecycle:start %s by %d "

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Le/e/a/d;->h:J

    return-wide v0
.end method

.method public start()V
    .locals 18

    move-object/from16 v1, p0

    iget-byte v0, v1, Le/e/a/d;->d:B

    const/4 v2, 0x2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_0

    const-string v0, "High concurrent cause, this task %d will not start, because the of status isn\'t toLaunchPool: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Le/e/a/d;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-byte v3, v1, Le/e/a/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, v1, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v0}, Le/e/a/d$a;->P()Le/e/a/a$b;

    move-result-object v6

    invoke-interface {v6}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-static {}, Le/e/a/q;->d()Le/e/a/q;

    move-result-object v7

    invoke-virtual {v7}, Le/e/a/q;->e()Le/e/a/u;

    move-result-object v7

    :try_start_0
    invoke-interface {v7, v6}, Le/e/a/u;->a(Le/e/a/a$b;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-void

    :cond_1
    iget-object v8, v1, Le/e/a/d;->b:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-byte v9, v1, Le/e/a/d;->d:B

    if-eq v9, v3, :cond_2

    const-string v0, "High concurrent cause, this task %d will not start, the status can\'t assign to toFileDownloadService, because the status isn\'t toLaunchPool: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Le/e/a/d;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-byte v3, v1, Le/e/a/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8

    return-void

    :cond_2
    const/16 v2, 0xb

    iput-byte v2, v1, Le/e/a/d;->d:B

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v2

    invoke-virtual {v2, v6}, Le/e/a/h;->a(Le/e/a/a$b;)V

    invoke-interface {v0}, Le/e/a/a;->F()I

    move-result v2

    invoke-interface {v0}, Le/e/a/a;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Le/e/a/a;->C()Z

    move-result v8

    invoke-static {v2, v3, v8, v5}, Le/e/a/h0/c;->d(ILjava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Le/e/a/m;->b()Le/e/a/m;

    move-result-object v8

    invoke-interface {v0}, Le/e/a/a;->x()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Le/e/a/a;->g()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Le/e/a/a;->H()Z

    move-result v11

    invoke-interface {v0}, Le/e/a/a;->y()I

    move-result v12

    invoke-interface {v0}, Le/e/a/a;->B()I

    move-result v13

    invoke-interface {v0}, Le/e/a/a;->i()I

    move-result v14

    invoke-interface {v0}, Le/e/a/a;->C()Z

    move-result v15

    iget-object v2, v1, Le/e/a/d;->c:Le/e/a/d$a;

    invoke-interface {v2}, Le/e/a/d$a;->D()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    move-result-object v16

    invoke-interface {v0}, Le/e/a/a;->K()Z

    move-result v17

    invoke-virtual/range {v8 .. v17}, Le/e/a/m;->i0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v0

    iget-byte v2, v1, Le/e/a/d;->d:B

    const/4 v3, -0x2

    if-ne v2, v3, :cond_5

    const-string v2, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Le/e/a/d;->q()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    invoke-static {}, Le/e/a/m;->b()Le/e/a/m;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Le/e/a/d;->q()I

    move-result v2

    invoke-virtual {v0, v2}, Le/e/a/m;->v0(I)Z

    :cond_4
    return-void

    :cond_5
    if-nez v0, :cond_7

    invoke-interface {v7, v6}, Le/e/a/u;->a(Le/e/a/a$b;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Le/e/a/d;->n(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v2

    invoke-virtual {v2, v6}, Le/e/a/h;->g(Le/e/a/a$b;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7, v6}, Le/e/a/u;->c(Le/e/a/a$b;)V

    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v2

    invoke-virtual {v2, v6}, Le/e/a/h;->a(Le/e/a/a$b;)V

    :cond_6
    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Le/e/a/h;->h(Le/e/a/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto :goto_0

    :cond_7
    invoke-interface {v7, v6}, Le/e/a/u;->c(Le/e/a/a$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v2

    invoke-virtual {v1, v0}, Le/e/a/d;->n(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Le/e/a/h;->h(Le/e/a/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    :cond_8
    :goto_0
    return-void
.end method
