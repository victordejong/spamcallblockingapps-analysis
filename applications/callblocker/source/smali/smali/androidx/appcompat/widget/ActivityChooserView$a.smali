.class Landroidx/appcompat/widget/ActivityChooserView$a;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;

.field private b:Landroidx/appcompat/widget/d;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# virtual methods
.method public a()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 796
    iget v5, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->c:I

    .line 797
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->c:I

    .line 802
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 803
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 804
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$a;->getCount()I

    move-result v8

    move v0, v1

    move-object v2, v3

    move v4, v1

    .line 806
    :goto_0
    if-ge v0, v8, :cond_0

    .line 807
    invoke-virtual {p0, v0, v2, v3}, Landroidx/appcompat/widget/ActivityChooserView$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 808
    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    .line 809
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 806
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    goto :goto_0

    .line 812
    :cond_0
    iput v5, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->c:I

    .line 814
    return v4
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->c:I

    if-eq v0, p1, :cond_0

    .line 819
    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->c:I

    .line 820
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 822
    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/widget/d;)V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/d;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/d;->unregisterObserver(Ljava/lang/Object;)V

    .line 698
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Landroidx/appcompat/widget/d;

    .line 699
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/d;->registerObserver(Ljava/lang/Object;)V

    .line 702
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 703
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->f:Z

    if-eq v0, p1, :cond_0

    .line 830
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->f:Z

    .line 831
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 833
    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->d:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->e:Z

    if-eq v0, p2, :cond_1

    .line 851
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->d:Z

    .line 852
    iput-boolean p2, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->e:Z

    .line 853
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 855
    :cond_1
    return-void
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()I

    move-result v0

    return v0
.end method

.method public d()Landroidx/appcompat/widget/d;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Landroidx/appcompat/widget/d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->d:Z

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 721
    .line 722
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()I

    move-result v0

    .line 723
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Landroidx/appcompat/widget/d;

    invoke-virtual {v1}, Landroidx/appcompat/widget/d;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 724
    add-int/lit8 v0, v0, -0x1

    .line 726
    :cond_0
    iget v1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 727
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->f:Z

    if-eqz v1, :cond_1

    .line 728
    add-int/lit8 v0, v0, 0x1

    .line 730
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 735
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    .line 736
    packed-switch v0, :pswitch_data_0

    .line 745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 738
    :pswitch_0
    const/4 v0, 0x0

    .line 743
    :goto_0
    return-object v0

    .line 740
    :pswitch_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    add-int/lit8 p1, p1, 0x1

    .line 743
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Landroidx/appcompat/widget/d;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    .line 736
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 751
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 708
    const/4 v0, 0x1

    .line 710
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 756
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    .line 757
    packed-switch v0, :pswitch_data_0

    .line 789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 759
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 760
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$g;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 762
    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    .line 763
    sget v0, Landroidx/appcompat/a$f;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 764
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$h;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    :cond_1
    :goto_0
    return-object p2

    .line 769
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroidx/appcompat/a$f;->list_item:I

    if-eq v0, v1, :cond_3

    .line 770
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$g;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 773
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 775
    sget v0, Landroidx/appcompat/a$f;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 776
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 777
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    sget v0, Landroidx/appcompat/a$f;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 780
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->d:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->e:Z

    if-eqz v0, :cond_4

    .line 783
    invoke-virtual {p2, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 785
    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 757
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x3

    return v0
.end method
