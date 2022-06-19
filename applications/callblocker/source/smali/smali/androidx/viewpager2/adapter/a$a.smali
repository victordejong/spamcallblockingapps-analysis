.class Landroidx/viewpager2/adapter/a$a;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/adapter/a;

.field private b:Landroidx/viewpager2/a/f;

.field private c:J


# virtual methods
.method a(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->b:Landroidx/viewpager2/a/f;

    invoke-virtual {v0}, Landroidx/viewpager2/a/f;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->b:Landroidx/viewpager2/a/f;

    invoke-virtual {v0}, Landroidx/viewpager2/a/f;->getCurrentItem()I

    move-result v0

    .line 685
    iget-object v1, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v1}, Landroidx/viewpager2/adapter/a;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/adapter/a;->b(I)J

    move-result-wide v4

    .line 692
    iget-wide v0, p0, Landroidx/viewpager2/adapter/a$a;->c:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 696
    :cond_2
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v0, v4, v5}, Landroidx/b/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 697
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iput-wide v4, p0, Landroidx/viewpager2/adapter/a$a;->c:J

    .line 702
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v5

    .line 704
    const/4 v1, 0x0

    move v4, v3

    .line 705
    :goto_1
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->b()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 706
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v0, v4}, Landroidx/b/d;->b(I)J

    move-result-wide v6

    .line 707
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v0, v4}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 709
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v2

    if-nez v2, :cond_3

    .line 705
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 713
    :cond_3
    iget-wide v8, p0, Landroidx/viewpager2/adapter/a$a;->c:J

    cmp-long v2, v6, v8

    if-eqz v2, :cond_4

    .line 714
    sget-object v2, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {v5, v0, v2}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;

    .line 719
    :goto_3
    iget-wide v8, p0, Landroidx/viewpager2/adapter/a$a;->c:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->d(Z)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 716
    goto :goto_3

    :cond_5
    move v2, v3

    .line 719
    goto :goto_4

    .line 721
    :cond_6
    if-eqz v1, :cond_7

    .line 722
    sget-object v0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    invoke-virtual {v5, v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;

    .line 725
    :cond_7
    invoke-virtual {v5}, Landroidx/fragment/app/o;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-virtual {v5}, Landroidx/fragment/app/o;->d()V

    goto/16 :goto_0
.end method
