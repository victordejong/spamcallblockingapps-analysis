.class public Landroidx/constraintlayout/widget/Group;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Group;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 85
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/e;->g(I)V

    .line 86
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/a/a/e;->h(I)V

    return-void
.end method

.method protected final a(Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/Group;->n:Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    .line 63
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Group;->d()V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    .line 75
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Group;->d()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Group;->d()V

    return-void
.end method
