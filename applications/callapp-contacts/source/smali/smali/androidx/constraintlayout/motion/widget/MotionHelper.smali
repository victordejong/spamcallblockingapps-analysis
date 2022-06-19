.class public Landroidx/constraintlayout/motion/widget/MotionHelper;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$g;


# instance fields
.field a:Z

.field b:Z

.field protected c:[Landroid/view/View;

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->a:Z

    .line 18
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->a:Z

    .line 18
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->b:Z

    .line 28
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->a:Z

    .line 18
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->b:Z

    .line 33
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/e$b;->MotionHelper:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 46
    sget v3, Landroidx/constraintlayout/widget/e$b;->MotionHelper_onShow:I

    if-ne v2, v3, :cond_0

    .line 47
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->a:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->a:Z

    goto :goto_1

    .line 48
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/e$b;->MotionHelper_onHide:I

    if-ne v2, v3, :cond_1

    .line 49
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->b:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->b:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    .line 81
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->d:F

    .line 82
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->k:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->c:[Landroid/view/View;

    .line 85
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->k:I

    if-ge v1, v0, :cond_0

    .line 86
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->c:[Landroid/view/View;

    aget-object v0, v0, v1

    .line 87
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/MotionHelper;

    if-nez v4, :cond_2

    .line 98
    invoke-virtual {p0, v3, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(Landroid/view/View;F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setProgress(Landroid/view/View;F)V
    .locals 0

    return-void
.end method
