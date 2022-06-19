.class public final Landroidx/appcompat/app/c;
.super Landroidx/appcompat/app/f;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/c;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 98
    invoke-static {p1, p2}, Landroidx/appcompat/app/c;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;I)V

    .line 99
    new-instance p1, Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/f;Landroid/view/Window;)V

    iput-object p1, p0, Landroidx/appcompat/app/c;->a:Landroidx/appcompat/app/AlertController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/c;-><init>(Landroid/content/Context;I)V

    .line 105
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/c;->setCancelable(Z)V

    .line 106
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_0

    return p1

    .line 114
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroidx/appcompat/a$a;->alertDialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/app/f;->onCreate(Landroid/os/Bundle;)V

    .line 279
    iget-object p1, p0, Landroidx/appcompat/app/c;->a:Landroidx/appcompat/app/AlertController;

    .line 1237
    iget v0, p1, Landroidx/appcompat/app/AlertController;->K:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1240
    iget v0, p1, Landroidx/appcompat/app/AlertController;->Q:I

    if-ne v0, v1, :cond_0

    .line 1241
    iget v0, p1, Landroidx/appcompat/app/AlertController;->K:I

    goto :goto_0

    .line 1243
    :cond_0
    iget v0, p1, Landroidx/appcompat/app/AlertController;->J:I

    .line 1232
    :goto_0
    iget-object v2, p1, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/f;

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/f;->setContentView(I)V

    .line 1467
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v2, Landroidx/appcompat/a$f;->parentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1468
    sget v2, Landroidx/appcompat/a$f;->topPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1469
    sget v3, Landroidx/appcompat/a$f;->contentPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1470
    sget v4, Landroidx/appcompat/a$f;->buttonPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1474
    sget v5, Landroidx/appcompat/a$f;->customPanel:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1640
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 1641
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    goto :goto_1

    .line 1642
    :cond_1
    iget v5, p1, Landroidx/appcompat/app/AlertController;->i:I

    if-eqz v5, :cond_2

    .line 1643
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1644
    iget v8, p1, Landroidx/appcompat/app/AlertController;->i:I

    invoke-virtual {v5, v8, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    .line 1650
    invoke-static {v5}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1651
    :cond_4
    iget-object v9, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const/high16 v10, 0x20000

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    const/4 v9, -0x1

    const/16 v10, 0x8

    if-eqz v8, :cond_7

    .line 1656
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v11, Landroidx/appcompat/a$f;->custom:I

    invoke-virtual {v8, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1657
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1659
    iget-boolean v5, p1, Landroidx/appcompat/app/AlertController;->n:Z

    if-eqz v5, :cond_6

    .line 1660
    iget v5, p1, Landroidx/appcompat/app/AlertController;->j:I

    iget v11, p1, Landroidx/appcompat/app/AlertController;->k:I

    iget v12, p1, Landroidx/appcompat/app/AlertController;->l:I

    iget v13, p1, Landroidx/appcompat/app/AlertController;->m:I

    invoke-virtual {v8, v5, v11, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1664
    :cond_6
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v5, :cond_8

    .line 1665
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v8, 0x0

    iput v8, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    goto :goto_3

    .line 1668
    :cond_7
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1477
    :cond_8
    :goto_3
    sget v5, Landroidx/appcompat/a$f;->topPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1478
    sget v8, Landroidx/appcompat/a$f;->contentPanel:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1479
    sget v11, Landroidx/appcompat/a$f;->buttonPanel:I

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1482
    invoke-static {v5, v2}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 1483
    invoke-static {v8, v3}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1484
    invoke-static {v11, v4}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 1719
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v8, Landroidx/appcompat/a$f;->scrollView:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    iput-object v5, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 1720
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5, v7}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 1721
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5, v7}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v5, 0x102000b

    .line 1724
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p1, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    .line 1725
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    .line 1729
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    .line 1730
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1732
    :cond_9
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1733
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroidx/core/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 1735
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v5, :cond_a

    .line 1736
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1737
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1738
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1739
    iget-object v11, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 1742
    :cond_a
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    :goto_4
    const v5, 0x1020019

    .line 1763
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 1764
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1766
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_c

    .line 1767
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v5, 0x0

    goto :goto_5

    .line 1769
    :cond_c
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 1771
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    iget v8, p1, Landroidx/appcompat/app/AlertController;->d:I

    iget v11, p1, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v5, v7, v7, v8, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1772
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1774
    :cond_d
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v5, 0x1

    :goto_5
    const v8, 0x102001a

    .line 1778
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 1779
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v11, p1, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1781
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_e

    .line 1782
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 1784
    :cond_e
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v11, p1, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_f

    .line 1786
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    iget v11, p1, Landroidx/appcompat/app/AlertController;->d:I

    iget v12, p1, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v8, v7, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1787
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v11, p1, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1789
    :cond_f
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v5, v5, 0x2

    :goto_6
    const v8, 0x102001b

    .line 1793
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 1794
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v11, p1, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1796
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_10

    .line 1797
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    .line 1799
    :cond_10
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v11, p1, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1800
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_11

    .line 1801
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    iget v11, p1, Landroidx/appcompat/app/AlertController;->d:I

    iget v12, p1, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v8, v7, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1802
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v11, p1, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1804
    :cond_11
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v5, v5, 0x4

    .line 1808
    :goto_7
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 2177
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 2178
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v12, Landroidx/appcompat/a$a;->alertDialogCenterButtons:I

    invoke-virtual {v8, v12, v11, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2179
    iget v8, v11, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_12

    const/4 v8, 0x1

    goto :goto_8

    :cond_12
    const/4 v8, 0x0

    :goto_8
    const/4 v11, 0x2

    if-eqz v8, :cond_15

    if-ne v5, v1, :cond_13

    .line 1814
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-static {v8}, Landroidx/appcompat/app/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_9

    :cond_13
    if-ne v5, v11, :cond_14

    .line 1816
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-static {v8}, Landroidx/appcompat/app/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_9

    :cond_14
    const/4 v8, 0x4

    if-ne v5, v8, :cond_15

    .line 1818
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-static {v8}, Landroidx/appcompat/app/AlertController;->a(Landroid/widget/Button;)V

    :cond_15
    :goto_9
    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_a

    :cond_16
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_17

    .line 1824
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2673
    :cond_17
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    if-eqz v5, :cond_18

    .line 2675
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v5, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2678
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    invoke-virtual {v2, v8, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2681
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v8, Landroidx/appcompat/a$f;->title_template:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2682
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 2684
    :cond_18
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v8, 0x1020006

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 2686
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_1b

    .line 2687
    iget-boolean v5, p1, Landroidx/appcompat/app/AlertController;->P:Z

    if-eqz v5, :cond_1b

    .line 2689
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v8, Landroidx/appcompat/a$f;->alertTitle:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p1, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    .line 2690
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2695
    iget v5, p1, Landroidx/appcompat/app/AlertController;->B:I

    if-eqz v5, :cond_19

    .line 2696
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    iget v8, p1, Landroidx/appcompat/app/AlertController;->B:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 2697
    :cond_19
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1a

    .line 2698
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 2702
    :cond_1a
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v8

    iget-object v9, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 2703
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v9

    iget-object v12, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 2704
    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v12

    iget-object v13, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 2705
    invoke-virtual {v13}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v13

    .line 2702
    invoke-virtual {v5, v8, v9, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2706
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 2710
    :cond_1b
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v8, Landroidx/appcompat/a$f;->title_template:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2711
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2712
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2713
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_b
    if-eqz v0, :cond_1c

    .line 1491
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_1c

    const/4 v0, 0x1

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    :goto_c
    if-eqz v2, :cond_1d

    .line 1493
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_1d

    const/4 v5, 0x1

    goto :goto_d

    :cond_1d
    const/4 v5, 0x0

    :goto_d
    if-eqz v4, :cond_1e

    .line 1495
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_1e

    const/4 v4, 0x1

    goto :goto_e

    :cond_1e
    const/4 v4, 0x0

    :goto_e
    if-nez v4, :cond_1f

    if-eqz v3, :cond_1f

    .line 1500
    sget v8, Landroidx/appcompat/a$f;->textSpacerNoButtons:I

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1f

    .line 1502
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    if-eqz v5, :cond_23

    .line 1509
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz v8, :cond_20

    .line 1510
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v8, v1}, Landroidx/core/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 1515
    :cond_20
    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-nez v8, :cond_22

    iget-object v8, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v8, :cond_21

    goto :goto_f

    :cond_21
    move-object v2, v6

    goto :goto_10

    .line 1516
    :cond_22
    :goto_f
    sget v8, Landroidx/appcompat/a$f;->titleDividerNoCustom:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_10
    if-eqz v2, :cond_24

    .line 1520
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_23
    if-eqz v3, :cond_24

    .line 1524
    sget v2, Landroidx/appcompat/a$f;->textSpacerNoTitle:I

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 1526
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    :cond_24
    :goto_11
    iget-object v2, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    instance-of v2, v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v2, :cond_25

    .line 1532
    iget-object v2, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v2, v5, v4}, Landroidx/appcompat/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_25
    if-nez v0, :cond_30

    .line 1537
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_26

    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    goto :goto_12

    :cond_26
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    :goto_12
    if-eqz v0, :cond_30

    if-eqz v4, :cond_27

    const/4 v7, 0x2

    :cond_27
    or-int v2, v5, v7

    .line 3560
    iget-object v4, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v5, Landroidx/appcompat/a$f;->scrollIndicatorUp:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3561
    iget-object v5, p1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v7, Landroidx/appcompat/a$f;->scrollIndicatorDown:I

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3563
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_29

    const/4 v6, 0x3

    .line 3565
    invoke-static {v0, v2, v6}, Landroidx/core/view/v;->a(Landroid/view/View;II)V

    if-eqz v4, :cond_28

    .line 3568
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_28
    if-eqz v5, :cond_30

    .line 3571
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_14

    :cond_29
    if-eqz v4, :cond_2a

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_2a

    .line 3576
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v4, v6

    :cond_2a
    if-eqz v5, :cond_2b

    and-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_2b

    .line 3580
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_13

    :cond_2b
    move-object v6, v5

    :goto_13
    if-nez v4, :cond_2c

    if-eqz v6, :cond_30

    .line 3588
    :cond_2c
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2d

    .line 3590
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Landroidx/appcompat/app/AlertController$2;

    invoke-direct {v2, p1, v4, v6}, Landroidx/appcompat/app/AlertController$2;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    .line 3600
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Landroidx/appcompat/app/AlertController$3;

    invoke-direct {v2, p1, v4, v6}, Landroidx/appcompat/app/AlertController$3;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 3606
    :cond_2d
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_2e

    .line 3608
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v2, Landroidx/appcompat/app/AlertController$4;

    invoke-direct {v2, p1, v4, v6}, Landroidx/appcompat/app/AlertController$4;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3619
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v2, Landroidx/appcompat/app/AlertController$5;

    invoke-direct {v2, p1, v4, v6}, Landroidx/appcompat/app/AlertController$5;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    :cond_2e
    if-eqz v4, :cond_2f

    .line 3628
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2f
    if-eqz v6, :cond_30

    .line 3631
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1546
    :cond_30
    :goto_14
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_31

    .line 1547
    iget-object v2, p1, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_31

    .line 1548
    iget-object v2, p1, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1549
    iget p1, p1, Landroidx/appcompat/app/AlertController;->I:I

    if-ltz p1, :cond_31

    .line 1551
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1552
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_31
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 284
    iget-object v0, p0, Landroidx/appcompat/app/c;->a:Landroidx/appcompat/app/AlertController;

    .line 4422
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 287
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/f;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 292
    iget-object v0, p0, Landroidx/appcompat/app/c;->a:Landroidx/appcompat/app/AlertController;

    .line 4427
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 295
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/f;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroidx/appcompat/app/f;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Landroidx/appcompat/app/c;->a:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertController;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
