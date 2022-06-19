.class final Landroidx/transition/i;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/f;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/View;

.field final c:Landroid/view/View;

.field d:I

.field private e:Landroid/graphics/Matrix;

.field private final f:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Landroidx/transition/i$1;

    invoke-direct {v0, p0}, Landroidx/transition/i$1;-><init>(Landroidx/transition/i;)V

    iput-object v0, p0, Landroidx/transition/i;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 69
    iput-object p1, p0, Landroidx/transition/i;->c:Landroid/view/View;

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroidx/transition/i;->setWillNotDraw(Z)V

    .line 71
    invoke-virtual {p0, p1}, Landroidx/transition/i;->setClipChildren(Z)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Landroidx/transition/i;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/i;
    .locals 4

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 167
    invoke-static {p1}, Landroidx/transition/g;->a(Landroid/view/ViewGroup;)Landroidx/transition/g;

    move-result-object v0

    .line 168
    invoke-static {p0}, Landroidx/transition/i;->b(Landroid/view/View;)Landroidx/transition/i;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Landroidx/transition/i;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/transition/g;

    if-eq v3, v0, :cond_0

    .line 173
    iget v2, v1, Landroidx/transition/i;->d:I

    .line 174
    invoke-virtual {v3, v1}, Landroidx/transition/g;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_5

    .line 183
    new-instance v1, Landroidx/transition/i;

    invoke-direct {v1, p0}, Landroidx/transition/i;-><init>(Landroid/view/View;)V

    .line 2090
    iput-object p2, v1, Landroidx/transition/i;->e:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Landroidx/transition/g;

    invoke-direct {v0, p1}, Landroidx/transition/g;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 3073
    :cond_1
    iget-boolean p0, v0, Landroidx/transition/g;->b:Z

    if-eqz p0, :cond_4

    .line 3078
    iget-object p0, v0, Landroidx/transition/g;->a:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/transition/ad;->a(Landroid/view/ViewGroup;)Landroidx/transition/ac;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/transition/ac;->b(Landroid/view/View;)V

    .line 3079
    iget-object p0, v0, Landroidx/transition/g;->a:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/transition/ad;->a(Landroid/view/ViewGroup;)Landroidx/transition/ac;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/transition/ac;->a(Landroid/view/View;)V

    .line 190
    :goto_0
    invoke-static {p1, v0}, Landroidx/transition/i;->a(Landroid/view/View;Landroid/view/View;)V

    .line 191
    invoke-static {p1, v1}, Landroidx/transition/i;->a(Landroid/view/View;Landroid/view/View;)V

    .line 3088
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3089
    iget-object p1, v1, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-static {p1, p0}, Landroidx/transition/g;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 3091
    invoke-virtual {v0, p0}, Landroidx/transition/g;->a(Ljava/util/ArrayList;)I

    move-result p0

    if-ltz p0, :cond_3

    .line 3092
    invoke-virtual {v0}, Landroidx/transition/g;->getChildCount()I

    move-result p1

    if-lt p0, p1, :cond_2

    goto :goto_1

    .line 3095
    :cond_2
    invoke-virtual {v0, v1, p0}, Landroidx/transition/g;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 3093
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/transition/g;->addView(Landroid/view/View;)V

    .line 193
    :goto_2
    iput v2, v1, Landroidx/transition/i;->d:I

    goto :goto_3

    .line 3074
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This GhostViewHolder is detached!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4090
    :cond_5
    iput-object p2, v1, Landroidx/transition/i;->e:Landroid/graphics/Matrix;

    .line 197
    :goto_3
    iget p0, v1, Landroidx/transition/i;->d:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Landroidx/transition/i;->d:I

    return-object v1

    .line 165
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Landroid/view/View;)V
    .locals 1

    .line 202
    invoke-static {p0}, Landroidx/transition/i;->b(Landroid/view/View;)Landroidx/transition/i;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 204
    iget v0, p0, Landroidx/transition/i;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/transition/i;->d:I

    if-gtz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroidx/transition/i;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/transition/g;

    .line 207
    invoke-virtual {v0, p0}, Landroidx/transition/g;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v3, p0

    .line 140
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/transition/ai;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method private static a(Landroid/view/View;Landroidx/transition/i;)V
    .locals 1

    .line 152
    sget v0, Landroidx/transition/o$a;->ghost_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private static b(Landroid/view/View;)Landroidx/transition/i;
    .locals 1

    .line 148
    sget v0, Landroidx/transition/o$a;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/i;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 95
    iput-object p1, p0, Landroidx/transition/i;->a:Landroid/view/ViewGroup;

    .line 96
    iput-object p2, p0, Landroidx/transition/i;->b:Landroid/view/View;

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .line 101
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 102
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/transition/i;->a(Landroid/view/View;Landroidx/transition/i;)V

    .line 104
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/i;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 106
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/transition/ai;->a(Landroid/view/View;I)V

    .line 107
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .line 114
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/i;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 115
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ai;->a(Landroid/view/View;I)V

    .line 116
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/i;->a(Landroid/view/View;Landroidx/transition/i;)V

    .line 117
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    .line 125
    invoke-static {p1, v0}, Landroidx/transition/b;->a(Landroid/graphics/Canvas;Z)V

    .line 126
    iget-object v0, p0, Landroidx/transition/i;->e:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 131
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ai;->a(Landroid/view/View;I)V

    .line 132
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 133
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroidx/transition/ai;->a(Landroid/view/View;I)V

    .line 135
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/transition/i;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Landroidx/transition/i;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 136
    invoke-static {p1, v1}, Landroidx/transition/b;->a(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/i;->b(Landroid/view/View;)Landroidx/transition/i;

    move-result-object v0

    if-ne v0, p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    iget-object v0, p0, Landroidx/transition/i;->c:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/transition/ai;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
