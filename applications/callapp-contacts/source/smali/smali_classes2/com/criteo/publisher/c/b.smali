.class public final Lcom/criteo/publisher/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/c/a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/c/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/criteo/publisher/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/c/a;

    .line 39
    invoke-interface {v1}, Lcom/criteo/publisher/c/a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/criteo/publisher/c/a;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/criteo/publisher/c/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/criteo/publisher/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/c/a;

    .line 67
    invoke-interface {v1, p1, p2}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/c/a;

    .line 46
    invoke-interface {v1, p1}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/o;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/criteo/publisher/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/c/a;

    .line 53
    invoke-interface {v1, p1, p2}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/criteo/publisher/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/c/a;

    .line 60
    invoke-interface {v1, p1, p2}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/criteo/publisher/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/c/a;

    .line 74
    invoke-interface {v1, p1}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/s;)V

    goto :goto_0

    :cond_0
    return-void
.end method
