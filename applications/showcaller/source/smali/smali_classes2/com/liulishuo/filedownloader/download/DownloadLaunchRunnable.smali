.class public Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
.super Ljava/lang/Object;
.source "DownloadLaunchRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/liulishuo/filedownloader/download/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;,
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;,
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private A:Ljava/lang/String;

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private final e:Lcom/liulishuo/filedownloader/download/e;

.field private final f:I

.field private final g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field private final h:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private final i:Z

.field private final j:Z

.field private final k:Lc/d/a/f0/a;

.field private final l:Lc/d/a/y;

.field private m:Z

.field n:I

.field private o:Z

.field private final p:Z

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/download/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/liulishuo/filedownloader/download/d;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile x:Z

.field private volatile y:Z

.field private volatile z:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConnectionBlock"

    .line 1
    invoke-static {v0}, Lc/d/a/i0/b;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lc/d/a/y;IIZZI)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->f:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->B:J

    .line 7
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->C:J

    .line 8
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->D:J

    .line 9
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->E:J

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    .line 12
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Z

    .line 13
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 14
    iput-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 15
    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->i:Z

    .line 16
    iput-boolean p7, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j:Z

    .line 17
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/c;->f()Lc/d/a/f0/a;

    move-result-object p2

    iput-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    .line 18
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/c;->m()Z

    move-result p2

    iput-boolean p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->p:Z

    .line 19
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->l:Lc/d/a/y;

    .line 20
    iput p8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:I

    .line 21
    new-instance p2, Lcom/liulishuo/filedownloader/download/e;

    invoke-direct {p2, p1, p8, p4, p5}, Lcom/liulishuo/filedownloader/download/e;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V

    iput-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lc/d/a/y;IIZZILcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lc/d/a/y;IIZZI)V

    return-void
.end method

