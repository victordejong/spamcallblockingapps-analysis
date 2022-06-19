.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source ""


# instance fields
.field public a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public b:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field public c:Z

.field public d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public f:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d002a

    invoke-static {p1, v0, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d002a

    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d002a

    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->p()V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    const v2, 0x7f06019d

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->n(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->m()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/material/tabs/TabLayout;FLandroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d017b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a067f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09000a

    invoke-static {p3, v4}, Ln8;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Liv0;->c:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Liv0;->c:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v3, 0x7f0a0351

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Liv0;->b:I

    if-eq v4, v5, :cond_1

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Liv0;->b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v4

    aget-object v4, v4, v1

    iget-boolean v4, v4, Liv0;->a:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    sget-object p2, Liv0;->g:Liv0;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$e;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public d()V
    .locals 4

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, v1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->n(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->m()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    const v0, 0x7f0a05cf

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f:Lcom/google/android/material/tabs/TabLayout;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->b(Lcom/google/android/material/tabs/TabLayout;FLandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->p()V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    return v0
.end method

.method public getActiveTab()Liv0;
    .locals 5

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-boolean v4, v3, Liv0;->a:Z

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Liv0;->d:Liv0;

    return-object v0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->i(Landroid/view/View;)V

    return-void
.end method

.method public synthetic l(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->k(Landroid/view/View;)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$c;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/16 v1, 0x244

    :goto_0
    invoke-static {v1}, Loe1;->c(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->c:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x41a00000    # 20.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabCradleMargin(F)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocusFromTouch()Z

    return-void
.end method

.method public final n(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$d;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_0

    const/high16 p2, 0x43070000    # 135.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public o(Liv0;)Liv0;
    .locals 6

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v4, Liv0;->a:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a067f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06019d

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0801dd

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lhv0;

    invoke-direct {v1, p0}, Lhv0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f08032e

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lgv0;

    invoke-direct {v1, p0}, Lgv0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    return-void
.end method

.method public setBages()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/TabIcon;

    sget-object v1, Lq71$e;->b:Lq71$e;

    invoke-static {v1}, Lr71;->y(Lq71$e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/TabIcon;->setBadge(Z)V

    return-void
.end method

.method public setBottomDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setTabClickListeners(Lkv0;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->f:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;

    invoke-direct {v1, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;Lkv0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method
