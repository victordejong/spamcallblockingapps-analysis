.class Landroidx/appcompat/widget/ActivityChooserView$b;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method private a()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->f:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->f:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 662
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->c:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 619
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 621
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/d;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 622
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/d;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_0

    .line 624
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->b:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_2

    .line 628
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Z

    .line 629
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->h:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->a(I)V

    goto :goto_0

    .line 631
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 652
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserView$b;->a()V

    .line 653
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->d:Landroidx/core/h/b;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->d:Landroidx/core/h/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/h/b;->a(Z)V

    .line 656
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 587
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    .line 588
    packed-switch v0, :pswitch_data_0

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 590
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->a(I)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 593
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    .line 594
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Z

    if-eqz v0, :cond_1

    .line 596
    if-lez p3, :cond_0

    .line 597
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/d;->c(I)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/d;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_0

    .line 605
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 602
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 638
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->c:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 639
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 640
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iput-boolean v2, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Z

    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->h:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->a(I)V

    .line 646
    :cond_0
    return v2

    .line 644
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
