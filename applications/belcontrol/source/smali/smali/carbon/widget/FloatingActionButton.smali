.class public Lcarbon/widget/FloatingActionButton;
.super Lcarbon/widget/ImageView;
.source ""


# instance fields
.field public O:Lhh0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lh80;->carbon_fabStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcarbon/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v1, v0}, Lcarbon/widget/FloatingActionButton;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->FloatingActionButton:[I

    sget v1, Lh80;->carbon_fabStyle:I

    sget v2, Lp80;->FloatingActionButton_carbon_theme:I

    invoke-static {p1, p2, v0, v1, v2}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lcarbon/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2, v1}, Lcarbon/widget/FloatingActionButton;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->FloatingActionButton:[I

    sget v1, Lp80;->FloatingActionButton_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/FloatingActionButton;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    invoke-virtual {p1}, Lhh0;->j()Z

    return-void
.end method

.method private synthetic v(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    invoke-virtual {p1}, Lhh0;->j()Z

    return-void
.end method


# virtual methods
.method public getFloatingActionMenu()Lhh0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcarbon/widget/ImageView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcarbon/widget/FloatingActionButton;->s()V

    return-void
.end method

.method public final r(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->getStateAnimator()Lia0;

    move-result-object v0

    invoke-static {v0, p0}, Lfa0;->N(Lia0;Lud0;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->FloatingActionButton:[I

    sget v2, Lo80;->carbon_FloatingActionButton:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lp80;->FloatingActionButton_carbon_cornerRadius:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/ImageView;->setCornerRadius(F)V

    sget p2, Lp80;->FloatingActionButton_carbon_menu:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcarbon/widget/FloatingActionButton;->setMenu(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhh0;->b()V

    :cond_0
    return-void
.end method

.method public setMenu(I)V
    .locals 2

    new-instance v0, Lhh0;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhh0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    invoke-virtual {v0, p1}, Lhh0;->g(I)V

    iget-object p1, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    invoke-virtual {p1, p0}, Lhh0;->f(Landroid/view/View;)V

    new-instance p1, Lof0;

    invoke-direct {p1, p0}, Lof0;-><init>(Lcarbon/widget/FloatingActionButton;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lhh0;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhh0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    invoke-virtual {v0, p1}, Lhh0;->h(Landroid/view/Menu;)V

    iget-object p1, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    invoke-virtual {p1, p0}, Lhh0;->f(Landroid/view/View;)V

    new-instance p1, Lnf0;

    invoke-direct {p1, p0}, Lnf0;-><init>(Lcarbon/widget/FloatingActionButton;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FloatingActionButton;->O:Lhh0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhh0;->i(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :cond_0
    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/FloatingActionButton;->t(Landroid/view/View;)V

    return-void
.end method

.method public synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/FloatingActionButton;->v(Landroid/view/View;)V

    return-void
.end method
