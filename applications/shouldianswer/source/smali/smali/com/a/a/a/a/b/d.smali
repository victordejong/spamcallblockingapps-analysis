.class public Lcom/a/a/a/a/b/d;
.super Lcom/a/a/a/a/b/c;
.source "RefactoredDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a/b/d$c;,
        Lcom/a/a/a/a/b/d$b;,
        Lcom/a/a/a/a/b/d$d;,
        Lcom/a/a/a/a/b/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/a/a/a/a/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$w;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 69
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/a/a/a/a/b/c;->a(Landroidx/recyclerview/widget/RecyclerView$w;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected l()V
    .locals 1

    .line 40
    new-instance v0, Lcom/a/a/a/a/b/d$a;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/b/d$a;-><init>(Lcom/a/a/a/a/b/a;)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b/d;->a(Lcom/a/a/a/a/b/a/d;)V

    .line 41
    new-instance v0, Lcom/a/a/a/a/b/d$d;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/b/d$d;-><init>(Lcom/a/a/a/a/b/a;)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b/d;->a(Lcom/a/a/a/a/b/a/h;)V

    .line 42
    new-instance v0, Lcom/a/a/a/a/b/d$b;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/b/d$b;-><init>(Lcom/a/a/a/a/b/a;)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b/d;->a(Lcom/a/a/a/a/b/a/f;)V

    .line 43
    new-instance v0, Lcom/a/a/a/a/b/d$c;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/b/d$c;-><init>(Lcom/a/a/a/a/b/a;)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b/d;->a(Lcom/a/a/a/a/b/a/g;)V

    return-void
.end method

.method protected n()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/a/a/a/a/b/d;->o()V

    return-void
.end method
