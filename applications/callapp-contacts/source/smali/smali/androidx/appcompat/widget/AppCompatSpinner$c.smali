.class final Landroidx/appcompat/widget/AppCompatSpinner$c;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Landroid/widget/ListAdapter;

.field final c:Landroid/graphics/Rect;

.field final synthetic d:Landroidx/appcompat/widget/AppCompatSpinner;

.field private o:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 968
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 969
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 965
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->c:Landroid/graphics/Rect;

    .line 1470
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->i:Landroid/view/View;

    .line 972
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->j()V

    .line 973
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->i()V

    .line 975
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$c$1;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$c$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;Landroidx/appcompat/widget/AppCompatSpinner;)V

    .line 1619
    iput-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Landroidx/appcompat/widget/AppCompatSpinner$c;)V
    .locals 0

    .line 962
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->e_()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 996
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final a(II)V
    .locals 5

    .line 1045
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->e()Z

    move-result v0

    .line 1047
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->h()V

    .line 1049
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->l()V

    .line 1050
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->e_()V

    .line 5946
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    const/4 v2, 0x1

    .line 1052
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1053
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 1054
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1055
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1057
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result p1

    .line 6830
    iget-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    .line 6831
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 7552
    iput-boolean v1, p2, Landroidx/appcompat/widget/DropDownListView;->a:Z

    .line 6833
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    .line 6835
    invoke-virtual {p2}, Landroidx/appcompat/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6836
    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/DropDownListView;->setItemChecked(IZ)V

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 1068
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1070
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$c$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AppCompatSpinner$c$2;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;)V

    .line 1085
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1086
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$c$3;

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$c$3;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 990
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 991
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->b:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 1107
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->o:I

    return-void
.end method

.method final h()V
    .locals 7

    .line 2423
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1010
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v0}, Landroidx/appcompat/widget/ah;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 1013
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1016
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPaddingLeft()I

    move-result v0

    .line 1017
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getPaddingRight()I

    move-result v2

    .line 1018
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatSpinner;->getWidth()I

    move-result v3

    .line 1019
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->b:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_3

    .line 1020
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->b:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 3423
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1020
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 1022
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1023
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->c:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 1027
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d(I)V

    goto :goto_2

    .line 1029
    :cond_3
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 1030
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d(I)V

    goto :goto_2

    .line 1032
    :cond_4
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->b:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d(I)V

    .line 1034
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v4}, Landroidx/appcompat/widget/ah;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 1035
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->k()I

    move-result v0

    sub-int/2addr v3, v0

    .line 4112
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->o:I

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_3

    .line 5112
    :cond_5
    iget v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->o:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 5486
    :goto_3
    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    return-void
.end method
