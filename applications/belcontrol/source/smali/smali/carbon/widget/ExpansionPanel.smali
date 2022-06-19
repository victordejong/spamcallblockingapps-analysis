.class public Lcarbon/widget/ExpansionPanel;
.super Lcarbon/widget/LinearLayout;
.source ""


# instance fields
.field public S:Lcarbon/widget/ImageView;

.field public T:Z

.field public U:Lcarbon/widget/FrameLayout;

.field public V:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/ExpansionPanel;->T:Z

    invoke-virtual {p0}, Lcarbon/widget/ExpansionPanel;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/ExpansionPanel;->T:Z

    invoke-virtual {p0}, Lcarbon/widget/ExpansionPanel;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/ExpansionPanel;->T:Z

    invoke-virtual {p0}, Lcarbon/widget/ExpansionPanel;->u()V

    return-void
.end method

.method private synthetic A(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/ExpansionPanel;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcarbon/widget/ExpansionPanel;->s()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/ExpansionPanel;->t()V

    :goto_0
    return-void
.end method

.method private synthetic w(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/ExpansionPanel;->S:Lcarbon/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcarbon/widget/ImageView;->setRotation(F)V

    iget-object p1, p0, Lcarbon/widget/ExpansionPanel;->S:Lcarbon/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method private synthetic y(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/ExpansionPanel;->S:Lcarbon/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcarbon/widget/ImageView;->setRotation(F)V

    iget-object p1, p0, Lcarbon/widget/ExpansionPanel;->S:Lcarbon/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public synthetic B(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/ExpansionPanel;->A(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ExpansionPanel;->U:Lcarbon/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public s()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Ljf0;

    invoke-direct {v1, p0}, Ljf0;-><init>(Lcarbon/widget/ExpansionPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcarbon/widget/ExpansionPanel;->U:Lcarbon/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcarbon/widget/ExpansionPanel;->T:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setExpanded(Z)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/ExpansionPanel;->S:Lcarbon/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcarbon/widget/ImageView;->setRotation(F)V

    iget-object v0, p0, Lcarbon/widget/ExpansionPanel;->U:Lcarbon/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean p1, p0, Lcarbon/widget/ExpansionPanel;->T:Z

    return-void
.end method

.method public t()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lkf0;

    invoke-direct {v1, p0}, Lkf0;-><init>(Lcarbon/widget/ExpansionPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcarbon/widget/ExpansionPanel;->U:Lcarbon/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcarbon/widget/ExpansionPanel;->T:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final u()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lm80;->carbon_expansionpanel:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Ll80;->carbon_groupExpandedIndicator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/ImageView;

    iput-object v0, p0, Lcarbon/widget/ExpansionPanel;->S:Lcarbon/widget/ImageView;

    sget v0, Ll80;->carbon_expansionPanelHeader:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/ExpansionPanel;->V:Landroid/view/View;

    sget v0, Ll80;->carbon_expansionPanelContent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/FrameLayout;

    iput-object v0, p0, Lcarbon/widget/ExpansionPanel;->U:Lcarbon/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcarbon/widget/ExpansionPanel;->V:Landroid/view/View;

    new-instance v1, Llf0;

    invoke-direct {v1, p0}, Llf0;-><init>(Lcarbon/widget/ExpansionPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/ExpansionPanel;->T:Z

    return v0
.end method

.method public synthetic x(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/ExpansionPanel;->w(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic z(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/ExpansionPanel;->y(Landroid/animation/ValueAnimator;)V

    return-void
.end method
