.class public Lcom/futuremind/recyclerviewfastscroll/FastScroller;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field b:Landroid/view/View;

.field c:Z

.field d:Lcom/futuremind/recyclerviewfastscroll/a/c;

.field private final e:Lcom/futuremind/recyclerviewfastscroll/a;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/futuremind/recyclerviewfastscroll/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p3, Lcom/futuremind/recyclerviewfastscroll/a;

    invoke-direct {p3, p0}, Lcom/futuremind/recyclerviewfastscroll/a;-><init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    iput-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->e:Lcom/futuremind/recyclerviewfastscroll/a;

    const/4 p3, 0x0

    .line 57
    invoke-virtual {p0, p3}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setClipChildren(Z)V

    .line 58
    sget-object v0, Lcom/hbb20/h$h;->fastscroll__fastScroller:[I

    sget v1, Lcom/hbb20/h$b;->fastscroll__style:I

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    :try_start_0
    sget p2, Lcom/hbb20/h$h;->fastscroll__fastScroller_fastscroll__bubbleColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->j:I

    .line 61
    sget p2, Lcom/hbb20/h$h;->fastscroll__fastScroller_fastscroll__handleColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->i:I

    .line 62
    sget p2, Lcom/hbb20/h$h;->fastscroll__fastScroller_fastscroll__bubbleTextAppearance:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->m:I

    .line 67
    new-instance p1, Lcom/futuremind/recyclerviewfastscroll/a/b;

    invoke-direct {p1}, Lcom/futuremind/recyclerviewfastscroll/a/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setViewProvider(Lcom/futuremind/recyclerviewfastscroll/a/c;)V

    return-void

    :catchall_0
    move-exception p2

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    throw p2
.end method

.method static synthetic a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Landroid/view/MotionEvent;)F
    .locals 5

    .line 3206
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    new-array v1, v1, [I

    aput v3, v1, v3

    .line 4015
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 4016
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4017
    aget v0, v1, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3208
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    return p1

    .line 3210
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    new-array v1, v1, [I

    .line 4022
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v1, v3

    aput v3, v1, v2

    .line 4024
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4025
    aget v0, v1, v3

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3211
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;I)V
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 179
    invoke-static {p0, v0}, Lcom/futuremind/recyclerviewfastscroll/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b()V

    return-void
.end method

.method static synthetic a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;F)V
    .locals 2

    .line 4244
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4245
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 4246
    invoke-static {v1, p1}, Lcom/futuremind/recyclerviewfastscroll/c;->a(FF)F

    move-result p1

    float-to-int p1, p1

    .line 4247
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    .line 4248
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->n:Lcom/futuremind/recyclerviewfastscroll/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->g:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 4249
    invoke-interface {v0, p1}, Lcom/futuremind/recyclerviewfastscroll/b;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/b;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->n:Lcom/futuremind/recyclerviewfastscroll/b;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->m:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 229
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/a/c;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Lcom/futuremind/recyclerviewfastscroll/a/c;

    return-object p0
.end method

.method private c()Z
    .locals 4

    .line 236
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    mul-int v0, v0, v3

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_0

    return v1

    :cond_0
    return v2

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    mul-int v0, v0, v3

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method final a(F)V
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->f:Landroid/view/View;

    .line 256
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 257
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    iget v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 254
    invoke-static {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/c;->a(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 259
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    .line 261
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 262
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float p1, p1, v2

    .line 259
    invoke-static {v1, p1}, Lcom/futuremind/recyclerviewfastscroll/c;->a(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->f:Landroid/view/View;

    .line 267
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 268
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    iget v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 265
    invoke-static {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/c;->a(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 270
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    .line 272
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 273
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float p1, p1, v2

    .line 270
    invoke-static {v1, p1}, Lcom/futuremind/recyclerviewfastscroll/c;->a(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 279
    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 154
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1183
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    new-instance p2, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;

    invoke-direct {p2, p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;-><init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Lcom/futuremind/recyclerviewfastscroll/a/c;

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->c()I

    move-result p1

    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->h:I

    .line 2169
    iget p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->j:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->g:Landroid/widget/TextView;

    invoke-static {p3, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Landroid/view/View;I)V

    .line 2170
    :cond_0
    iget p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->i:I

    if-eq p1, p2, :cond_1

    iget-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-static {p3, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Landroid/view/View;I)V

    .line 2171
    :cond_1
    iget p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->k:I

    if-eq p1, p2, :cond_2

    .line 2172
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->g:Landroid/widget/TextView;

    invoke-static {p2, p1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;I)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_3

    .line 163
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->e:Lcom/futuremind/recyclerviewfastscroll/a;

    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    return-void
.end method

.method public setBubbleColor(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->j:I

    .line 119
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidate()V

    return-void
.end method

.method public setBubbleTextAppearance(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->k:I

    .line 139
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidate()V

    return-void
.end method

.method public setHandleColor(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->i:I

    .line 129
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->l:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 109
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    instance-of v0, v0, Lcom/futuremind/recyclerviewfastscroll/b;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/futuremind/recyclerviewfastscroll/b;

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->n:Lcom/futuremind/recyclerviewfastscroll/b;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->e:Lcom/futuremind/recyclerviewfastscroll/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 82
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b()V

    .line 83
    new-instance v0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;-><init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public setViewProvider(Lcom/futuremind/recyclerviewfastscroll/a/c;)V
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->removeAllViews()V

    .line 297
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Lcom/futuremind/recyclerviewfastscroll/a/c;

    .line 3022
    iput-object p0, p1, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 299
    invoke-virtual {p1, p0}, Lcom/futuremind/recyclerviewfastscroll/a/c;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->f:Landroid/view/View;

    .line 300
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    .line 301
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->b()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->g:Landroid/widget/TextView;

    .line 302
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->f:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->addView(Landroid/view/View;)V

    .line 303
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->m:I

    .line 218
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b()V

    return-void
.end method
