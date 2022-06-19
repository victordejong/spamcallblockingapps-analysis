.class public Lnd$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/fragment/app/Fragment$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Led;

.field public c:I


# direct methods
.method public constructor <init>(Led;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lnd$k;->a:Z

    iput-object p1, p0, Lnd$k;->b:Led;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lnd$k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnd$k;->c:I

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lnd$k;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnd$k;->c:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnd$k;->b:Led;

    iget-object v0, v0, Led;->r:Lnd;

    invoke-virtual {v0}, Lnd;->W0()V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lnd$k;->b:Led;

    iget-object v1, v0, Led;->r:Lnd;

    iget-boolean v2, p0, Lnd$k;->a:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lnd;->o(Led;ZZZ)V

    return-void
.end method

.method public d()V
    .locals 5

    iget v0, p0, Lnd$k;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lnd$k;->b:Led;

    iget-object v2, v2, Led;->r:Lnd;

    invoke-virtual {v2}, Lnd;->i0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$f;)V

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lnd$k;->b:Led;

    iget-object v3, v2, Led;->r:Lnd;

    iget-boolean v4, p0, Lnd$k;->a:Z

    xor-int/2addr v0, v1

    invoke-virtual {v3, v2, v4, v0, v1}, Lnd;->o(Led;ZZZ)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lnd$k;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
