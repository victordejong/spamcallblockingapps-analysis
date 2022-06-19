.class Landroidx/work/impl/a/b/d$1;
.super Ljava/lang/Object;
.source "ConstraintTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/a/b/d;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/work/impl/a/b/d;


# direct methods
.method constructor <init>(Landroidx/work/impl/a/b/d;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Landroidx/work/impl/a/b/d$1;->b:Landroidx/work/impl/a/b/d;

    iput-object p2, p0, Landroidx/work/impl/a/b/d$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Landroidx/work/impl/a/b/d$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/a/a;

    .line 114
    iget-object v2, p0, Landroidx/work/impl/a/b/d$1;->b:Landroidx/work/impl/a/b/d;

    iget-object v2, v2, Landroidx/work/impl/a/b/d;->c:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroidx/work/impl/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method
