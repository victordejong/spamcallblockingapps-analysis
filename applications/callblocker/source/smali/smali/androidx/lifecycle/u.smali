.class public Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "ViewModelStore.java"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroidx/lifecycle/s;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/s;

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/s;

    .line 62
    invoke-virtual {v0}, Landroidx/lifecycle/s;->d()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 65
    return-void
.end method

.method final a(Ljava/lang/String;Landroidx/lifecycle/s;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/s;

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroidx/lifecycle/s;->a()V

    .line 47
    :cond_0
    return-void
.end method
