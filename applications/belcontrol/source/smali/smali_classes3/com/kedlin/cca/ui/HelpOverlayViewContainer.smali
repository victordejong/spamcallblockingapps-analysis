.class public Lcom/kedlin/cca/ui/HelpOverlayViewContainer;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/HelpOverlayViewContainer$b;
    }
.end annotation


# instance fields
.field public l0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kedlin/cca/ui/HelpOverlayView;",
            ">;"
        }
    .end annotation
.end field

.field public m0:I

.field public n0:Landroidx/fragment/app/Fragment;

.field public o0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->m0:I

    iput p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->o0:I

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->Z()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->m0:I

    iput p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->o0:I

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->Z()V

    return-void
.end method

.method public static synthetic S(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->l0:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic T(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)I
    .locals 0

    iget p0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->m0:I

    return p0
.end method

.method public static synthetic U(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;I)I
    .locals 0

    iput p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->m0:I

    return p1
.end method

.method public static synthetic V(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setActivePageIndicator(I)V

    return-void
.end method

.method private setActivePageIndicator(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->m0:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->m0:I

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public W()Lcom/kedlin/cca/ui/HelpOverlayView;
    .locals 2

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kedlin/cca/ui/HelpOverlayView;-><init>(Landroid/content/Context;Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->l0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->l0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final X()V
    .locals 9

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a02f8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe6

    invoke-static {v3}, Loe1;->c(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a02f7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v3

    invoke-virtual {v3}, Lg40;->e()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x8

    invoke-static {v7}, Loe1;->c(I)I

    move-result v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    div-int/2addr v7, v1

    invoke-virtual {v8, v7, v4, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v7, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->m0:I

    if-ne v5, v7, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060210

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0602b3

    :goto_1
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const v1, 0x7f0a05c4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1103ab

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public Y()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lg40;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->l0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-virtual {v1}, Lcom/kedlin/cca/ui/HelpOverlayView;->B()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->l0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->m0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public Z()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->l0:Ljava/util/ArrayList;

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;-><init>(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$b;-><init>(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lg40;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public a0(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->n0:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lqb1;

    if-eqz v0, :cond_0

    check-cast p1, Lqb1;

    invoke-virtual {p1}, Lqb1;->t()V

    :cond_0
    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->n0:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lrb1;

    if-eqz v0, :cond_1

    check-cast p1, Lrb1;

    invoke-virtual {p1}, Lrb1;->B()V

    :cond_1
    return-void
.end method

.method public getHelpCode()I
    .locals 1

    iget v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->o0:I

    return v0
.end method

.method public setCallingFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->n0:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setHelpCode(I)V
    .locals 0

    iput p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->o0:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$b;-><init>(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lg40;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->X()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setHelpCode(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a065b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
