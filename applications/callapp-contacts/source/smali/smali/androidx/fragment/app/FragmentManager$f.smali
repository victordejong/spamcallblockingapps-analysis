.class final Landroidx/fragment/app/FragmentManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/Fragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field final a:Z

.field final b:Landroidx/fragment/app/a;

.field c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/a;Z)V
    .locals 0

    .line 3551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3552
    iput-boolean p2, p0, Landroidx/fragment/app/FragmentManager$f;->a:Z

    .line 3553
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 3563
    iget v0, p0, Landroidx/fragment/app/FragmentManager$f;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager$f;->c:I

    if-eqz v0, :cond_0

    return-void

    .line 3567
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->g()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 3577
    iget v0, p0, Landroidx/fragment/app/FragmentManager$f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager$f;->c:I

    return-void
.end method

.method final c()V
    .locals 5

    .line 3594
    iget v0, p0, Landroidx/fragment/app/FragmentManager$f;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3595
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    iget-object v2, v2, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/FragmentManager;

    .line 4090
    iget-object v2, v2, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v2}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v2

    .line 3596
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

    .line 3597
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$c;)V

    if-eqz v0, :cond_1

    .line 3598
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3599
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    goto :goto_1

    .line 3602
    :cond_2
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    iget-object v2, v2, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/FragmentManager;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    iget-boolean v4, p0, Landroidx/fragment/app/FragmentManager$f;->a:Z

    xor-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method

.method final d()V
    .locals 4

    .line 3610
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManager$f;->a:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method
