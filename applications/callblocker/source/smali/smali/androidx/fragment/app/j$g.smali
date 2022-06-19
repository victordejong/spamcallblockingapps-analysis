.class Landroidx/fragment/app/j$g;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"

# interfaces
.implements Landroidx/fragment/app/Fragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field final a:Z

.field final b:Landroidx/fragment/app/a;

.field private c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/a;Z)V
    .locals 0

    .prologue
    .line 3329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3330
    iput-boolean p2, p0, Landroidx/fragment/app/j$g;->a:Z

    .line 3331
    iput-object p1, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    .line 3332
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 3341
    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/fragment/app/j$g;->c:I

    .line 3342
    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    if-eqz v0, :cond_0

    .line 3346
    :goto_0
    return-void

    .line 3345
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 3355
    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/fragment/app/j$g;->c:I

    .line 3356
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 3362
    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3372
    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    if-lez v0, :cond_1

    move v1, v2

    .line 3373
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-object v5, v0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    .line 3374
    iget-object v0, v5, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    .line 3375
    :goto_1
    if-ge v4, v6, :cond_2

    .line 3376
    iget-object v0, v5, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 3377
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment$b;)V

    .line 3378
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->aq()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3379
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->V()V

    .line 3375
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v3

    .line 3372
    goto :goto_0

    .line 3382
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v4, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-boolean v5, p0, Landroidx/fragment/app/j$g;->a:Z

    if-nez v1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v0, v4, v5, v3, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/a;ZZZ)V

    .line 3383
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3390
    iget-object v0, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-boolean v2, p0, Landroidx/fragment/app/j$g;->a:Z

    invoke-virtual {v0, v1, v2, v3, v3}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/a;ZZZ)V

    .line 3391
    return-void
.end method
