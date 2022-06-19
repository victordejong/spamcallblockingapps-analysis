.class public Lsc0;
.super Landroid/widget/PopupWindow;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/PopupWindow;"
    }
.end annotation


# instance fields
.field public a:Lcarbon/widget/RecyclerView;

.field public b:Landroid/view/View;

.field public c:Lcarbon/widget/DropDown$g;

.field public d:Lid0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid0<",
            "*TType;>;"
        }
    .end annotation
.end field

.field public e:Lcarbon/widget/DropDown$j;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcarbon/widget/RecyclerView$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcarbon/widget/RecyclerView$d<",
            "TType;>;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    sget v0, Lm80;->carbon_popupmenu:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Ll80;->recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/RecyclerView;

    iput-object v0, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v0, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    new-instance v1, Loc0;

    invoke-direct {v1, p0}, Loc0;-><init>(Lsc0;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lh80;->carbon_colorForeground:I

    invoke-static {p1, v3}, Ld80;->g(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lh80;->carbon_dividerColor:I

    invoke-static {p1, v4}, Ld80;->g(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lhd0;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lj80;->carbon_dividerHeight:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lhd0;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v0, Lpc0;

    invoke-direct {v0, p0}, Lpc0;-><init>(Lsc0;)V

    invoke-virtual {v1, v0}, Lhd0;->e(Lhd0$a;)V

    iget-object v0, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lcarbon/widget/DropDown$c;

    invoke-direct {v0}, Lcarbon/widget/DropDown$c;-><init>()V

    iput-object v0, p0, Lsc0;->d:Lid0;

    iget-object v1, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x106000d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public static synthetic a(Lsc0;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic k(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/16 p1, 0x52

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsc0;->dismiss()V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic m(I)Z
    .locals 1

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lsc0;->h:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public c()Lid0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lid0<",
            "*TType;>;"
        }
    .end annotation

    iget-object v0, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lid0;

    return-object v0
.end method

.method public d()Lcarbon/widget/DropDown$g;
    .locals 1

    iget-object v0, p0, Lsc0;->c:Lcarbon/widget/DropDown$g;

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Ll80;->carbon_popupContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcarbon/widget/FrameLayout;->e(I)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lsc0$a;

    invoke-direct {v1, p0}, Lsc0$a;-><init>(Lsc0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public f()[I
    .locals 3

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v0

    iget-object v1, p0, Lsc0;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TType;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsc0;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcarbon/widget/DropDown$j;
    .locals 1

    iget-object v0, p0, Lsc0;->e:Lcarbon/widget/DropDown$j;

    return-object v0
.end method

.method public synthetic l(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsc0;->k(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic n(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lsc0;->m(I)Z

    move-result p1

    return p1
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    iget-object v0, p0, Lsc0;->d:Lid0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :goto_0
    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v0

    invoke-virtual {v0}, Lid0;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lsc0;->h:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v0

    invoke-virtual {v0}, Lid0;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    :cond_0
    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v0

    invoke-virtual {v0}, Lid0;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsc0;->e:Lcarbon/widget/DropDown$j;

    sget-object v2, Lcarbon/widget/DropDown$j;->c:Lcarbon/widget/DropDown$j;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lsc0;->h:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object p1

    invoke-virtual {p1}, Lid0;->e()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lsc0;->h:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TType;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lsc0;->d:Lid0;

    invoke-virtual {v0, p1}, Lid0;->f(Ljava/util/List;)V

    iget-object p1, p0, Lsc0;->d:Lid0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public r(Lcarbon/widget/DropDown$g;)V
    .locals 0

    iput-object p1, p0, Lsc0;->c:Lcarbon/widget/DropDown$g;

    return-void
.end method

.method public s(Lcarbon/widget/RecyclerView$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcarbon/widget/RecyclerView$d<",
            "TType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lsc0;->g:Lcarbon/widget/RecyclerView$d;

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid0;->g(Lcarbon/widget/RecyclerView$d;)V

    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public u([I)V
    .locals 4

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lsc0;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lsc0;->b:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lsc0;->c:Lcarbon/widget/DropDown$g;

    sget-object v2, Lcarbon/widget/DropDown$g;->b:Lcarbon/widget/DropDown$g;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lj80;->carbon_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v5, Lj80;->carbon_listItemHeight:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lj80;->carbon_paddingHalf:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lsc0;->c()Lid0;

    move-result-object v6

    iget-object v7, v0, Lsc0;->b:Landroid/view/View;

    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Lid0;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-virtual {v6, v8}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v11, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    new-array v12, v11, [I

    iget-object v13, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v13, v0, Lsc0;->c:Lcarbon/widget/DropDown$g;

    sget-object v14, Lcarbon/widget/DropDown$g;->a:Lcarbon/widget/DropDown$g;

    if-ne v13, v14, :cond_6

    aget v13, v12, v3

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v7

    mul-int/lit8 v7, v1, 0x2

    sub-int/2addr v13, v7

    div-int/2addr v13, v5

    aget v14, v12, v3

    sub-int v14, v9, v14

    sub-int/2addr v14, v7

    div-int/2addr v14, v5

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v6}, Lid0;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    aget v14, v12, v4

    sub-int/2addr v14, v2

    sub-int/2addr v14, v1

    aget v12, v12, v3

    sub-int/2addr v12, v7

    mul-int v15, v13, v5

    sub-int/2addr v12, v15

    iget-object v15, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    iget-object v4, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v15, v4

    iget-object v4, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v15, v4

    sub-int v4, v5, v15

    div-int/2addr v4, v11

    sub-int/2addr v12, v4

    iget-object v4, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v12, v4

    iget-object v4, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v4, v11

    add-int/2addr v4, v7

    iget-object v11, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v4, v11

    iget-object v11, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int/2addr v4, v11

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v6, v13

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int v3, v3, v5

    add-int/2addr v1, v3

    sub-int v3, v10, v7

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-gez v14, :cond_4

    neg-int v4, v14

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v14, 0x0

    :cond_4
    add-int v4, v14, v3

    if-le v4, v10, :cond_5

    sub-int/2addr v4, v10

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v3, v2

    sub-int v14, v10, v3

    :cond_5
    sub-int/2addr v9, v1

    const/4 v4, 0x0

    invoke-static {v12, v4, v9}, Lvc0;->b(III)I

    move-result v2

    iget-object v5, v0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr v8, v13

    invoke-virtual {v5, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-virtual {v0, v14, v2, v3, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_3

    :cond_6
    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v9, v6

    mul-int/lit8 v7, v2, 0x2

    sub-int/2addr v9, v7

    div-int/2addr v9, v5

    aget v4, v12, v4

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    aget v2, v12, v3

    sub-int/2addr v2, v6

    iget-object v3, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v10, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int/2addr v3, v10

    iget-object v10, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v3, v10

    sub-int v3, v5, v3

    div-int/2addr v3, v11

    sub-int/2addr v2, v3

    iget-object v3, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v7

    add-int/2addr v3, v6

    iget-object v6, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v3, v6

    iget-object v6, v0, Lsc0;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v3, v6

    mul-int/lit8 v1, v1, 0x4

    iget-object v6, v0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v1, v6

    iget-object v5, v0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_3
    invoke-super/range {p0 .. p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TType;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lsc0;->c()Lid0;

    move-result-object v0

    invoke-virtual {v0}, Lid0;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lsc0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lsc0;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public w(Lcarbon/widget/DropDown$j;)V
    .locals 2

    iput-object p1, p0, Lsc0;->e:Lcarbon/widget/DropDown$j;

    sget-object v0, Lcarbon/widget/DropDown$j;->b:Lcarbon/widget/DropDown$j;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcarbon/widget/DropDown$d;

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-direct {p1, v0}, Lcarbon/widget/DropDown$d;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcarbon/widget/DropDown$c;

    invoke-direct {p1}, Lcarbon/widget/DropDown$c;-><init>()V

    :goto_0
    iget-object v0, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    iget-object v1, p0, Lsc0;->d:Lid0;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_1
    iput-object p1, p0, Lsc0;->d:Lid0;

    iget-object v0, p0, Lsc0;->g:Lcarbon/widget/RecyclerView$d;

    invoke-virtual {p1, v0}, Lid0;->g(Lcarbon/widget/RecyclerView$d;)V

    return-void
.end method

.method public x(Landroid/view/View;)Z
    .locals 2

    iput-object p1, p0, Lsc0;->b:Landroid/view/View;

    const v0, 0x800033

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lsc0;->update()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    sget v0, Ll80;->carbon_popupContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcarbon/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lcarbon/widget/FrameLayout;->e(I)Landroid/animation/Animator;

    const/4 p1, 0x1

    return p1
.end method

.method public y(Landroid/view/View;)Z
    .locals 2

    iput-object p1, p0, Lsc0;->b:Landroid/view/View;

    const v0, 0x800033

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lsc0;->update()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    sget v0, Ll80;->carbon_popupContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcarbon/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public z(I)V
    .locals 2

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsc0;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lsc0;->a:Lcarbon/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->toggle()V

    :cond_1
    return-void
.end method
