.class final Landroidx/appcompat/widget/ActivityChooserView$5;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 284
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$5;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 7

    .line 287
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$5;->a:Landroidx/appcompat/widget/ActivityChooserView;

    .line 1542
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView$a;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 1543
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1548
    :goto_0
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 1833
    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {v1}, Landroidx/appcompat/widget/c;->a()I

    move-result v1

    .line 1549
    iget-object v4, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 1837
    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {v4}, Landroidx/appcompat/widget/c;->c()I

    move-result v4

    if-eq v1, v3, :cond_2

    if-le v1, v3, :cond_1

    if-lez v4, :cond_1

    goto :goto_1

    .line 1562
    :cond_1
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 1551
    :cond_2
    :goto_1
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1552
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 2822
    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {v1}, Landroidx/appcompat/widget/c;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1553
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1554
    iget-object v5, v0, Landroidx/appcompat/widget/ActivityChooserView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1555
    iget v5, v0, Landroidx/appcompat/widget/ActivityChooserView;->l:I

    if-eqz v5, :cond_3

    .line 1556
    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1557
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v0, Landroidx/appcompat/widget/ActivityChooserView;->l:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1559
    iget-object v2, v0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1565
    :cond_3
    :goto_2
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1566
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->b:Landroid/view/View;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1568
    :cond_4
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
