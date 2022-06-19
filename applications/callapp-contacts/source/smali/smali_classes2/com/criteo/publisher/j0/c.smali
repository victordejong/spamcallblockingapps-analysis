.class public final Lcom/criteo/publisher/j0/c;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/j0/g;

.field private final b:Lcom/criteo/publisher/model/p;

.field private final c:Lcom/criteo/publisher/h;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/criteo/publisher/context/ContextData;

.field private final f:Lcom/criteo/publisher/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/h;Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/j0/g;",
            "Lcom/criteo/publisher/model/p;",
            "Lcom/criteo/publisher/h;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            "Lcom/criteo/publisher/g;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/criteo/publisher/j0/c;->a:Lcom/criteo/publisher/j0/g;

    .line 61
    iput-object p2, p0, Lcom/criteo/publisher/j0/c;->b:Lcom/criteo/publisher/model/p;

    .line 62
    iput-object p3, p0, Lcom/criteo/publisher/j0/c;->c:Lcom/criteo/publisher/h;

    .line 63
    iput-object p4, p0, Lcom/criteo/publisher/j0/c;->d:Ljava/util/List;

    .line 64
    iput-object p5, p0, Lcom/criteo/publisher/j0/c;->e:Lcom/criteo/publisher/context/ContextData;

    .line 65
    iput-object p6, p0, Lcom/criteo/publisher/j0/c;->f:Lcom/criteo/publisher/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/criteo/publisher/j0/c;->b:Lcom/criteo/publisher/model/p;

    iget-object v1, p0, Lcom/criteo/publisher/j0/c;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/criteo/publisher/j0/c;->e:Lcom/criteo/publisher/context/ContextData;

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/model/p;->a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)Lcom/criteo/publisher/model/o;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/criteo/publisher/j0/c;->b:Lcom/criteo/publisher/model/p;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/p;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/criteo/publisher/j0/c;->f:Lcom/criteo/publisher/g;

    const-string v3, "cdbRequest"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    iget-object v2, v2, Lcom/criteo/publisher/g;->b:Lcom/criteo/publisher/c/a;

    invoke-interface {v2, v0}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/o;)V

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/criteo/publisher/j0/c;->a:Lcom/criteo/publisher/j0/g;

    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/j0/g;->a(Lcom/criteo/publisher/model/o;Ljava/lang/String;)Lcom/criteo/publisher/model/r;

    move-result-object v1

    .line 1085
    iget-object v2, p0, Lcom/criteo/publisher/j0/c;->c:Lcom/criteo/publisher/h;

    invoke-interface {v2}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v2

    .line 1086
    invoke-virtual {v1}, Lcom/criteo/publisher/model/r;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/criteo/publisher/model/s;

    .line 1087
    invoke-virtual {v5, v2, v3}, Lcom/criteo/publisher/model/s;->a(J)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/criteo/publisher/j0/c;->f:Lcom/criteo/publisher/g;

    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/g;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 80
    iget-object v2, p0, Lcom/criteo/publisher/j0/c;->f:Lcom/criteo/publisher/g;

    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/g;->a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V

    return-void
.end method
