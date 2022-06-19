.class final Landroidx/appcompat/widget/Toolbar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/appcompat/view/menu/g;

.field b:Landroidx/appcompat/view/menu/i;

.field final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 2445
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .line 2451
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    .line 2452
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/i;)Z

    .line 2454
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 2465
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz p1, :cond_2

    .line 2468
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2469
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2471
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2472
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2481
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar$a;->c(Landroidx/appcompat/view/menu/i;)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroidx/appcompat/view/menu/i;)Z
    .locals 6

    .line 2506
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->g()V

    .line 2507
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2508
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2509
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2510
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2512
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2514
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    .line 2515
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    .line 2516
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2517
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    .line 2518
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2519
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2521
    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->h()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 2522
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget v3, v3, Landroidx/appcompat/widget/Toolbar;->d:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v1, v3

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    .line 2523
    iput v2, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    .line 2524
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2525
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2528
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    .line 3236
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_5

    .line 3239
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3240
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 3241
    iget v5, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-eq v5, v2, :cond_4

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v4, v5, :cond_4

    .line 3242
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->removeViewAt(I)V

    .line 3243
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2529
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2530
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/i;->d(Z)V

    .line 2532
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    instance-of p1, p1, Landroidx/appcompat/view/c;

    if-eqz p1, :cond_6

    .line 2533
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    check-cast p1, Landroidx/appcompat/view/c;

    invoke-interface {p1}, Landroidx/appcompat/view/c;->a()V

    :cond_6
    return v3
.end method

.method public final c(Landroidx/appcompat/view/menu/i;)Z
    .locals 2

    .line 2543
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    instance-of v0, v0, Landroidx/appcompat/view/c;

    if-eqz v0, :cond_0

    .line 2544
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/c;

    invoke-interface {v0}, Landroidx/appcompat/view/c;->b()V

    .line 2547
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2548
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2549
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    .line 2551
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->j()V

    .line 2552
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    .line 2553
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    const/4 v0, 0x0

    .line 2554
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/i;->d(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final f()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