.method private g(J)I
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/liulishuo/filedownloader/download/c;->c(ILjava/lang/String;Ljava/lang/String;J)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lc/d/a/i0/f;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->i:Z

    const/4 v3, 0x0

    invoke-static {v0, v5, v2, v3}, Lc/d/a/i0/c;->d(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v2, v1}, Lc/d/a/f0/a;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->l:Lc/d/a/y;

    invoke-static {v0, v2, v4, v3}, Lc/d/a/i0/c;->e(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lc/d/a/y;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    .line 9
    invoke-interface {v3, v1}, Lc/d/a/f0/a;->n(I)Ljava/util/List;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v4, v1}, Lc/d/a/f0/a;->remove(I)Z

    .line 11
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v4, v1}, Lc/d/a/f0/a;->h(I)V

    .line 12
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc/d/a/i0/f;->e(Ljava/lang/String;)V

    .line 13
    invoke-static {v1, v2}, Lc/d/a/i0/f;->G(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->A(J)V

    .line 15
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->C(J)V

    .line 16
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->u(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->t(I)V

    .line 18
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-interface {v1, v2}, Lc/d/a/f0/a;->j(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    if-eqz v3, :cond_0

    .line 19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/model/a;

    .line 20
    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/model/a;->i(I)V

    .line 21
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v3, v2}, Lc/d/a/f0/a;->g(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v1, v0}, Lc/d/a/f0/a;->remove(I)Z

    .line 24
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v1, v0}, Lc/d/a/f0/a;->h(I)V

    .line 25
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 27
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->l:Lc/d/a/y;

    move v1, v0

    .line 28
    invoke-static/range {v1 .. v6}, Lc/d/a/i0/c;->c(IJLjava/lang/String;Ljava/lang/String;Lc/d/a/y;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v1, v0}, Lc/d/a/f0/a;->remove(I)Z

    .line 30
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v1, v0}, Lc/d/a/f0/a;->h(I)V

    .line 31
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    .line 32
    :cond_4
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v1, v0}, Lc/d/a/f0/a;->remove(I)Z

    .line 33
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v1, v0}, Lc/d/a/f0/a;->h(I)V

    .line 34
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 2
    invoke-static {v0}, Lc/d/a/i0/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 4
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    .line 5
    invoke-static {v0, v2}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lc/d/a/i0/f;->M()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private j(Ljava/util/List;J)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    .line 2
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->A:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v3

    .line 4
    :goto_0
    iget-object v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v4

    .line 5
    sget-boolean v5, Lc/d/a/i0/d;->a:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    new-array v5, v6, [Ljava/lang/Object;

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v7

    const-string v10, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]"

    .line 7
    invoke-static {v0, v10, v5}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-boolean v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Z

    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/liulishuo/filedownloader/model/a;

    .line 10
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->b()J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v20, v16, v18

    if-nez v20, :cond_2

    .line 11
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->a()J

    move-result-wide v16

    sub-long v16, p2, v16

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->b()J

    move-result-wide v16

    .line 13
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->a()J

    move-result-wide v18

    sub-long v16, v16, v18

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    :goto_2
    move-wide/from16 v24, v16

    .line 14
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->a()J

    move-result-wide v16

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->e()J

    move-result-wide v18

    sub-long v16, v16, v18

    add-long v13, v13, v16

    cmp-long v16, v24, v11

    if-nez v16, :cond_3

    .line 15
    sget-boolean v16, Lc/d/a/i0/d;->a:Z

    if-eqz v16, :cond_6

    new-array v11, v7, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->c()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->d()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const-string v12, "pass connection[%d-%d], because it has been completed"

    .line 17
    invoke-static {v0, v12, v11}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 18
    :cond_3
    new-instance v11, Lcom/liulishuo/filedownloader/download/d$b;

    invoke-direct {v11}, Lcom/liulishuo/filedownloader/download/d$b;-><init>()V

    .line 19
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->e()J

    move-result-wide v18

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->a()J

    move-result-wide v20

    .line 20
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->b()J

    move-result-wide v22

    .line 21
    invoke-static/range {v18 .. v25}, Lcom/liulishuo/filedownloader/download/b$b;->b(JJJJ)Lcom/liulishuo/filedownloader/download/b;

    move-result-object v12

    .line 22
    invoke-virtual {v11, v1}, Lcom/liulishuo/filedownloader/download/d$b;->g(I)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v11

    .line 23
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/a;->d()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/liulishuo/filedownloader/download/d$b;->c(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v6

    .line 24
    invoke-virtual {v6, v0}, Lcom/liulishuo/filedownloader/download/d$b;->b(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v6

    .line 25
    invoke-virtual {v6, v3}, Lcom/liulishuo/filedownloader/download/d$b;->i(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v6

    if-eqz v5, :cond_4

    move-object v11, v2

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 26
    :goto_3
    invoke-virtual {v6, v11}, Lcom/liulishuo/filedownloader/download/d$b;->e(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v6

    iget-object v11, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 27
    invoke-virtual {v6, v11}, Lcom/liulishuo/filedownloader/download/d$b;->f(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v6

    iget-boolean v11, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j:Z

    .line 28
    invoke-virtual {v6, v11}, Lcom/liulishuo/filedownloader/download/d$b;->j(Z)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v6

    .line 29
    invoke-virtual {v6, v12}, Lcom/liulishuo/filedownloader/download/d$b;->d(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v6

    .line 30
    invoke-virtual {v6, v4}, Lcom/liulishuo/filedownloader/download/d$b;->h(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object v6

    .line 31
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/download/d$b;->a()Lcom/liulishuo/filedownloader/download/d;

    move-result-object v6

    .line 32
    sget-boolean v11, Lc/d/a/i0/d;->a:Z

    if-eqz v11, :cond_5

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v15, v11, v9

    const-string v12, "enable multiple connection: %s"

    .line 33
    invoke-static {v0, v12, v11}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v6, :cond_7

    .line 34
    iget-object v11, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    const/4 v6, 0x3

    const-wide/16 v11, 0x0

    goto/16 :goto_1

    .line 35
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the download runnable must not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_8
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    cmp-long v4, v13, v2

    if-eqz v4, :cond_9

    new-array v2, v7, [Ljava/lang/Object;

    .line 37
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 38
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "correct the sofar[%d] from connection table[%d]"

    .line 39
    invoke-static {v0, v3, v2}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2, v13, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->A(J)V

    .line 41
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/download/d;

    .line 43
    iget-boolean v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v5, :cond_a

    .line 44
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/download/d;->c()V

    goto :goto_5

    .line 45
    :cond_a
    invoke-static {v4}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 46
    :cond_b
    iget-boolean v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v3, :cond_c

    .line 47
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->B(B)V

    return-void

    .line 48
    :cond_c
    sget-object v3, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 49
    sget-boolean v3, Lc/d/a/i0/d;->a:Z

    if-eqz v3, :cond_d

    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v7

    const-string v3, "finish sub-task for [%d] %B %B"

    .line 52
    invoke-static {v0, v3, v5}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    return-void
.end method

.method private m(JLjava/lang/String;)V
    .locals 10

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/i0/f;->c(Ljava/lang/String;)Lc/d/a/h0/a;

    move-result-object v2

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long v6, p1, v8

    .line 3
    invoke-static {p3}, Lc/d/a/i0/f;->x(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p3, v4, v6

    if-ltz p3, :cond_0

    .line 4
    invoke-static {}, Lc/d/a/i0/e;->a()Lc/d/a/i0/e;

    move-result-object p3

    iget-boolean p3, p3, Lc/d/a/i0/e;->f:Z

    if-nez p3, :cond_2

    .line 5
    invoke-interface {v2, p1, p2}, Lc/d/a/h0/a;->a(J)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Lc/d/a/h0/a;->close()V

    .line 8
    :cond_1
    throw p1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v2}, Lc/d/a/h0/a;->close()V

    :cond_3
    return-void
.end method

.method private n(Ljava/util/Map;Lcom/liulishuo/filedownloader/download/a;Lc/d/a/e0/b;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/liulishuo/filedownloader/download/a;",
            "Lc/d/a/e0/b;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v4

    .line 2
    invoke-interface/range {p3 .. p3}, Lc/d/a/e0/b;->getResponseCode()I

    move-result v2

    .line 3
    invoke-static {v2, v1}, Lc/d/a/i0/f;->E(ILc/d/a/e0/b;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    const/16 v3, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_1

    if-eq v2, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 4
    :goto_1
    invoke-static/range {p3 .. p3}, Lc/d/a/i0/f;->m(Lc/d/a/e0/b;)J

    move-result-wide v10

    .line 5
    iget-object v8, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-static {v4, v1}, Lc/d/a/i0/f;->j(ILc/d/a/e0/b;)Ljava/lang/String;

    move-result-object v12

    const/16 v9, 0x19c

    const-wide/16 v13, 0x0

    if-ne v2, v9, :cond_3

    :cond_2
    :goto_2
    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    if-eqz v8, :cond_4

    .line 7
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v7, :cond_2

    .line 8
    iget-boolean v9, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    if-ne v2, v3, :cond_5

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/liulishuo/filedownloader/download/a;->h()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_8

    .line 10
    iget-boolean v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v3, :cond_6

    cmp-long v3, v10, v13

    if-ltz v3, :cond_6

    new-array v3, v5, [Ljava/lang/Object;

    const-string v9, "get 416 but the Content-Range is returned, no need to retry"

    .line 11
    invoke-static {v0, v9, v3}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 12
    :cond_6
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v15

    cmp-long v3, v15, v13

    if-lez v3, :cond_7

    new-array v3, v5, [Ljava/lang/Object;

    const-string v9, "get 416, precondition failed and just retry"

    .line 13
    invoke-static {v0, v9, v3}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_7
    iget-boolean v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-nez v3, :cond_8

    .line 15
    iput-boolean v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    new-array v3, v5, [Ljava/lang/Object;

    const-string v9, "get 416, precondition failed and need to retry with discarding range"

    .line 16
    invoke-static {v0, v9, v3}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    :goto_3
    const/4 v3, 0x0

    :goto_4
    const/4 v9, 0x0

    if-eqz v3, :cond_b

    .line 17
    iget-boolean v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Z

    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x4

    if-eqz v1, :cond_9

    new-array v1, v10, [Ljava/lang/Object;

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v5

    aput-object v8, v1, v6

    aput-object v12, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v3

    const-string v11, "there is precondition failed on this request[%d] with old etag[%s]\u3001new etag[%s]\u3001response code is %d"

    .line 19
    invoke-static {v0, v11, v1}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_9
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    iget-object v11, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v11}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v11

    invoke-interface {v1, v11}, Lc/d/a/f0/a;->h(I)V

    .line 21
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v11, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v11}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lc/d/a/i0/f;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-boolean v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v8, :cond_a

    .line 23
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v8, v1, v5

    aput-object v12, v1, v6

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "the old etag[%s] is the same to the new etag[%s], but the response status code is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!"

    .line 25
    invoke-static {v0, v2, v1}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v12, v9

    .line 26
    :cond_a
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1, v13, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->A(J)V

    .line 27
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1, v13, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->C(J)V

    .line 28
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1, v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->u(Ljava/lang/String;)V

    .line 29
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->s()V

    .line 30
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v6

    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k()J

    move-result-wide v8

    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 31
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v10

    .line 32
    invoke-interface/range {v3 .. v10}, Lc/d/a/f0/a;->e(ILjava/lang/String;JJI)V

    .line 33
    new-instance v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v1, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v1

    .line 34
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/liulishuo/filedownloader/download/a;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->A:Ljava/lang/String;

    .line 35
    iget-boolean v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-nez v3, :cond_d

    if-eqz v7, :cond_c

    goto :goto_5

    .line 36
    :cond_c
    new-instance v3, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    .line 37
    invoke-interface/range {p3 .. p3}, Lc/d/a/e0/b;->b()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-direct {v3, v2, v4, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    throw v3

    .line 38
    :cond_d
    :goto_5
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->r()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 39
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/d/a/i0/f;->l(Lc/d/a/e0/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_6

    :cond_e
    move-object v13, v9

    :goto_6
    const-wide/16 v1, -0x1

    cmp-long v3, v10, v1

    if-nez v3, :cond_f

    const/4 v1, 0x1

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    .line 40
    :goto_7
    iput-boolean v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    .line 41
    iget-object v8, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    iget-boolean v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v1, :cond_10

    const/4 v9, 0x1

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    :goto_8
    invoke-virtual/range {v8 .. v13}, Lcom/liulishuo/filedownloader/download/e;->n(ZJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private q()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v0

    if-gt v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private t(JI)V
    .locals 11

    int-to-long v0, p3

    .line 1
    div-long v0, p1, v0

    .line 2
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v2

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p3, :cond_1

    add-int/lit8 v7, p3, -0x1

    if-ne v6, v7, :cond_0

    const-wide/16 v7, -0x1

    goto :goto_1

    :cond_0
    add-long v7, v4, v0

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 4
    :goto_1
    new-instance v9, Lcom/liulishuo/filedownloader/model/a;

    invoke-direct {v9}, Lcom/liulishuo/filedownloader/model/a;-><init>()V

    .line 5
    invoke-virtual {v9, v2}, Lcom/liulishuo/filedownloader/model/a;->i(I)V

    .line 6
    invoke-virtual {v9, v6}, Lcom/liulishuo/filedownloader/model/a;->j(I)V

    .line 7
    invoke-virtual {v9, v4, v5}, Lcom/liulishuo/filedownloader/model/a;->k(J)V

    .line 8
    invoke-virtual {v9, v4, v5}, Lcom/liulishuo/filedownloader/model/a;->g(J)V

    .line 9
    invoke-virtual {v9, v7, v8}, Lcom/liulishuo/filedownloader/model/a;->h(J)V

    .line 10
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v7, v9}, Lc/d/a/f0/a;->g(Lcom/liulishuo/filedownloader/model/a;)V

    add-long/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, p3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->t(I)V

    .line 13
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    invoke-interface {v0, v2, p3}, Lc/d/a/f0/a;->p(II)V

    .line 14
    invoke-direct {p0, v3, p1, p2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j(Ljava/util/List;J)V

    return-void
.end method

.method private u(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j(Ljava/util/List;J)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private v(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->A(J)V

    .line 3
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/download/b$b;->a(J)Lcom/liulishuo/filedownloader/download/b;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v5

    sub-long v5, p1, v5

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/download/b$b;->c(JJJ)Lcom/liulishuo/filedownloader/download/b;

    move-result-object p1

    .line 8
    :goto_0
    new-instance p2, Lcom/liulishuo/filedownloader/download/d$b;

    invoke-direct {p2}, Lcom/liulishuo/filedownloader/download/d$b;-><init>()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 9
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/liulishuo/filedownloader/download/d$b;->g(I)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p2

    const/4 v0, -0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/liulishuo/filedownloader/download/d$b;->c(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p0}, Lcom/liulishuo/filedownloader/download/d$b;->b(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 12
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/liulishuo/filedownloader/download/d$b;->i(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 13
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/liulishuo/filedownloader/download/d$b;->e(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 14
    invoke-virtual {p2, v0}, Lcom/liulishuo/filedownloader/download/d$b;->f(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p2

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->j:Z

    .line 15
    invoke-virtual {p2, v0}, Lcom/liulishuo/filedownloader/download/d$b;->j(Z)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Lcom/liulishuo/filedownloader/download/d$b;->d(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p1

    iget-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 17
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/liulishuo/filedownloader/download/d$b;->h(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/d$b;->a()Lcom/liulishuo/filedownloader/download/d;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Lcom/liulishuo/filedownloader/download/d;

    .line 19
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->t(I)V

    .line 20
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    invoke-interface {p1, v0, p2}, Lc/d/a/f0/a;->p(II)V

    .line 21
    iget-boolean p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->B(B)V

    .line 23
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Lcom/liulishuo/filedownloader/download/d;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/d;->c()V

    goto :goto_1

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Lcom/liulishuo/filedownloader/download/d;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/d;->run()V

    :goto_1
    return-void
.end method

.method private w()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/liulishuo/filedownloader/download/b$b;->e()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/download/b$b;->d()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v1

    .line 4
    :goto_0
    new-instance v2, Lcom/liulishuo/filedownloader/download/a$b;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/download/a$b;-><init>()V

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/a$b;->c(I)Lcom/liulishuo/filedownloader/download/a$b;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/a$b;->f(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$b;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/a$b;->d(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$b;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 8
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/a$b;->e(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/a$b;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Lcom/liulishuo/filedownloader/download/a$b;->b(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/a$b;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/a$b;->a()Lcom/liulishuo/filedownloader/download/a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/a;->c()Lc/d/a/e0/b;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/a;->g()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n(Ljava/util/Map;Lcom/liulishuo/filedownloader/download/a;Lc/d/a/e0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Lc/d/a/e0/b;->e()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc/d/a/e0/b;->e()V

    .line 14
    :cond_2
    throw v1
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/download/d;JJ)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p1, Lc/d/a/i0/d;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "the task[%d] has already been paused, so pass the completed callback"

    new-array p2, v1, [Ljava/lang/Object;

    .line 3
    iget-object p3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 4
    invoke-virtual {p3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    .line 5
    invoke-static {p0, p1, p2}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget v0, p1, Lcom/liulishuo/filedownloader/download/d;->k:I

    .line 7
    sget-boolean v3, Lc/d/a/i0/d;->a:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v3, :cond_2

    const-string v3, "the connection has been completed(%d): [%d, %d)  %d"

    new-array v7, v6, [Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    .line 9
    invoke-static {p0, v3, v7}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v0, :cond_3

    const-wide/16 v7, 0x0

    cmp-long p1, p2, v7

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k()J

    move-result-wide v7

    cmp-long p1, p4, v7

    if-eqz p1, :cond_4

    const-string p1, "the single task not completed corrected(%d, %d != %d) for task(%d)"

    new-array v0, v6, [Ljava/lang/Object;

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    iget-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    .line 13
    invoke-static {p0, p1, v0}, Lc/d/a/i0/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/ArrayList;

    monitor-enter p2

    .line 15
    :try_start_0
    iget-object p3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    monitor-exit p2

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    .line 2
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->z:Ljava/lang/Exception;

    .line 3
    iget-boolean p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz p1, :cond_1

    .line 4
    sget-boolean p1, Lc/d/a/i0/d;->a:Z

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "the task[%d] has already been paused, so pass the error callback"

    .line 7
    invoke-static {p0, v0, p1}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/d;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/d;->a()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p1, Lc/d/a/i0/d;->a:Z

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 4
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "the task[%d] has already been paused, so pass the retry callback"

    .line 5
    invoke-static {p0, v0, p1}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:I

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:I

    if-gez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "valid retry times is less than 0(%d) for download task(%d)"

    .line 8
    invoke-static {p0, v1, v0}, Lc/d/a/i0/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    iget v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:I

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/filedownloader/download/e;->t(Ljava/lang/Exception;I)V

    return-void
.end method

.method public d(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/download/e;->s(J)V

    return-void
.end method

.method public e(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    .line 3
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;->getCode()I

    move-result v0

    .line 4
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Z

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc/d/a/i0/f;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m:Z

    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->n:I

    if-lez v0, :cond_1

    instance-of p1, p1, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lc/d/a/f0/a;->l(IJ)V

    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 4
    :goto_0
    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o:Z

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    :cond_1
    :goto_1
    move-wide v5, v7

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    .line 5
    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-nez v6, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v6

    iget-object v9, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {v6, v9}, Lc/d/a/i0/f;->G(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-nez v6, :cond_4

    .line 9
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_6

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    invoke-static {p1}, Lcom/liulishuo/filedownloader/model/a;->f(Ljava/util/List;)J

    move-result-wide v5

    goto :goto_2

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v5

    .line 13
    :goto_2
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1, v5, v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->A(J)V

    cmp-long p1, v5, v7

    if-lez p1, :cond_7

    const/4 v3, 0x1

    .line 14
    :cond_7
    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-nez v3, :cond_8

    .line 15
    iget-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    invoke-interface {p1, v0}, Lc/d/a/f0/a;->h(I)V

    .line 16
    invoke-static {v2, v1}, Lc/d/a/i0/f;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->r:Lcom/liulishuo/filedownloader/download/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/d;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/download/d;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/d;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public run()V
    .locals 11

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "High concurrent cause, start runnable but already paused %d"

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v0

    if-ne v0, v3, :cond_0

    .line 4
    sget-boolean v0, Lc/d/a/i0/d;->a:Z

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 7
    invoke-static {p0, v2, v0}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 9
    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    .line 10
    invoke-static {v2, v3}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    .line 13
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_2

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->q()V

    goto :goto_4

    .line 15
    :cond_2
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    if-eqz v0, :cond_3

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->z:Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/download/e;->o(Ljava/lang/Exception;)V

    goto :goto_4

    .line 17
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->m()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 18
    :goto_3
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/download/e;->o(Ljava/lang/Exception;)V

    .line 19
    :goto_4
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 20
    :cond_4
    :try_start_3
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->u()V

    .line 22
    :cond_5
    :goto_5
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_9

    .line 23
    sget-boolean v0, Lc/d/a/i0/d;->a:Z

    if-eqz v0, :cond_6

    new-array v0, v4, [Ljava/lang/Object;

    .line 24
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 25
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 26
    invoke-static {p0, v2, v0}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    .line 28
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_7

    goto :goto_1

    .line 29
    :cond_7
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    if-eqz v0, :cond_8

    goto :goto_2

    .line 30
    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->m()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 31
    :cond_9
    :try_start_5
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->i()V

    .line 32
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w()V

    .line 33
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->h()V

    .line 34
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 35
    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v5

    invoke-interface {v0, v5}, Lc/d/a/f0/a;->n(I)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o(Ljava/util/List;)V

    .line 37
    iget-boolean v5, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v5, :cond_c

    .line 38
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->B(B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadSecurityException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    .line 40
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_a

    goto/16 :goto_1

    .line 41
    :cond_a
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    if-eqz v0, :cond_b

    goto/16 :goto_2

    .line 42
    :cond_b
    :try_start_6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->m()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 43
    :cond_c
    :try_start_7
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k()J

    move-result-wide v5

    .line 44
    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->m(JLjava/lang/String;)V

    .line 45
    invoke-direct {p0, v5, v6}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g(J)I

    move-result v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadSecurityException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-lez v7, :cond_16

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-nez v10, :cond_f

    .line 46
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    .line 47
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_d

    goto/16 :goto_1

    .line 48
    :cond_d
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    if-eqz v0, :cond_e

    goto/16 :goto_2

    .line 49
    :cond_e
    :try_start_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->m()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 50
    :cond_f
    :try_start_9
    iget-boolean v8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v8, :cond_12

    .line 51
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->B(B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadSecurityException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    .line 53
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_10

    goto/16 :goto_1

    .line 54
    :cond_10
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    if-eqz v0, :cond_11

    goto/16 :goto_2

    .line 55
    :cond_11
    :try_start_a
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->m()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :cond_12
    if-ne v7, v4, :cond_13

    const/4 v8, 0x1

    goto :goto_6

    :cond_13
    const/4 v8, 0x0

    .line 56
    :goto_6
    :try_start_b
    iput-boolean v8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v8, :cond_14

    .line 57
    invoke-direct {p0, v5, v6}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->v(J)V

    goto :goto_8

    .line 58
    :cond_14
    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/download/e;->p()V

    .line 59
    iget-boolean v8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v8, :cond_15

    .line 60
    invoke-direct {p0, v7, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->u(ILjava/util/List;)V

    goto :goto_8

    .line 61
    :cond_15
    invoke-direct {p0, v5, v6, v7}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->t(JI)V

    goto :goto_8

    .line 62
    :cond_16
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v5, "invalid connection count %d, the connection count must be larger than 0"

    new-array v6, v4, [Ljava/lang/Object;

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 64
    invoke-static {v5, v6}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_a
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadSecurityException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 65
    :catch_5
    :try_start_c
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->B(B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    :catch_6
    nop

    .line 66
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    .line 67
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_17

    goto/16 :goto_1

    .line 68
    :cond_17
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    if-eqz v0, :cond_18

    goto/16 :goto_2

    .line 69
    :cond_18
    :try_start_d
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->m()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v0

    goto :goto_7

    :catch_c
    move-exception v0

    goto :goto_7

    :catch_d
    move-exception v0

    .line 70
    :goto_7
    :try_start_e
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 71
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->c(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 72
    :cond_19
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 73
    :goto_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->b()V

    .line 74
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-eqz v0, :cond_1a

    .line 75
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->q()V

    goto :goto_9

    .line 76
    :cond_1a
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    if-eqz v0, :cond_1b

    .line 77
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->z:Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/download/e;->o(Ljava/lang/Exception;)V

    goto :goto_9

    .line 78
    :cond_1b
    :try_start_f
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->m()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_9

    :catch_e
    move-exception v0

    .line 79
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/download/e;->o(Ljava/lang/Exception;)V

    .line 80
    :goto_9
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 81
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/e;->b()V

    .line 82
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->x:Z

    if-nez v2, :cond_1d

    .line 83
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->y:Z

    if-eqz v2, :cond_1c

    .line 84
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->z:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/e;->o(Ljava/lang/Exception;)V

    goto :goto_a

    .line 85
    :cond_1c
    :try_start_10
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/e;->m()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_a

    :catch_f
    move-exception v2

    .line 86
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/download/e;->o(Ljava/lang/Exception;)V

    goto :goto_a

    .line 87
    :cond_1d
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/e;->q()V

    .line 88
    :goto_a
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    throw v0
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->k:Lc/d/a/f0/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lc/d/a/f0/a;->n(I)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->o(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/liulishuo/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/e;->r()V

    return-void
.end method
