.class public Lc/d/a/c;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lc/d/a/a;
.implements Lc/d/a/a$b;
.implements Lc/d/a/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c$b;
    }
.end annotation


# instance fields
.field private final a:Lc/d/a/x;

.field private final b:Lc/d/a/x$a;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private j:Lc/d/a/i;

.field private k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field volatile s:I

.field private t:Z

.field private final u:Ljava/lang/Object;

.field private final v:Ljava/lang/Object;

.field private volatile w:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/d/a/c;->m:I

    .line 3
    iput-boolean v0, p0, Lc/d/a/c;->n:Z

    .line 4
    iput-boolean v0, p0, Lc/d/a/c;->o:Z

    const/16 v1, 0x64

    .line 5
    iput v1, p0, Lc/d/a/c;->p:I

    const/16 v1, 0xa

    .line 6
    iput v1, p0, Lc/d/a/c;->q:I

    .line 7
    iput-boolean v0, p0, Lc/d/a/c;->r:Z

    .line 8
    iput v0, p0, Lc/d/a/c;->s:I

    .line 9
    iput-boolean v0, p0, Lc/d/a/c;->t:Z

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lc/d/a/c;->v:Ljava/lang/Object;

    .line 11
    iput-boolean v0, p0, Lc/d/a/c;->w:Z

    .line 12
    iput-object p1, p0, Lc/d/a/c;->e:Ljava/lang/String;

    .line 13
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/c;->u:Ljava/lang/Object;

    .line 14
    new-instance v0, Lc/d/a/d;

    invoke-direct {v0, p0, p1}, Lc/d/a/d;-><init>(Lc/d/a/d$a;Ljava/lang/Object;)V

    .line 15
    iput-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    .line 16
    iput-object v0, p0, Lc/d/a/c;->b:Lc/d/a/x$a;

    return-void
.end method

.method static synthetic Q(Lc/d/a/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/d/a/c;->t:Z

    return p1
.end method

.method private U()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/d/a/c;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/d/a/c;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Lc/d/a/c;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    .line 5
    invoke-static {v2, v1}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/d/a/c;->a:Lc/d/a/x;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lc/d/a/c;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lc/d/a/c;->y()V

    .line 10
    :cond_2
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->i()V

    .line 11
    invoke-virtual {p0}, Lc/d/a/c;->getId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/c;->w:Z

    return v0
.end method

.method public B()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->u:Ljava/lang/Object;

    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/c;->p:I

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/c;->r:Z

    return v0
.end method

.method public E()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->i:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object v0
.end method

.method public F(I)Lc/d/a/a;
    .locals 0

    .line 1
    iput p1, p0, Lc/d/a/c;->m:I

    return-object p0
.end method

.method public G()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/c;->e()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->e(I)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/c;->h:Z

    return v0
.end method

.method public I(I)Lc/d/a/a;
    .locals 0

    .line 1
    iput p1, p0, Lc/d/a/c;->p:I

    return-object p0
.end method

.method public J()Lc/d/a/a;
    .locals 0

    return-object p0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/d/a/c;->w:Z

    return-void
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/c;->n:Z

    return v0
.end method

.method public N(I)Lc/d/a/a;
    .locals 0

    .line 1
    iput p1, p0, Lc/d/a/c;->q:I

    return-object p0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public P(Lc/d/a/i;)Lc/d/a/a;
    .locals 2

    .line 1
    iput-object p1, p0, Lc/d/a/c;->j:Lc/d/a/i;

    .line 2
    sget-boolean v0, Lc/d/a/i0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "setListener %s"

    .line 3
    invoke-static {p0, p1, v0}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public R()Z
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/q;->e()Lc/d/a/v;

    move-result-object v0

    invoke-interface {v0, p0}, Lc/d/a/v;->a(Lc/d/a/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/d/a/c;->e()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->e()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T(Ljava/lang/String;Z)Lc/d/a/a;
    .locals 2

    .line 1
    iput-object p1, p0, Lc/d/a/c;->f:Ljava/lang/String;

    .line 2
    sget-boolean v0, Lc/d/a/i0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "setPath %s"

    .line 3
    invoke-static {p0, v1, v0}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iput-boolean p2, p0, Lc/d/a/c;->h:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lc/d/a/c;->g:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/c;->g:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/c;->g:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->b()V

    .line 2
    invoke-static {}, Lc/d/a/h;->e()Lc/d/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/d/a/h;->g(Lc/d/a/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/d/a/c;->w:Z

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->c()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->d()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public e()B
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->e()B

    move-result v0

    return v0
.end method

.method public f()I
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->l()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->l()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public g(ILjava/lang/Object;)Lc/d/a/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/c;->k:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lc/d/a/c;->k:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/c;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public getId()I
    .locals 3

    .line 1
    iget v0, p0, Lc/d/a/c;->c:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/d/a/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/c;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lc/d/a/c;->h:Z

    invoke-static {v0, v1, v2}, Lc/d/a/i0/f;->s(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lc/d/a/c;->c:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lc/d/a/a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/d/a/c;->T(Ljava/lang/String;Z)Lc/d/a/a;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/c;->U()I

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/d/a/c;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lc/d/a/c;->H()Z

    move-result v1

    invoke-virtual {p0}, Lc/d/a/c;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc/d/a/i0/f;->B(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/c;->s:I

    return v0
.end method

.method public l()Lc/d/a/a$c;
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/d/a/c$b;-><init>(Lc/d/a/c;Lc/d/a/c$a;)V

    return-object v0
.end method

.method public m()Lc/d/a/x$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->b:Lc/d/a/x$a;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public o()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/c;->s:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/c;->q:I

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/c;->o:Z

    return v0
.end method

.method public s()Lc/d/a/a$b;
    .locals 0

    return-object p0
.end method

.method public start()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/c;->t:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lc/d/a/c;->U()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you start the task manually, it means this task doesn\'t belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn\'t belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that\'s all. In other words, If this task doesn\'t belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/c;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lc/d/a/c;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%d@%s"

    invoke-static {v1, v0}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/c;->m:I

    return v0
.end method

.method public v()I
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->j()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->j()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public w()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lc/d/a/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public x()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/c;->a:Lc/d/a/x;

    invoke-interface {v0}, Lc/d/a/x;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/c;->z()Lc/d/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/d/a/c;->z()Lc/d/a/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 4
    :goto_0
    iput v0, p0, Lc/d/a/c;->s:I

    return-void
.end method

.method public z()Lc/d/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/c;->j:Lc/d/a/i;

    return-object v0
.end method
