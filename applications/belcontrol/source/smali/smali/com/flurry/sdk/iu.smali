.class public Lcom/flurry/sdk/iu;
.super Lcom/flurry/sdk/lf;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lf<",
        "Lcom/flurry/sdk/iv;",
        ">;"
    }
.end annotation


# static fields
.field public static a:J = 0x0L

.field private static final e:Ljava/lang/String; = "iu"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/lf;-><init>()V

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/flurry/sdk/lf;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/lf;->d:J

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;)V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/iy;->b(Lcom/flurry/sdk/iw;)V

    invoke-virtual {p0, p2}, Lcom/flurry/sdk/lf;->c(Lcom/flurry/sdk/le;)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/la;)V
    .locals 6

    const-string v0, "Location"

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/lc;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p2, Lcom/flurry/sdk/le;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/flurry/sdk/mh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iw;Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/iu;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received redirect url. Retrying: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "Received redirect url. Retrying: false"

    :goto_1
    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iput-object v1, p2, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    iput-object v1, p3, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    iget-object p1, p3, Lcom/flurry/sdk/lc;->f:Lcom/flurry/sdk/kl;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/flurry/sdk/kl;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p3, Lcom/flurry/sdk/lc;->f:Lcom/flurry/sdk/kl;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kl;->b(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/ke;->a()Lcom/flurry/sdk/ke;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/flurry/sdk/kt;->a(Ljava/lang/Object;Lcom/flurry/sdk/mg;)V

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/lf;->c(Lcom/flurry/sdk/le;)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/flurry/sdk/iy;->b(Lcom/flurry/sdk/iw;Ljava/lang/String;)Z

    move-result p1

    sget-object p3, Lcom/flurry/sdk/iu;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed report retrying: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p3, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/flurry/sdk/lf;->d(Lcom/flurry/sdk/le;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/lf;->c(Lcom/flurry/sdk/le;)V

    return-void
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/iu;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/iv;)V
    .locals 3

    sget-object v0, Lcom/flurry/sdk/iu;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v2, v2, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report sent successfully to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iw;)V

    invoke-virtual {p0, p2}, Lcom/flurry/sdk/lf;->c(Lcom/flurry/sdk/le;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/flurry/sdk/kn;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/kn<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iv;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v1, Lcom/flurry/sdk/kn;

    const-string v2, ".yflurryanpulsecallbackreporter"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/flurry/sdk/iu$1;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/iu$1;-><init>(Lcom/flurry/sdk/iu;)V

    const/4 v4, 0x2

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    return-object v1
.end method

.method public final synthetic a(Lcom/flurry/sdk/le;)V
    .locals 10

    check-cast p1, Lcom/flurry/sdk/iv;

    sget-object v0, Lcom/flurry/sdk/iu;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending next pulse report to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sget-wide v0, Lcom/flurry/sdk/iu;->a:J

    :cond_0
    move-wide v4, v0

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->g()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    :cond_1
    move-wide v6, v0

    iget v8, p1, Lcom/flurry/sdk/le;->p:I

    new-instance v9, Lcom/flurry/sdk/iw;

    move-object v0, v9

    move-object v1, p1

    move-wide v2, v4

    move-wide v4, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/iw;-><init>(Lcom/flurry/sdk/iv;JJI)V

    new-instance v0, Lcom/flurry/sdk/la;

    invoke-direct {v0}, Lcom/flurry/sdk/la;-><init>()V

    iget-object v1, p1, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    const v1, 0x186a0

    iput v1, v0, Lcom/flurry/sdk/mg;->u:I

    iget-object v1, p1, Lcom/flurry/sdk/iv;->d:Lcom/flurry/sdk/jc;

    sget-object v2, Lcom/flurry/sdk/jc;->c:Lcom/flurry/sdk/jc;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/flurry/sdk/lk;

    invoke-direct {v1}, Lcom/flurry/sdk/lk;-><init>()V

    iput-object v1, v0, Lcom/flurry/sdk/la;->c:Lcom/flurry/sdk/lo;

    iget-object v1, p1, Lcom/flurry/sdk/iv;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/la;->b:Ljava/lang/Object;

    :cond_2
    sget-object v1, Lcom/flurry/sdk/lc$a;->c:Lcom/flurry/sdk/lc$a;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/flurry/sdk/lc$a;->b:Lcom/flurry/sdk/lc$a;

    :goto_0
    iput-object v1, v0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    iget v1, p1, Lcom/flurry/sdk/iv;->i:I

    mul-int/lit16 v2, v1, 0x3e8

    iput v2, v0, Lcom/flurry/sdk/lc;->i:I

    iget v2, p1, Lcom/flurry/sdk/iv;->j:I

    mul-int/lit16 v3, v2, 0x3e8

    iput v3, v0, Lcom/flurry/sdk/lc;->j:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/flurry/sdk/lc;->m:Z

    iput-boolean v3, v0, Lcom/flurry/sdk/lc;->r:Z

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/flurry/sdk/lc;->s:I

    iget-object v1, p1, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/flurry/sdk/lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flurry/sdk/lc;->k:Z

    new-instance v1, Lcom/flurry/sdk/iu$2;

    invoke-direct {v1, p0, p1, v9}, Lcom/flurry/sdk/iu$2;-><init>(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iw;)V

    iput-object v1, v0, Lcom/flurry/sdk/la;->a:Lcom/flurry/sdk/la$a;

    invoke-static {}, Lcom/flurry/sdk/ke;->a()Lcom/flurry/sdk/ke;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/flurry/sdk/kt;->a(Ljava/lang/Object;Lcom/flurry/sdk/mg;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iv;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    invoke-static {}, Lcom/flurry/sdk/iy;->d()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/iu;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restoring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from report queue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iz;

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/iy;->b(Lcom/flurry/sdk/iz;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    invoke-static {}, Lcom/flurry/sdk/iy;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iz;

    invoke-virtual {v1}, Lcom/flurry/sdk/iz;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/iv;

    iget-boolean v4, v2, Lcom/flurry/sdk/iv;->m:Z

    if-nez v4, :cond_4

    sget-object v4, Lcom/flurry/sdk/iu;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Callback for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v6, v6, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not completed.  Adding to reporter queue."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iv;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/iy;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
