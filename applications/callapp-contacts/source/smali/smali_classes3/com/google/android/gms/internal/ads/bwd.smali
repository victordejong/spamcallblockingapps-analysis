.class public final Lcom/google/android/gms/internal/ads/bwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/daq<",
        "Lcom/google/android/gms/internal/ads/cpk;",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field final b:Lcom/google/android/gms/internal/ads/bvx;

.field private final c:Lcom/google/android/gms/internal/ads/cti;

.field private final d:Lcom/google/android/gms/internal/ads/arn;

.field private final e:Lcom/google/android/gms/internal/ads/cuq;

.field private final f:Lcom/google/android/gms/internal/ads/cus;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/anu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/anu<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/bso;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/bvx;Lcom/google/android/gms/internal/ads/arn;Lcom/google/android/gms/internal/ads/cuq;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/anu;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/bso;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cti;",
            "Lcom/google/android/gms/internal/ads/bvx;",
            "Lcom/google/android/gms/internal/ads/arn;",
            "Lcom/google/android/gms/internal/ads/cuq;",
            "Lcom/google/android/gms/internal/ads/cus;",
            "Lcom/google/android/gms/internal/ads/anu<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/bso;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwd;->c:Lcom/google/android/gms/internal/ads/cti;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwd;->b:Lcom/google/android/gms/internal/ads/bvx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bwd;->d:Lcom/google/android/gms/internal/ads/arn;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bwd;->e:Lcom/google/android/gms/internal/ads/cuq;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bwd;->f:Lcom/google/android/gms/internal/ads/cus;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bwd;->h:Lcom/google/android/gms/internal/ads/anu;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bwd;->g:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bwd;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bwd;->i:Lcom/google/android/gms/internal/ads/bso;

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 12
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/cpk;

    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget v2, v2, Lcom/google/android/gms/internal/ads/coz;->e:I

    const/16 v3, 0xc8

    const/16 v4, 0x12c

    if-eqz v2, :cond_2

    if-lt v2, v3, :cond_0

    if-ge v2, v4, :cond_0

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->df:Lcom/google/android/gms/internal/ads/af;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "No fill."

    goto :goto_0

    :cond_0
    if-lt v2, v4, :cond_1

    const/16 v5, 0x190

    if-ge v2, v5, :cond_1

    const-string v2, "No location header to follow redirect or too many redirects."

    goto :goto_0

    :cond_1
    const/16 v5, 0x2e

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Received error HTTP response code: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "No ad config."

    .line 25
    :goto_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/coz;->h:Lcom/google/android/gms/internal/ads/cox;

    if-eqz v5, :cond_3

    .line 1001
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/cox;->a:Ljava/lang/String;

    .line 30
    :cond_3
    sget-object v5, Lcom/google/android/gms/internal/ads/aq;->eT:Lcom/google/android/gms/internal/ads/af;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 33
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget v5, v5, Lcom/google/android/gms/internal/ads/coz;->e:I

    if-lt v5, v3, :cond_4

    if-lt v5, v4, :cond_5

    .line 35
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwo;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhox:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    return-object v1

    .line 36
    :cond_5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bwd;->c:Lcom/google/android/gms/internal/ads/cti;

    sget-object v4, Lcom/google/android/gms/internal/ads/ctj;->zzhtu:Lcom/google/android/gms/internal/ads/ctj;

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csx;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcwo;

    sget-object v5, Lcom/google/android/gms/internal/ads/cqj;->zzhox:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    .line 38
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 39
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v2

    .line 41
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bwd;->d:Lcom/google/android/gms/internal/ads/arn;

    new-instance v4, Lcom/google/android/gms/internal/ads/ajh;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bwd;->f:Lcom/google/android/gms/internal/ads/cus;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bwd;->e:Lcom/google/android/gms/internal/ads/cuq;

    invoke-direct {v4, v1, v5, v6}, Lcom/google/android/gms/internal/ads/ajh;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/cuq;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bwd;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/awl;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 42
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->eU:Lcom/google/android/gms/internal/ads/af;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 46
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpi;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/cov;

    .line 47
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bwd;->i:Lcom/google/android/gms/internal/ads/bso;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/bso;->a(Lcom/google/android/gms/internal/ads/cov;)V

    .line 49
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/cov;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 50
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bwd;->h:Lcom/google/android/gms/internal/ads/anu;

    iget v9, v5, Lcom/google/android/gms/internal/ads/cov;->b:I

    .line 51
    invoke-interface {v8, v9, v7}, Lcom/google/android/gms/internal/ads/anu;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/bsk;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 52
    invoke-interface {v7, v1, v5}, Lcom/google/android/gms/internal/ads/bsk;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_6

    .line 57
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bwd;->i:Lcom/google/android/gms/internal/ads/bso;

    const-wide/16 v7, 0x0

    sget-object v9, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    const/4 v10, 0x0

    .line 58
    invoke-static {v9, v10, v10}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v9

    .line 59
    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/bso;->a(Lcom/google/android/gms/internal/ads/cov;JLcom/google/android/gms/internal/ads/zzvh;)V

    goto :goto_1

    .line 62
    :cond_9
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpi;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/cov;

    .line 63
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/cov;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 64
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bwd;->h:Lcom/google/android/gms/internal/ads/anu;

    iget v9, v5, Lcom/google/android/gms/internal/ads/cov;->b:I

    .line 65
    invoke-interface {v8, v9, v7}, Lcom/google/android/gms/internal/ads/anu;->a(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/bsk;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 66
    invoke-interface {v8, v1, v5}, Lcom/google/android/gms/internal/ads/bsk;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 67
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bwd;->c:Lcom/google/android/gms/internal/ads/cti;

    sget-object v9, Lcom/google/android/gms/internal/ads/ctj;->zzhtv:Lcom/google/android/gms/internal/ads/ctj;

    .line 68
    invoke-virtual {v6, v9, v2}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "render-config-"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1008
    new-instance v6, Lcom/google/android/gms/internal/ads/csz;

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/csz;->e:Lcom/google/android/gms/internal/ads/cst;

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/csz;->a:Ljava/lang/Object;

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/csz;->b:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/csz;->c:Ljava/util/List;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/csz;->d:Lcom/google/android/gms/internal/ads/dbt;

    move-object v10, v6

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/csz;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dbt;Ljava/util/List;Lcom/google/android/gms/internal/ads/dbt;)V

    .line 69
    const-class v2, Ljava/lang/Throwable;

    new-instance v7, Lcom/google/android/gms/internal/ads/bwc;

    invoke-direct {v7, v0, v1, v5, v8}, Lcom/google/android/gms/internal/ads/bwc;-><init>(Lcom/google/android/gms/internal/ads/bwd;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsk;)V

    .line 70
    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/internal/ads/csz;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    return-object v2
.end method
