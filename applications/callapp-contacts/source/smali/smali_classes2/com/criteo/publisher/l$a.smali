.class final Lcom/criteo/publisher/l$a;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/criteo/publisher/l;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/l;Ljava/util/List;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/criteo/publisher/l$a;->b:Lcom/criteo/publisher/l;

    iput-object p2, p0, Lcom/criteo/publisher/l$a;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/criteo/publisher/l$a;->b:Lcom/criteo/publisher/l;

    invoke-static {v0}, Lcom/criteo/publisher/l;->a(Lcom/criteo/publisher/l;)Lcom/criteo/publisher/e;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/l$a;->a:Ljava/util/List;

    .line 1379
    iget-object v2, v0, Lcom/criteo/publisher/e;->c:Lcom/criteo/publisher/j0/b;

    iget-object v3, v0, Lcom/criteo/publisher/e;->a:Lcom/criteo/publisher/model/t;

    .line 2093
    iget-object v4, v2, Lcom/criteo/publisher/j0/b;->d:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/criteo/publisher/j0/b$b;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lcom/criteo/publisher/j0/b$b;-><init>(Lcom/criteo/publisher/j0/b;Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/j0/b$a;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1381
    iget-object v2, v0, Lcom/criteo/publisher/e;->a:Lcom/criteo/publisher/model/t;

    invoke-virtual {v2}, Lcom/criteo/publisher/model/t;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1382
    iget-object v2, v0, Lcom/criteo/publisher/e;->b:Lcom/criteo/publisher/model/g;

    invoke-virtual {v2, v1}, Lcom/criteo/publisher/model/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1384
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1385
    new-instance v3, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v3}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/criteo/publisher/e;->a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
