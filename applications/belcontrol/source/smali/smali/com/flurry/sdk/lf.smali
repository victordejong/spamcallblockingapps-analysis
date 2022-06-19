.class public abstract Lcom/flurry/sdk/lf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReportInfo:",
        "Lcom/flurry/sdk/le;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "lf"

.field public static b:J = 0x2710L


# instance fields
.field public c:Z

.field public d:J

.field private final e:I

.field private final f:Lcom/flurry/sdk/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kn<",
            "Ljava/util/List<",
            "TReportInfo;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TReportInfo;>;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/lang/Runnable;

.field private final j:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/jy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/flurry/sdk/lf;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    new-instance v0, Lcom/flurry/sdk/lf$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$1;-><init>(Lcom/flurry/sdk/lf;)V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/flurry/sdk/lf$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$2;-><init>(Lcom/flurry/sdk/lf;)V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->j:Lcom/flurry/sdk/kp;

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.NetworkStateEvent"

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/kn;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/lf;->f:Lcom/flurry/sdk/kn;

    sget-wide v0, Lcom/flurry/sdk/lf;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/lf;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/lf;->h:I

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/lf$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/lf$3;-><init>(Lcom/flurry/sdk/lf;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/lf;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/lf;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/flurry/sdk/lf;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/lf;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/lf;->h:I

    if-ltz v0, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/lf;->a:Ljava/lang/String;

    const-string v2, "Transmit is in progress"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/lf;->d()V

    iget-object v0, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-wide v0, Lcom/flurry/sdk/lf;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/lf;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/lf;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/flurry/sdk/lf;->h:I

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/lf$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/lf$4;-><init>(Lcom/flurry/sdk/lf;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic c(Lcom/flurry/sdk/lf;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/lf;->e()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/le;

    iget-boolean v2, v1, Lcom/flurry/sdk/le;->o:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    sget-object v2, Lcom/flurry/sdk/lf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Url transmitted - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/flurry/sdk/le;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/flurry/sdk/le;->p:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/flurry/sdk/le;->p:I

    invoke-virtual {v1}, Lcom/flurry/sdk/le;->a()I

    move-result v4

    if-le v2, v4, :cond_2

    sget-object v2, Lcom/flurry/sdk/lf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exceeded max no of attempts - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/flurry/sdk/le;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/flurry/sdk/le;->p:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/flurry/sdk/le;->n:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    iget v2, v1, Lcom/flurry/sdk/le;->p:I

    if-lez v2, :cond_0

    sget-object v2, Lcom/flurry/sdk/lf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expired: Time expired - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/flurry/sdk/le;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/flurry/sdk/le;->p:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/flurry/sdk/jz;->a()Lcom/flurry/sdk/jz;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flurry/sdk/jz;->b:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/flurry/sdk/lf;->h:I

    iget-object v2, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    iget v2, p0, Lcom/flurry/sdk/lf;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/lf;->h:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/le;

    iget-boolean v2, v1, Lcom/flurry/sdk/le;->o:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/lf;->a:Ljava/lang/String;

    const-string v3, "Network is not available, aborting transmission"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/flurry/sdk/lf;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/lf;->a(Lcom/flurry/sdk/le;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/lf;->d()V

    iget-object v0, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/lf;->b(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/lf;->c:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/lf;->a:Ljava/lang/String;

    const-string v2, "Reporter paused"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lcom/flurry/sdk/lf;->b:J

    :goto_0
    iput-wide v0, p0, Lcom/flurry/sdk/lf;->d:J

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/lf;->a:Ljava/lang/String;

    const-string v2, "All reports sent successfully"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lcom/flurry/sdk/lf;->b:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/flurry/sdk/lf;->d:J

    const/4 v0, 0x1

    shl-long/2addr v2, v0

    iput-wide v2, p0, Lcom/flurry/sdk/lf;->d:J

    sget-object v0, Lcom/flurry/sdk/lf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "One or more reports failed to send, backing off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/flurry/sdk/lf;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/lf;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/flurry/sdk/lf;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/kg;->a(Ljava/lang/Runnable;J)V

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/lf;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract a()Lcom/flurry/sdk/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/kn<",
            "Ljava/util/List<",
            "TReportInfo;>;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/le;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TReportInfo;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/lf;->f:Lcom/flurry/sdk/kn;

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/le;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/lf$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$6;-><init>(Lcom/flurry/sdk/lf;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TReportInfo;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/flurry/sdk/lf;->f:Lcom/flurry/sdk/kn;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/lf;->c:Z

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/lf$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/lf$5;-><init>(Lcom/flurry/sdk/lf;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized c(Lcom/flurry/sdk/le;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/flurry/sdk/le;->o:Z

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/lf$7;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$7;-><init>(Lcom/flurry/sdk/lf;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/flurry/sdk/le;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/le;->a_()V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/lf$8;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$8;-><init>(Lcom/flurry/sdk/lf;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
