.class Landroidx/appcompat/widget/AppCompatSpinner$b;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/SpinnerAdapter;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    .line 696
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 697
    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->b:Landroid/widget/ListAdapter;

    .line 700
    :cond_0
    if-eqz p2, :cond_1

    .line 701
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_2

    .line 703
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 705
    invoke-interface {p1}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 706
    invoke-interface {p1, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 715
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    instance-of v0, p1, Landroidx/appcompat/widget/al;

    if-eqz v0, :cond_1

    .line 709
    check-cast p1, Landroidx/appcompat/widget/al;

    .line 710
    invoke-interface {p1}, Landroidx/appcompat/widget/al;->a()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_1

    .line 711
    invoke-interface {p1, p2}, Landroidx/appcompat/widget/al;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->b:Landroid/widget/ListAdapter;

    .line 769
    if-eqz v0, :cond_0

    .line 770
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 772
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    .line 740
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$b;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$b;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->b:Landroid/widget/ListAdapter;

    .line 783
    if-eqz v0, :cond_0

    .line 784
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 786
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 753
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 760
    :cond_0
    return-void
.end method
