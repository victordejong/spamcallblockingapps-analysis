.class public Lhh0;
.super Landroid/widget/PopupWindow;
.source ""


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcarbon/widget/RecyclerView;

.field public c:Lwc0;

.field public d:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public e:Landroid/view/View;

.field public f:Lld0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld0<",
            "Lbb0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcarbon/widget/RecyclerView;

    invoke-static {p1}, Lf80;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcarbon/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/RecyclerView;

    iput-object v0, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lj80;->carbon_paddingHalf:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-static {}, Lfa0;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/widget/RecyclerView;->setOutAnimator(Landroid/animation/Animator;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x106000d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lhh0;->a:Landroid/os/Handler;

    return-void
.end method

.method private synthetic c(Landroid/view/View;Lbb0;I)V
    .locals 0

    iget-object p1, p0, Lhh0;->d:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lhh0;->c:Lwc0;

    invoke-virtual {p2, p3}, Lwc0;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    invoke-virtual {p0}, Lhh0;->dismiss()V

    return-void
.end method

.method public static synthetic e(Lcarbon/widget/LinearLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcarbon/widget/LinearLayout;->e(I)Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lhh0;->f:Lld0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public synthetic d(Landroid/view/View;Lbb0;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lhh0;->c(Landroid/view/View;Lbb0;I)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcarbon/widget/RecyclerView;->e(I)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lhh0$a;

    invoke-direct {v1, p0}, Lhh0$a;-><init>(Lhh0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lhh0;->e:Landroid/view/View;

    return-void
.end method

.method public g(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld80;->e(Landroid/content/Context;I)Lwc0;

    move-result-object p1

    iput-object p1, p0, Lhh0;->c:Lwc0;

    return-void
.end method

.method public h(Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld80;->f(Landroid/content/Context;Landroid/view/Menu;)Lwc0;

    move-result-object p1

    iput-object p1, p0, Lhh0;->c:Lwc0;

    return-void
.end method

.method public i(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lhh0;->d:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public j()Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lhh0;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lhh0;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object v5, p0, Lhh0;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v2

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    aget v4, v0, v5

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v6, p0, Lhh0;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    aget v6, v0, v5

    sub-int/2addr v1, v6

    if-ge v4, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v4, Lld0;

    const-class v6, Lbb0;

    if-eqz v3, :cond_2

    sget-object v7, Ldh0;->a:Ldh0;

    goto :goto_2

    :cond_2
    sget-object v7, Lzf0;->a:Lzf0;

    :goto_2
    invoke-direct {v4, v6, v7}, Lld0;-><init>(Ljava/lang/Class;Lkd0;)V

    iput-object v4, p0, Lhh0;->f:Lld0;

    iget-object v6, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v4, p0, Lhh0;->f:Lld0;

    iget-object v6, p0, Lhh0;->c:Lwc0;

    invoke-virtual {v6}, Lwc0;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Lid0;->f(Ljava/util/List;)V

    iget-object v4, p0, Lhh0;->f:Lld0;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    iget-object v4, p0, Lhh0;->f:Lld0;

    new-instance v6, Lqf0;

    invoke-direct {v6, p0}, Lqf0;-><init>(Lhh0;)V

    invoke-virtual {v4, v6}, Lid0;->g(Lcarbon/widget/RecyclerView$d;)V

    iget-object v4, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v4, p0, Lhh0;->e:Landroid/view/View;

    const/16 v6, 0x33

    invoke-super {p0, v4, v6, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    xor-int/lit8 v4, v3, 0x1

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    aget v3, v0, v2

    iget-object v4, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lhh0;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    aget v0, v0, v5

    :goto_3
    iget-object v4, p0, Lhh0;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    :goto_4
    iget-object v4, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    iget-object v6, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v3, v0, v4, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_6

    :cond_3
    xor-int/lit8 v4, v3, 0x1

    xor-int/lit8 v6, v1, 0x1

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    aget v3, v0, v2

    iget-object v4, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lhh0;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    aget v0, v0, v5

    :goto_5
    iget-object v4, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_4

    :cond_4
    xor-int/lit8 v4, v1, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    aget v3, v0, v2

    aget v0, v0, v5

    goto :goto_5

    :cond_5
    aget v3, v0, v2

    aget v0, v0, v5

    goto :goto_3

    :goto_6
    const/4 v0, 0x0

    :goto_7
    iget-object v3, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcarbon/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v1, :cond_6

    mul-int/lit8 v4, v0, 0x32

    goto :goto_8

    :cond_6
    iget-object v4, p0, Lhh0;->c:Lwc0;

    invoke-virtual {v4}, Lwc0;->size()I

    move-result v4

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x32

    :goto_8
    iget-object v6, p0, Lhh0;->a:Landroid/os/Handler;

    new-instance v7, Lpf0;

    invoke-direct {v7, v3}, Lpf0;-><init>(Lcarbon/widget/LinearLayout;)V

    int-to-long v3, v4

    invoke-virtual {v6, v7, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcarbon/widget/RecyclerView;->setAlpha(F)V

    iget-object v0, p0, Lhh0;->b:Lcarbon/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return v5
.end method
