.class final Landroidx/viewpager2/adapter/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/viewpager2/widget/ViewPager2$e;

.field b:Landroidx/recyclerview/widget/RecyclerView$c;

.field c:Landroidx/lifecycle/n;

.field d:Landroidx/viewpager2/widget/ViewPager2;

.field final synthetic e:Landroidx/viewpager2/adapter/a;

.field private f:J


# direct methods
.method constructor <init>(Landroidx/viewpager2/adapter/a;)V
    .locals 2

    .line 617
    iput-object p1, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 623
    iput-wide v0, p0, Landroidx/viewpager2/adapter/a$b;->f:J

    return-void
.end method

.method static a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 2

    .line 732
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 733
    instance-of v0, p0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    .line 734
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    return-object p0

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Expected ViewPager2 instance. Got: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a(Z)V
    .locals 9

    .line 672
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    .line 1470
    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 1687
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    .line 2360
    iget v0, v0, Landroidx/viewpager2/widget/e;->b:I

    if-eqz v0, :cond_1

    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->c()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/a;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 684
    :cond_2
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2675
    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    .line 685
    iget-object v1, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v1}, Landroidx/viewpager2/adapter/a;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    .line 691
    :cond_3
    iget-object v1, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/adapter/a;->getItemId(I)J

    move-result-wide v0

    .line 692
    iget-wide v2, p0, Landroidx/viewpager2/adapter/a$b;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    return-void

    .line 696
    :cond_4
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    iget-object p1, p1, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    const/4 v2, 0x0

    .line 3109
    invoke-virtual {p1, v0, v1, v2}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 696
    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_b

    .line 697
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 701
    :cond_5
    iput-wide v0, p0, Landroidx/viewpager2/adapter/a$b;->f:J

    .line 702
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    iget-object p1, p1, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 705
    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    iget-object v3, v3, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v3}, Landroidx/b/d;->b()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 706
    iget-object v3, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    iget-object v3, v3, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v3, v1}, Landroidx/b/d;->b(I)J

    move-result-wide v3

    .line 707
    iget-object v5, p0, Landroidx/viewpager2/adapter/a$b;->e:Landroidx/viewpager2/adapter/a;

    iget-object v5, v5, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v5, v1}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 709
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 713
    iget-wide v6, p0, Landroidx/viewpager2/adapter/a$b;->f:J

    cmp-long v8, v3, v6

    if-eqz v8, :cond_6

    .line 714
    sget-object v6, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {p1, v5, v6}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/s;

    goto :goto_1

    :cond_6
    move-object v2, v5

    .line 719
    :goto_1
    iget-wide v6, p0, Landroidx/viewpager2/adapter/a$b;->f:J

    cmp-long v8, v3, v6

    if-nez v8, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    .line 722
    sget-object v0, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/s;

    .line 725
    :cond_a
    invoke-virtual {p1}, Landroidx/fragment/app/s;->h()Z

    move-result v0

    if-nez v0, :cond_b

    .line 726
    invoke-virtual {p1}, Landroidx/fragment/app/s;->d()V

    :cond_b
    :goto_3
    return-void
.end method
