.class public Le/e/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/a;
.implements Le/e/a/a$b;
.implements Le/e/a/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/c$b;
    }
.end annotation


# instance fields
.field private final a:Le/e/a/w;

.field private final b:Le/e/a/w$a;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/e/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private j:Le/e/a/i;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field volatile r:I

.field private s:Z

.field private final t:Ljava/lang/Object;

.field private volatile u:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/e/a/c;->l:I

    iput-boolean v0, p0, Le/e/a/c;->m:Z

    iput-boolean v0, p0, Le/e/a/c;->n:Z

    const/16 v1, 0x64

    iput v1, p0, Le/e/a/c;->o:I

    const/16 v1, 0xa

    iput v1, p0, Le/e/a/c;->p:I

    iput-boolean v0, p0, Le/e/a/c;->q:Z

    iput v0, p0, Le/e/a/c;->r:I

    iput-boolean v0, p0, Le/e/a/c;->s:Z

    iput-boolean v0, p0, Le/e/a/c;->u:Z

    iput-object p1, p0, Le/e/a/c;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/e/a/c;->t:Ljava/lang/Object;

    new-instance v0, Le/e/a/d;

    invoke-direct {v0, p0, p1}, Le/e/a/d;-><init>(Le/e/a/d$a;Ljava/lang/Object;)V

    iput-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    iput-object v0, p0, Le/e/a/c;->b:Le/e/a/w$a;

    return-void
.end method

.method static synthetic R(Le/e/a/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Le/e/a/c;->s:Z

    return p1
.end method

.method private V()I
    .locals 4

    invoke-virtual {p0}, Le/e/a/c;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/e/a/c;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Le/e/a/c;->F()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    invoke-static {v2, v1}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Le/e/a/c;->A()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Le/e/a/c;->o()V

    :cond_2
    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->j()V

    invoke-virtual {p0}, Le/e/a/c;->F()I

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget v0, p0, Le/e/a/c;->r:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Le/e/a/c;->p:I

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Le/e/a/c;->q:Z

    return v0
.end method

.method public D()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->i:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object v0
.end method

.method public E(I)Le/e/a/a;
    .locals 0

    iput p1, p0, Le/e/a/c;->l:I

    return-object p0
.end method

.method public F()I
    .locals 3

    iget v0, p0, Le/e/a/c;->c:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Le/e/a/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/e/a/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/e/a/c;->e:Ljava/lang/String;

    iget-object v1, p0, Le/e/a/c;->f:Ljava/lang/String;

    iget-boolean v2, p0, Le/e/a/c;->h:Z

    invoke-static {v0, v1, v2}, Le/e/a/h0/f;->s(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Le/e/a/c;->c:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public G()Z
    .locals 1

    invoke-virtual {p0}, Le/e/a/c;->e()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->e(I)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Le/e/a/c;->h:Z

    return v0
.end method

.method public I(I)Le/e/a/a;
    .locals 0

    iput p1, p0, Le/e/a/c;->o:I

    return-object p0
.end method

.method public J()Le/e/a/a;
    .locals 0

    return-object p0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Le/e/a/c;->n:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, Le/e/a/c;->d:Ljava/util/ArrayList;

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

.method public M()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/e/a/c;->u:Z

    return-void
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Le/e/a/c;->m:Z

    return v0
.end method

.method public O(I)Le/e/a/a;
    .locals 0

    iput p1, p0, Le/e/a/c;->p:I

    return-object p0
.end method

.method public P()Le/e/a/a$b;
    .locals 0

    return-object p0
.end method

.method public Q(Le/e/a/i;)Le/e/a/a;
    .locals 2

    iput-object p1, p0, Le/e/a/c;->j:Le/e/a/i;

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "setListener %s"

    invoke-static {p0, p1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public S()Z
    .locals 1

    invoke-static {}, Le/e/a/q;->d()Le/e/a/q;

    move-result-object v0

    invoke-virtual {v0}, Le/e/a/q;->e()Le/e/a/u;

    move-result-object v0

    invoke-interface {v0, p0}, Le/e/a/u;->b(Le/e/a/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Le/e/a/c;->e()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->a(I)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->e()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U(Ljava/lang/String;Z)Le/e/a/a;
    .locals 2

    iput-object p1, p0, Le/e/a/c;->f:Ljava/lang/String;

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "setPath %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-boolean p2, p0, Le/e/a/c;->h:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Le/e/a/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->b()V

    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/e/a/h;->g(Le/e/a/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/e/a/c;->u:Z

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->c()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->d()I

    move-result v0

    return v0
.end method

.method public e()B
    .locals 1

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->e()B

    move-result v0

    return v0
.end method

.method public f(I)Z
    .locals 1

    invoke-virtual {p0}, Le/e/a/c;->F()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 5

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->p()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->p()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public i()I
    .locals 1

    iget v0, p0, Le/e/a/c;->l:I

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/e/a/c;->g:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .locals 5

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->k()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->k()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public l(Ljava/lang/String;)Le/e/a/a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le/e/a/c;->U(Ljava/lang/String;Z)Le/e/a/a;

    return-object p0
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Le/e/a/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/e/a/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()J
    .locals 2

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Le/e/a/c;->r()Le/e/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/e/a/c;->r()Le/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Le/e/a/c;->r:I

    return-void
.end method

.method public p()V
    .locals 0

    invoke-direct {p0}, Le/e/a/c;->V()I

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Le/e/a/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Le/e/a/c;->H()Z

    move-result v1

    invoke-virtual {p0}, Le/e/a/c;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Le/e/a/h0/f;->B(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Le/e/a/i;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->j:Le/e/a/i;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Le/e/a/c;->r:I

    return v0
.end method

.method public start()I
    .locals 2

    iget-boolean v0, p0, Le/e/a/c;->s:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Le/e/a/c;->V()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you start the task manually, it means this task doesn\'t belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn\'t belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that\'s all. In other words, If this task doesn\'t belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Le/e/a/c;->u:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Le/e/a/c;->F()I

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

    invoke-static {v1, v0}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Le/e/a/a$c;
    .locals 2

    new-instance v0, Le/e/a/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/e/a/c$b;-><init>(Le/e/a/c;Le/e/a/c$a;)V

    return-object v0
.end method

.method public v()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public w()Le/e/a/w$a;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->b:Le/e/a/w$a;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/e/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Le/e/a/c;->o:I

    return v0
.end method

.method public z()J
    .locals 2

    iget-object v0, p0, Le/e/a/c;->a:Le/e/a/w;

    invoke-interface {v0}, Le/e/a/w;->k()J

    move-result-wide v0

    return-wide v0
.end method
