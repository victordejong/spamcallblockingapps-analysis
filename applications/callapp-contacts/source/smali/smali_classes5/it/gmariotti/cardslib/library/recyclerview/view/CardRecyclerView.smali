.class public Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;
    }
.end annotation


# instance fields
.field protected T:Lit/gmariotti/cardslib/library/recyclerview/a/a;

.field protected U:I

.field protected V:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 71
    sget v0, Lit/gmariotti/cardslib/library/recyclerview/a$b;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->U:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1111
    invoke-direct {p0, p1, v0, v1}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    sget v0, Lit/gmariotti/cardslib/library/recyclerview/a$b;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->U:I

    const/4 v0, 0x0

    .line 2111
    invoke-direct {p0, p1, p2, v0}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    sget v0, Lit/gmariotti/cardslib/library/recyclerview/a$b;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->U:I

    .line 3111
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 124
    sget v0, Lit/gmariotti/cardslib/library/recyclerview/a$b;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->U:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/recyclerview/a$c;->card_options:[I

    invoke-virtual {v0, p2, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 130
    :try_start_0
    sget p3, Lit/gmariotti/cardslib/library/recyclerview/a$c;->card_options_list_card_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->U:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->U:I

    .line 132
    sget p3, Lit/gmariotti/cardslib/library/recyclerview/a$c;->card_options_list_card_layout_resourceIDs:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    new-array p3, p3, [I

    iput-object p3, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->V:[I

    .line 137
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    if-ge v0, p3, :cond_0

    .line 138
    iget-object p3, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->V:[I

    sget v1, Lit/gmariotti/cardslib/library/recyclerview/a$b;->list_card_layout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public a(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 3236
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3238
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3239
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v2, v1

    const/high16 v1, -0x80000000

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3240
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3241
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    .line 3244
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v0, v1}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3245
    new-instance v1, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;

    invoke-direct {v1, p0, p2}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3266
    new-instance p2, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;

    invoke-direct {p2, p1, p0}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;-><init>(Lit/gmariotti/cardslib/library/view/a/a;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3280
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public b(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V
    .locals 2

    .line 4206
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 4208
    invoke-static {p2, v0, v1}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4209
    new-instance v1, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;

    invoke-direct {v1, p2, p1, p0}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;-><init>(Landroid/view/View;Lit/gmariotti/cardslib/library/view/a/a;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4224
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V
    .locals 1

    .line 160
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 163
    iget v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->U:I

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->setRowLayoutId(I)V

    .line 164
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->V:[I

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->setRowLayoutIds([I)V

    .line 165
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->setCardRecyclerView(Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;)V

    .line 167
    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->T:Lit/gmariotti/cardslib/library/recyclerview/a/a;

    .line 169
    new-instance p1, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$1;

    invoke-direct {p1, p0}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$1;-><init>(Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;)V

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void
.end method
