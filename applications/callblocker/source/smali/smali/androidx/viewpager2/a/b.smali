.class final Landroidx/viewpager2/a/b;
.super Landroidx/viewpager2/a/f$b;
.source "CompositeOnPageChangeCallback.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/viewpager2/a/f$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(Ljava/util/ConcurrentModificationException;)V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Adding and removing callbacks during dispatch to callbacks is not supported"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/a/f$b;

    .line 73
    invoke-virtual {v0, p1}, Landroidx/viewpager2/a/f$b;->a(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-direct {p0, v0}, Landroidx/viewpager2/a/b;->a(Ljava/util/ConcurrentModificationException;)V

    .line 78
    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/a/f$b;

    .line 59
    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/a/f$b;->a(IFI)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-direct {p0, v0}, Landroidx/viewpager2/a/b;->a(Ljava/util/ConcurrentModificationException;)V

    .line 64
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/a/f$b;

    .line 87
    invoke-virtual {v0, p1}, Landroidx/viewpager2/a/f$b;->b(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-direct {p0, v0}, Landroidx/viewpager2/a/b;->a(Ljava/util/ConcurrentModificationException;)V

    .line 92
    :cond_0
    return-void
.end method
