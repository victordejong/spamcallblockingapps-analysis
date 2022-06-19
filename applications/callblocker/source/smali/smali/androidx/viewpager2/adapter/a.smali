.class public abstract Landroidx/viewpager2/adapter/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroidx/viewpager2/adapter/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/adapter/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a",
        "<",
        "Landroidx/viewpager2/adapter/b;",
        ">;",
        "Landroidx/viewpager2/adapter/c;"
    }
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/e;

.field final b:Landroidx/fragment/app/i;

.field final c:Landroidx/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/d",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/viewpager2/adapter/a$a;


# direct methods
.method private a(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/i;

    new-instance v1, Landroidx/viewpager2/adapter/a$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/viewpager2/adapter/a$1;-><init>(Landroidx/viewpager2/adapter/a;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/i$a;Z)V

    .line 382
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 403
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 395
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 398
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    :cond_3
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method a(Landroidx/viewpager2/adapter/b;)V
    .locals 6

    .prologue
    .line 285
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/b/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 286
    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->B()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 290
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;

    move-result-object v2

    .line 311
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 317
    invoke-direct {p0, v0, v1}, Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 361
    :cond_2
    :goto_0
    return-void

    .line 322
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, v1, :cond_2

    .line 324
    invoke-virtual {p0, v2, v1}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_0

    .line 330
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 331
    invoke-virtual {p0, v2, v1}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_0

    .line 336
    :cond_5
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->e()Z

    move-result v2

    if-nez v2, :cond_6

    .line 337
    invoke-direct {p0, v0, v1}, Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 338
    iget-object v1, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/i;

    invoke-virtual {v1}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->g()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    .line 340
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/o;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroidx/fragment/app/o;->d()V

    .line 342
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->d:Landroidx/viewpager2/adapter/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/adapter/a$a;->a(Z)V

    goto :goto_0

    .line 344
    :cond_6
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->a:Landroidx/lifecycle/e;

    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;

    invoke-direct {v1, p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;-><init>(Landroidx/viewpager2/adapter/a;Landroidx/viewpager2/adapter/b;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    goto :goto_0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 486
    int-to-long v0, p1

    return-wide v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->f()Z

    move-result v0

    return v0
.end method
