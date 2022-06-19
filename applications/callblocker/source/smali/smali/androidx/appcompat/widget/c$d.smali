.class Landroidx/appcompat/widget/c$d;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/c;

.field private final b:[F


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 633
    iput-object p1, p0, Landroidx/appcompat/widget/c$d;->a:Landroidx/appcompat/widget/c;

    .line 634
    const/4 v0, 0x0

    sget v1, Landroidx/appcompat/a$a;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 631
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/appcompat/widget/c$d;->b:[F

    .line 636
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/c$d;->setClickable(Z)V

    .line 637
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/c$d;->setFocusable(Z)V

    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$d;->setVisibility(I)V

    .line 639
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/c$d;->setEnabled(Z)V

    .line 641
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/ar;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 643
    new-instance v0, Landroidx/appcompat/widget/c$d$1;

    invoke-direct {v0, p0, p0, p1}, Landroidx/appcompat/widget/c$d$1;-><init>(Landroidx/appcompat/widget/c$d;Landroid/view/View;Landroidx/appcompat/widget/c;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 672
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 676
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    :goto_0
    return v1

    .line 680
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c$d;->playSoundEffect(I)V

    .line 681
    iget-object v0, p0, Landroidx/appcompat/widget/c$d;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->e()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 8

    .prologue
    .line 697
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result v0

    .line 700
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 701
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 702
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getWidth()I

    move-result v1

    .line 704
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getHeight()I

    move-result v3

    .line 705
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 706
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 707
    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroidx/appcompat/widget/c$d;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 708
    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 709
    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 710
    sub-int v5, v1, v4

    sub-int v6, v3, v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    invoke-static {v2, v5, v6, v1, v3}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 714
    :cond_0
    return v0
.end method
